#!/usr/bin/env python3
"""Check generated atom trait tables for unsupported placeholder layouts.

This intentionally keeps the policy small: any trait entry with a known
placeholder layout must carry `.supported = false`, so users get an explicit
builder error instead of silently emitting bad MMA or copy code.
"""

from __future__ import annotations

import argparse
import json
import pathlib
import re
import sys


TRAIT_START = re.compile(r"^pub const (\w+) = \.\s*\{")
PLACEHOLDER_LAYOUT = "layout_mod.make_layout(.{1,1},.{0,0})"


def iter_entries(path: pathlib.Path):
    name = None
    lines: list[str] = []
    for line in path.read_text().splitlines():
        match = TRAIT_START.match(line)
        if match:
            if name is not None:
                yield name, lines
            name = match.group(1)
            lines = [line]
        elif name is not None:
            lines.append(line)
            if line == "};":
                yield name, lines
                name = None
                lines = []
    if name is not None:
        yield name, lines


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--all",
        action="store_true",
        help="scan every generated trait DB instead of the strict manifest set",
    )
    parser.add_argument(
        "--strict",
        action="store_true",
        help="return nonzero for every unmarked placeholder found by the selected scan",
    )
    args = parser.parse_args()

    root = pathlib.Path(__file__).resolve().parents[1]
    manifest_path = root / "tools" / "atom_traits_manifest.json"
    manifest = json.loads(manifest_path.read_text()) if manifest_path.exists() else None
    paths = (
        sorted((root / "src" / "cute" / "atom" / "db").glob("*traits*.zig"))
        if args.all or manifest is None
        else [root / path for path in manifest["databases"]]
    )
    failures: list[str] = []
    placeholder_count = 0
    unsupported_count = 0

    for path in sorted(paths):
        for name, lines in iter_entries(path):
            body = "\n".join(lines)
            compact_body = re.sub(r"\s+", "", body)
            has_placeholder = PLACEHOLDER_LAYOUT in compact_body
            is_unsupported = ".supported=false" in compact_body
            if has_placeholder:
                placeholder_count += 1
            if is_unsupported:
                unsupported_count += 1
            if has_placeholder and not is_unsupported:
                failures.append(f"{path.relative_to(root)}:{name}")

    if failures:
        stream = sys.stderr if args.strict or not args.all else sys.stdout
        print("placeholder atom traits not marked `.supported = false`:", file=stream)
        for failure in failures:
            print(f"  {failure}", file=stream)
        if args.strict or not args.all:
            return 1
    if args.all:
        print(
            f"scanned {len(paths)} DB files; placeholder traits: {placeholder_count}; "
            f"explicitly unsupported traits: {unsupported_count}; unmarked placeholders: {len(failures)}"
        )
        if failures:
            print("rerun with --all --strict to make unmarked placeholders fatal")
        return 0
    if failures:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
