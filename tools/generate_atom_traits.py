#!/usr/bin/env python3
"""Extract CUTLASS CuTe MMA trait metadata for the Zig trait DB generator.

This is deliberately read-only for now: it parses CUTLASS trait headers into a
structured inventory and validates the current Zig tables, but does not rewrite
generated Zig until the layout-expression lowering is complete for every table.
"""

from __future__ import annotations

import json
import pathlib
import re
import subprocess
import sys


TRAIT_RE = re.compile(
    r"struct\s+MMA_Traits<(?P<name>[A-Za-z0-9_:]+)(?:<[^>]*>)?>"
    r"(?:\s*:\s*MMA_Traits<(?P<base>[A-Za-z0-9_:]+)(?:<[^>]*>)?>)?\s*\{(?P<body>.*?)\};",
    re.S,
)
ALIAS_RE = re.compile(r"using\s+(?P<name>SM[0-9][A-Za-z0-9_]+)\s*=\s*(?P<expr>Layout<.*?>);", re.S)
SHAPE_RE = re.compile(r"using\s+Shape_MNK\s*=\s*Shape<(?P<expr>.*?)>;")
LAYOUT_RE = re.compile(r"using\s+(?P<which>[ABC])Layout\s*=\s*(?P<expr>.*?);", re.S)


def one_line(expr: str) -> str:
    return re.sub(r"\s+", "", expr)


def extract_traits(cutlass_root: pathlib.Path, headers: list[str]) -> dict[str, dict[str, str]]:
    result: dict[str, dict[str, str]] = {}
    aliases: dict[str, str] = {}

    for header in headers:
        path = cutlass_root / "include" / "cute" / "atom" / header
        text = path.read_text()
        for alias in ALIAS_RE.finditer(text):
            aliases[alias.group("name")] = one_line(alias.group("expr"))
        for match in TRAIT_RE.finditer(text):
            name = match.group("name").split("::")[-1]
            body = match.group("body")
            entry: dict[str, str] = {"header": header}
            if match.group("base"):
                entry["base"] = match.group("base").split("::")[-1]
            shape = SHAPE_RE.search(body)
            if shape:
                entry["shape_mnk"] = one_line(shape.group("expr"))
            for layout in LAYOUT_RE.finditer(body):
                expr = one_line(layout.group("expr"))
                entry[f"layout_{layout.group('which').lower()}"] = aliases.get(expr, expr)
            result[name] = entry
    return result


def main() -> int:
    root = pathlib.Path(__file__).resolve().parents[1]
    manifest_path = root / "tools" / "atom_traits_manifest.json"
    manifest = json.loads(manifest_path.read_text())

    cutlass_root = (root / manifest["cutlass_root"]).resolve()
    if not (cutlass_root / "include" / "cute").exists():
        print(f"CUTLASS CuTe headers not found at {cutlass_root}", file=sys.stderr)
        return 1

    headers = manifest.get("cutlass_trait_headers", ["mma_traits_sm80.hpp"])
    traits = extract_traits(cutlass_root, headers)

    check = subprocess.run(
        [sys.executable, str(root / "tools" / "check_atom_traits.py")],
        cwd=root,
        check=False,
    )
    if check.returncode != 0:
        return check.returncode

    print(f"extracted {len(traits)} CUTLASS MMA trait definitions from {len(headers)} header(s)")
    for name in sorted(traits):
        entry = traits[name]
        layouts = ",".join(sorted(key for key in entry if key.startswith("layout_")))
        base = f" base={entry['base']}" if "base" in entry else ""
        print(f"  {name}: shape={entry.get('shape_mnk', '<inherited>')}{base} layouts={layouts or '<inherited>'}")
    print("current Zig atom trait tables passed strict manifest policy checks; no files were rewritten")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
