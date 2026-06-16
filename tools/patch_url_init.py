#!/usr/bin/env python3
"""patch_url_init.py — Inject URL redirect before every java.net.URL.<init>(String)
call in a smali tree. Modifies smali files in-place.

Usage:
  baksmali d classes3.dex -o classes3_smali
  python3 patch_url_init.py classes3_smali
  smali a classes3_smali -o classes3_patched.dex
"""

import re, os, sys

# The redirect call to inject (2 lines)
REDIRECT_TEMPLATE = """    invoke-static {{{reg}}}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object {reg}
"""

def patch_file(fpath):
    with open(fpath) as f:
        lines = f.readlines()

    url_init_re = re.compile(r'invoke-direct\s+\{[^}]*([pv]\d+)\},\s*Ljava/net/URL;-><init>\(Ljava/lang/String;\)V')

    changed = False
    new_lines = []
    for line in lines:
        m = url_init_re.search(line)
        if m:
            url_reg = m.group(1)
            inject = REDIRECT_TEMPLATE.format(reg=url_reg)
            new_lines.append(inject)
            changed = True
        new_lines.append(line)

    if changed:
        with open(fpath, 'w') as f:
            f.writelines(new_lines)
        print(f"  Patched: {fpath}")
        return True
    return False

def main():
    smali_dir = sys.argv[1] if len(sys.argv) > 1 else '.'
    patched = 0
    for root, dirs, files in os.walk(smali_dir):
        for fname in files:
            if fname.endswith('.smali'):
                fpath = os.path.join(root, fname)
                if patch_file(fpath):
                    patched += 1

    print(f"\nPatched {patched} files.")
    print("Next: smali a classes3_smali -o classes3_patched.dex")

if __name__ == '__main__':
    main()
