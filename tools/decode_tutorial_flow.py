#!/usr/bin/env python3
"""Decode the Eversoul tutorial network flow from a HAR capture.

Game-server host: live-kr.esoul.kakaogames.com:1739
 - Request  body = 4-byte header + protobuf  -> payload = bytes[4:]
 - Response body = 4-byte seq + 4-byte status + protobuf -> payload = bytes[8:]

Request bodies in the HAR are stored either base64 (encoding field NOT set) or
as a latin-1/utf-8 decoded raw string. Response bodies are base64.
"""
import json, base64, math, os, subprocess, sys
from urllib.parse import urlparse

HAR = sys.argv[1] if len(sys.argv) > 1 else "gc-session-zinny3.kakaogames.com_2026_06_07_08_42_50.har"
ROOT = os.path.dirname(os.path.abspath(__file__))
HAR = os.path.join(ROOT, HAR)
PROTO_REQ = os.path.join(ROOT, "ProtocolBuffers/Global/Request")
PROTO_RESP = os.path.join(ROOT, "ProtocolBuffers/Global/Response")
GAME_HOST = "live-kr.esoul.kakaogames.com:1739"
OUTDIR = os.path.join(ROOT, "tutorial_decode_out")
os.makedirs(OUTDIR, exist_ok=True)


def recover_request_bytes(pd, bodySize):
    """Return raw request body bytes from a postData dict."""
    if not pd:
        return None
    t = pd.get("text", "")
    if t == "":
        return b""
    # 1) base64?
    expb64 = math.ceil(bodySize / 3) * 4 if bodySize > 0 else 0
    if bodySize > 0 and len(t) == expb64:
        try:
            d = base64.b64decode(t)
            if len(d) == bodySize:
                return d
        except Exception:
            pass
    # 2) latin-1 raw
    try:
        d = t.encode("latin-1")
        if bodySize <= 0 or len(d) == bodySize:
            return d
    except Exception:
        pass
    # 3) utf-8 raw
    try:
        d = t.encode("utf-8")
        return d
    except Exception:
        return None


def recover_response_bytes(content):
    if not content:
        return None
    t = content.get("text")
    if t is None:
        return None
    enc = content.get("encoding")
    if enc == "base64":
        try:
            return base64.b64decode(t)
        except Exception:
            return None
    # plain text -> latin-1
    try:
        return t.encode("latin-1")
    except Exception:
        return t.encode("utf-8")


def load_entries():
    h = json.load(open(HAR))
    ents = h["log"]["entries"]
    games = []
    for e in ents:
        u = e["request"]["url"]
        p = urlparse(u)
        if p.netloc != GAME_HOST:
            continue
        games.append(e)
    # sort chronological
    games.sort(key=lambda e: e["startedDateTime"])
    return games


def path_of(e):
    return urlparse(e["request"]["url"]).path


def protoc_decode(payload, proto_path, proto_file, msg):
    """Run protoc --decode and return (ok, text)."""
    cmd = ["protoc", f"--decode={msg}", f"--proto_path={proto_path}", os.path.join(proto_path, proto_file)]
    try:
        r = subprocess.run(cmd, input=payload, capture_output=True, timeout=30)
    except Exception as ex:
        return False, f"<exec error {ex}>"
    if r.returncode != 0:
        return False, r.stderr.decode("utf-8", "replace")
    return True, r.stdout.decode("utf-8", "replace")


def try_offsets_decode(body, proto_path, proto_file, msg, kind):
    """Try standard offset first, then 0/4/8/12. Return (offset, ok, text)."""
    std = 4 if kind == "req" else 8
    order = [std, 0, 4, 8, 12]
    seen = []
    for off in order:
        if off in seen:
            continue
        seen.append(off)
        if off > len(body):
            continue
        payload = body[off:]
        ok, txt = protoc_decode(payload, proto_path, proto_file, msg)
        if ok and txt.strip():
            return off, True, txt
        # also accept empty decode as ok only if payload empty
        if ok and not payload:
            return off, True, txt
    # nothing decoded cleanly -> return std attempt error
    payload = body[std:] if std <= len(body) else b""
    ok, txt = protoc_decode(payload, proto_path, proto_file, msg)
    return std, ok, txt


