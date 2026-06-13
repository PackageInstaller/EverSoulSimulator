import glob
import os
import re
import sys

INJECT = (
    '    const-string v0, "swappywrapper"\n'
    '    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V\n'
)


def find_smali(decoded_dir):
    pattern = os.path.join(decoded_dir, "smali*", "com", "liapp", "x.smali")
    matches = glob.glob(pattern)
    if not matches:
        return None
    return matches[0]


def patch(smali_path):
    with open(smali_path, "r", encoding="utf-8") as f:
        content = f.read()

    if '"swappywrapper"' in content:
        print(f"already patched: {smali_path}")
        return

    def fix_locals_and_inject(m):
        method_decl = m.group(1)
        locals_line = m.group(2)
        m2 = re.search(r'(\.locals\s+)(\d+)', locals_line)
        n = int(m2.group(2))
        new_locals_line = locals_line.replace(
            m2.group(0), m2.group(1) + str(n + 1)
        )
        return method_decl + new_locals_line + INJECT

    pattern = r"(\.method [^\n]*attachBaseContext[^\n]*\n)([ \t]*\.locals [^\n]*\n)"
    new_content, count = re.subn(pattern, fix_locals_and_inject, content)

    if count == 0:
        print(
            f"ERROR: attachBaseContext .method/.locals not found in {smali_path}",
            file=sys.stderr,
        )
        sys.exit(1)

    with open(smali_path, "w", encoding="utf-8") as f:
        f.write(new_content)

    print(f"patched attachBaseContext in {smali_path}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("usage: patch_smali.py <decoded_apk_dir>", file=sys.stderr)
        sys.exit(1)

    decoded_dir = sys.argv[1]
    smali_path = find_smali(decoded_dir)

    if not smali_path:
        print(
            f"ERROR: com/liapp/x.smali not found under {decoded_dir}",
            file=sys.stderr,
        )
        sys.exit(1)

    patch(smali_path)
