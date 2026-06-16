#!/usr/bin/env python3
"""patch_dex.py — Inject URL redirection into Kakao SDK Smali files.

Usage:
  baksmali d classes3.dex -o classes3_smali
  python3 patch_dex.py classes3_smali
  smali a classes3_smali -o classes3_patched.dex
  # Replace classes3.dex in APK with classes3_patched.dex
"""

import re, os, sys

REDIRECT_SMALI = """    invoke-static {{{reg}}}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object {reg}
"""

def patch_method(lines, method_start, url_reg):
    """Inject redirect after .locals/.registers declaration."""
    for i in range(method_start, min(method_start + 20, len(lines))):
        if '.locals' in lines[i] or '.registers' in lines[i]:
            inject_line = REDIRECT_SMALI.format(reg=url_reg)
            lines.insert(i + 1, inject_line)
            return True
    return False

def patch_file(fpath):
    with open(fpath) as f:
        content = f.read()
    lines = content.split('\n')
    
    url_init_pat = re.compile(r'invoke-direct \{.*(?:[pv]\d+)\}, Ljava/net/URL;-><init>\(Ljava/lang/String;\)V')
    
    # Work backwards from each URL.init to find the enclosing method
    found_methods = set()
    patched = 0
    for i, line in enumerate(lines):
        m = url_init_pat.search(line)
        if not m:
            continue
        
        # Find method start
        method_start = None
        for j in range(i, -1, -1):
            if lines[j].startswith('.method'):
                method_start = j
                break
        
        if method_start is None or method_start in found_methods:
            continue
        found_methods.add(method_start)
        
        # Extract the URL register from this and nearby URL inits
        # Simple heuristic: the register after 'invoke-direct {vX, pY}'
        reg_m = re.search(r'\{v\d+,\s*([pv]\d+)\}', line)
        if reg_m:
            url_reg = reg_m.group(1)
            if patch_method(lines, method_start, url_reg):
                patched += 1
                print(f"  Patched {fpath}: line {method_start+1} → redirect {url_reg}")

    if patched:
        with open(fpath, 'w') as f:
            f.write('\n'.join(lines))
    return patched

def main():
    smali_dir = sys.argv[1] if len(sys.argv) > 1 else '.'
    target_files = [
        "com/kakaogame/server/http/HttpService.smali",
        "com/kakaogame/log/SDKLogManager.smali",
        "com/kakaogame/log/APILatencyLogManager.smali",
        "okhttp3/HttpUrl.smali",
    ]
    
    total = 0
    for fname in target_files:
        fpath = os.path.join(smali_dir, fname)
        if os.path.exists(fpath):
            total += patch_file(fpath)
    
    print(f"\nPatched {total} methods across {len(target_files)} files.")
    print("Rerun 'smali a' to rebuild the DEX.")

if __name__ == '__main__':
    main()
