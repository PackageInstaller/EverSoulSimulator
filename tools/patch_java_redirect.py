#!/usr/bin/env python3
"""patch_java_redirect.py — Inject com.rikka.redirect.URLHook.redirect() into a
baksmali'd Kakao SDK tree, covering BOTH network exits:

  (A) REST  : before every `new java.net.URL(String)` call site (HttpService et al.)
              → the URL string is downgraded https->http before HttpURLConnection.
  (B) WS    : at the head of WebSocketManager.<init>(String,String) and
              setSessionUrl(String) → the wss:// session URL is downgraded to
              ws://127.0.0.1:9999, so WebSocketClient takes the plain-socket path
              (SocketFactory.getDefault) instead of getSSLSocketFactory — no TLS.

Idempotent: re-running won't double-inject. Modifies smali in place.

Usage:
  baksmali d classes3.dex -o classes3_smali
  cp -r smali_inject/com classes3_smali/                 # drop in URLHook.smali
  python3 tools/patch_java_redirect.py classes3_smali
  smali a classes3_smali -o classes3_patched.dex
(or just run tools/apply_java_redirect.sh, which does all of the above.)
"""

import os
import re
import sys

HOOK = "Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;"

# (A) REST: `new URL(String)` call sites. The string arg is the last register in
# the invoke-direct brace list.
URL_INIT_RE = re.compile(
    r'invoke-direct\s+\{[^}]*?([pv]\d+)\},\s*Ljava/net/URL;-><init>\(Ljava/lang/String;\)V')

# (B) WS: method-head injections — (file basename, method signature prefix, register).
WS_TARGETS = [
    ("WebSocketManager.smali",
     ".method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V", "p1"),
    ("WebSocketManager.smali",
     ".method public final setSessionUrl(Ljava/lang/String;)V", "p1"),
]


def inject_lines(reg):
    return [
        f"    invoke-static {{{reg}}}, {HOOK}",
        f"    move-result-object {reg}",
    ]


def strip_existing(lines):
    """Remove any previously-injected `invoke-static {R}, URLHook->redirect` +
    `move-result-object R` pair (URLHook is ours, so every call is an injection).
    Makes the patch reproducible whether the input dex is clean or pre-patched."""
    out = []
    i = 0
    while i < len(lines):
        if "invoke-static" in lines[i] and "URLHook;->redirect" in lines[i]:
            j = i + 1
            while j < len(lines) and lines[j].strip() == "":
                j += 1
            if j < len(lines) and "move-result-object" in lines[j]:
                i = j + 1
                if i < len(lines) and lines[i].strip() == "":
                    i += 1  # collapse the trailing blank line
                continue
        out.append(lines[i])
        i += 1
    return out


def already_injected(lines, idx):
    """True if a URLHook.redirect call already sits within a couple lines of idx."""
    for j in range(max(0, idx - 3), min(len(lines), idx + 2)):
        if "URLHook;->redirect" in lines[j]:
            return True
    return False


def patch_rest(fpath, lines):
    out = []
    n = 0
    for line in lines:
        m = URL_INIT_RE.search(line)
        if m and not already_injected(out + [line], len(out)):
            out.extend(inject_lines(m.group(1)))
            n += 1
        out.append(line)
    return out, n


def patch_ws_method(fpath, lines):
    if os.path.basename(fpath) != "WebSocketManager.smali":
        return lines, 0
    n = 0
    for _name, sig, reg in WS_TARGETS:
        for i, line in enumerate(lines):
            if not line.startswith(sig):
                continue
            # Inject right after the method's .registers/.locals directive.
            for j in range(i, min(i + 8, len(lines))):
                if lines[j].lstrip().startswith((".registers", ".locals")):
                    if not already_injected(lines, j + 1):
                        lines[j + 1:j + 1] = inject_lines(reg)
                        n += 1
                    break
            break  # only the first match of this signature
    return lines, n


def main():
    smali_dir = sys.argv[1] if len(sys.argv) > 1 else "."
    rest_n = ws_n = files = 0
    for root, _, names in os.walk(smali_dir):
        for name in names:
            if not name.endswith(".smali"):
                continue
            fpath = os.path.join(root, name)
            with open(fpath) as f:
                original = f.read()
            lines = original.split("\n")

            lines = strip_existing(lines)        # remove any prior injection first
            lines, r = patch_rest(fpath, lines)
            lines, w = patch_ws_method(fpath, lines)

            updated = "\n".join(lines)
            if updated != original:
                with open(fpath, "w") as f:
                    f.write(updated)
                files += 1
                if r:
                    print(f"  [REST] {fpath}: {r} `new URL()` site(s)")
                if w:
                    print(f"  [WS]   {fpath}: {w} method head(s)")
            rest_n += r
            ws_n += w

    print(f"\nInjected REST={rest_n}  WS={ws_n}  across {files} file(s).")
    if ws_n == 0:
        print("WARNING: no WebSocketManager injection — check the dex actually "
              "contains com/kakaogame/session/WebSocketManager.smali", file=sys.stderr)


if __name__ == "__main__":
    main()
