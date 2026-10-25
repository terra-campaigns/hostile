#!/usr/bin/env python3
"""Runner delegating to oude-mechanismen audit_coverage.py."""
import os
import subprocess
import sys
from pathlib import Path

repo_root = Path(__file__).resolve().parents[2]


def find_core_script(script_name: str) -> Path:
    candidates = []

    # 1. Environment variable override
    if "OUDE_MECHANISMEN_DIR" in os.environ:
        candidates.append(Path(os.environ["OUDE_MECHANISMEN_DIR"]) / "scripts" / script_name)

    # 2. Sibling directory convention
    candidates.append(repo_root.parent / "oude-mechanismen" / "scripts" / script_name)

    # 3. User home repository directory
    candidates.append(Path.home() / "Repos" / "oude-mechanismen" / "scripts" / script_name)

    # 4. Embedded / vendored engine directory
    candidates.append(repo_root / ".engine" / "scripts" / script_name)

    for c in candidates:
        if c.exists():
            return c

    searched_list = "\n".join(f"  - {c}" for c in candidates)
    print(
        f"Error: Could not locate '{script_name}' in the oude-mechanismen engine.\n"
        f"Searched locations:\n{searched_list}\n\n"
        f"To fix this, clone the engine alongside this repository:\n"
        f"  git clone <oude-mechanismen-repo-url> {repo_root.parent / 'oude-mechanismen'}\n"
        f"Or set the OUDE_MECHANISMEN_DIR environment variable.",
        file=sys.stderr
    )
    sys.exit(1)


core_script = find_core_script("audit_coverage.py")

venv_python = repo_root / ".agents" / "venv" / "bin" / "python3"
python_bin = str(venv_python) if venv_python.exists() else sys.executable

args = list(sys.argv[1:])
if not any(arg in args for arg in ("--repo-root", "--repo-dir")):
    args = ["--repo-dir", str(repo_root)] + args

sys.exit(subprocess.call([python_bin, str(core_script)] + args, cwd=str(repo_root)))