# Mapping of endpoint -> (proto_file, req_msg, resp_msg). Top msg == filename for these.
ENDPOINT_MSG = {
    "UserInfo": ("UserInfo", "UserInfo", "UserInfo"),
    "GachaHeroTutorial": ("GachaHeroTutorial", None, "GachaHeroTutorial"),
    "GachaHeroTutorialFix": ("GachaHeroTutorialFix", None, "GachaHeroTutorialFix"),
    "FormationSave": ("FormationSave", "FormationSave", "FormationSave"),
    "StageEnter": ("StageEnter", "StageEnter", None),
    "StageClear": ("StageClear", "StageClear", "StageClear"),
    "StoryClear": ("StoryClear", "StoryClear", "StoryClear"),
    "TutorialActive": ("TutorialActive", "TutorialActive", "TutorialActive"),
    "HeroLevelUp": ("HeroLevelUp", "HeroLevelUp", "HeroLevelUp"),
    "ContentClearDeckSave": ("ContentClearDeckSave", "ContentClearDeckSave", None),
    "GetContentClearDeck": ("GetContentClearDeck", "GetContentClearDeck", "GetContentClearDeck"),
    "UserNicknameChange": ("UserNicknameChange", "UserNicknameChange", "UserNicknameChange"),
    "BattleStart": ("BattleStart", "BattleStart", "BattleStart"),
    "BattleSave": ("BattleSave", "BattleSave", None),
    "Login": ("Login", "Login", "Login"),
}


def main():
    games = load_entries()
    print(f"# game-server entries (chronological): {len(games)}")
    # find index of first /Login (none in this capture; session already authed)
    login_idx = None
    for i, e in enumerate(games):
        if path_of(e) == "/Login":
            login_idx = i
            break
    print(f"# first /Login at chronological index {login_idx} (None => start from first game endpoint)")

    # TASK 1: chronological list from /Login onward (or from session start)
    seq = []
    start = login_idx if login_idx is not None else 0
    for e in games[start:]:
        seq.append(path_of(e).lstrip("/"))

    with open(os.path.join(OUTDIR, "01_chrono_sequence.txt"), "w") as f:
        f.write(f"Total game endpoints from /Login onward: {len(seq)}\n\n")
        from collections import Counter
        c = Counter(seq)
        f.write("=== COUNTS ===\n")
        for k, v in c.most_common():
            f.write(f"{v:4d}  {k}\n")
        f.write("\n=== ORDER (numbered) ===\n")
        for i, s in enumerate(seq):
            f.write(f"{i:3d}: {s}\n")
    print(f"wrote 01_chrono_sequence.txt ({len(seq)} entries)")

    # Save & decode the tutorial-relevant calls
    TARGETS = set(ENDPOINT_MSG.keys())
    detail_lines = []
    occ_counter = {}
    for gi, e in enumerate(games):
        path = path_of(e).lstrip("/")
        if path not in TARGETS:
            continue
        occ_counter[path] = occ_counter.get(path, 0) + 1
        occ = occ_counter[path]
        proto_file, req_msg, resp_msg = ENDPOINT_MSG[path]
        reqbytes = recover_request_bytes(e["request"].get("postData"), e["request"].get("bodySize", -1))
        respbytes = recover_response_bytes(e["response"].get("content"))
        tag = f"{path}#{occ}"
        # write raw payloads
        if reqbytes is not None:
            open(os.path.join(OUTDIR, f"{tag}.req.bin"), "wb").write(reqbytes)
        if respbytes is not None:
            open(os.path.join(OUTDIR, f"{tag}.resp.bin"), "wb").write(respbytes)

        detail_lines.append("=" * 80)
        detail_lines.append(f"[{path}] occurrence #{occ}  (chrono game-idx {gi}, t={e['startedDateTime']})")
        detail_lines.append(f"  req bodySize={e['request'].get('bodySize')} recovered={len(reqbytes) if reqbytes is not None else None} bytes; resp recovered={len(respbytes) if respbytes is not None else None} bytes")
        # REQUEST
        if req_msg and reqbytes is not None and len(reqbytes) >= 0:
            off, ok, txt = try_offsets_decode(reqbytes, PROTO_REQ, f"{proto_file}.proto", f"ReqPb.{req_msg}", "req")
            detail_lines.append(f"  --- REQUEST (decode ReqPb.{req_msg}, offset={off}, ok={ok}) ---")
            detail_lines.append(indent(txt))
        elif req_msg is None:
            detail_lines.append("  --- REQUEST: (no request proto; raw header only) ---")
            detail_lines.append(f"    hex: {reqbytes.hex() if reqbytes else ''}")
        # RESPONSE
        if resp_msg and respbytes is not None:
            off, ok, txt = try_offsets_decode(respbytes, PROTO_RESP, f"{proto_file}.proto", f"EsPb.{resp_msg}", "resp")
            detail_lines.append(f"  --- RESPONSE (decode EsPb.{resp_msg}, offset={off}, ok={ok}) ---")
            detail_lines.append(indent(txt))
        elif resp_msg is None:
            detail_lines.append("  --- RESPONSE: (no response proto mapped) ---")

    with open(os.path.join(OUTDIR, "02_tutorial_calls_decoded.txt"), "w") as f:
        f.write("\n".join(detail_lines))
    print(f"wrote 02_tutorial_calls_decoded.txt")


def indent(txt, n=4):
    pad = " " * n
    return "\n".join(pad + ln for ln in txt.rstrip("\n").splitlines())


if __name__ == "__main__":
    main()
