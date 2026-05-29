#!/usr/bin/env python3
"""Assert that a Zig source file fails to compile with an expected diagnostic."""

from __future__ import annotations

import argparse
import pathlib
import subprocess
import sys


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--zig", required=True)
    parser.add_argument("--source", required=True)
    parser.add_argument("--expect", required=True)
    args = parser.parse_args()

    root = pathlib.Path(__file__).resolve().parents[1]
    source = root / args.source
    result = subprocess.run(
        [
            args.zig,
            "build-exe",
            "--dep",
            "cute",
            f"-Mroot={source}",
            f"-Mcute={root / 'src' / 'cute' / 'root.zig'}",
            "-fno-emit-bin",
            "--cache-dir",
            str(root / ".zig-cache"),
        ],
        cwd=root,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=False,
    )

    combined = result.stdout + result.stderr
    if result.returncode == 0:
        print(f"expected {args.source} to fail compilation", file=sys.stderr)
        return 1
    if args.expect not in combined:
        print(f"expected diagnostic not found for {args.source}: {args.expect}", file=sys.stderr)
        print(combined, file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
