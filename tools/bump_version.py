import json
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
README_FILES = ["README.md", "README_en.md", "README_cn.md"]
BADGE_PATTERN = re.compile(
    r'(https://img\.shields\.io/badge/version-)[\d\.]+(-blue[^"\']*)'
)


def bump():
    pkg_path = ROOT / "package.json"
    with open(pkg_path, "r", encoding="utf-8") as f:
        pkg = json.load(f)

    parts = pkg["version"].split(".")
    parts[2] = str(int(parts[2]) + 1)
    new_version = ".".join(parts)
    pkg["version"] = new_version

    with open(pkg_path, "w", encoding="utf-8") as f:
        json.dump(pkg, f, indent=2, ensure_ascii=False)
        f.write("\n")

    updated = [str(pkg_path)]
    for name in README_FILES:
        path = ROOT / name
        if not path.exists():
            continue
        text = path.read_text(encoding="utf-8")
        new_text = BADGE_PATTERN.sub(
            lambda m: m.group(1) + new_version + m.group(2), text
        )
        path.write_text(new_text, encoding="utf-8")
        updated.append(str(path))

    # Stage package.json with force (-f) flag since it is ignored in .gitignore,
    # and stage README files normally.
    try:
        subprocess.run(["git", "add", "-f", str(pkg_path)], cwd=ROOT, check=True)
        for path_str in updated[1:]:
            subprocess.run(["git", "add", path_str], cwd=ROOT, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error staging files: {e}")
        raise e

    print(f"version bumped to {new_version}")


if __name__ == "__main__":
    bump()
