#!/usr/bin/env python3
"""Trace hero-list & formation evolution across the tutorial.
Extract, in chronological order:
 - every TutorialActive whose RESPONSE carries hero{} blocks (a hero grant)
 - every FormationSave request+response (formation placement)
 - every StageEnter deck (which heroes are fielded), StageClear
 - the gacha commit heroes
Print compact lines.
"""
import json, base64, math, os, subprocess
from urllib.parse import urlparse

ROOT = os.path.dirname(os.path.abspath(__file__))
HAR = os.path.join(ROOT, "gc-session-zinny3.kakaogames.com_2026_06_07_08_42_50.har")
PROTO_REQ = os.path.join(ROOT, "ProtocolBuffers/Global/Request")
PROTO_RESP = os.path.join(ROOT, "ProtocolBuffers/Global/Response")
GAME_HOST = "live-kr.esoul.kakaogames.com:1739"


def recover_request_bytes(pd, bodySize):
    if not pd:
        return None
    t = pd.get("text", "")
    if t == "":
        return b""
    expb64 = math.ceil(bodySize / 3) * 4 if bodySize > 0 else 0
    if bodySize > 0 and len(t) == expb64:
        try:
            d = base64.b64decode(t)
            if len(d) == bodySize:
                return d
        except Exception:
            pass
    try:
        d = t.encode("latin-1")
        if bodySize <= 0 or len(d) == bodySize:
            return d
    except Exception:
        pass
    return t.encode("utf-8")


def recover_response_bytes(content):
    if not content:
        return None
    t = content.get("text")
    if t is None:
        return None
    if content.get("encoding") == "base64":
        return base64.b64decode(t)
    return t.encode("latin-1")


def decode(payload, proto_path, proto_file, msg):
    cmd = ["protoc", f"--decode={msg}", f"--proto_path={proto_path}", os.path.join(proto_path, proto_file)]
    r = subprocess.run(cmd, input=payload, capture_output=True)
    if r.returncode != 0:
        return None
    return r.stdout.decode("utf-8", "replace")


h = json.load(open(HAR))
games = [e for e in h["log"]["entries"] if urlparse(e["request"]["url"]).netloc == GAME_HOST]
games.sort(key=lambda e: e["startedDateTime"])


def parse_heroes(text):
    """Parse hero{} blocks from a protoc text decode -> list of dicts."""
    heroes = []
    cur = None
    depth = 0
    in_hero = False
    for line in text.splitlines():
        s = line.strip()
        if s in ("hero {", "heros {"):
            cur = {}
            in_hero = True
            depth = 1
            continue
        if in_hero:
            if s == "}":
                depth -= 1
                if depth == 0:
                    heroes.append(cur)
                    in_hero = False
                continue
            if ":" in s:
                k, _, v = s.partition(":")
                cur[k.strip()] = v.strip().strip('"')
    return heroes


print("CHRONOLOGICAL HERO/FORMATION EVOLUTION")
print("=" * 70)
for gi, e in enumerate(games):
    path = urlparse(e["request"]["url"]).path.lstrip("/")
    t = e["startedDateTime"][11:23]
    if path == "TutorialActive":
        rb = recover_response_bytes(e["response"].get("content"))
        if rb is None:
            continue
        txt = decode(rb[8:], PROTO_RESP, "TutorialActive.proto", "EsPb.TutorialActive")
        if not txt:
            continue
        hs = parse_heroes(txt)
        # tutorialNo
        tno = ""
        for line in txt.splitlines():
            if "tutorialNo:" in line:
                tno = line.split(":")[1].strip()
                break
        if hs:
            print(f"[{t}] gi={gi} TutorialActive tutNo={tno}  *** GRANTS {len(hs)} HERO(ES) ***")
            for hh in hs:
                print(f"        hero idx={hh.get('idx','-'):16s} heroNo={hh.get('heroNo'):>5} grade={hh.get('gradeSno')} race={hh.get('raceSno')}")
    elif path == "FormationSave":
        rqb = recover_request_bytes(e["request"].get("postData"), e["request"].get("bodySize", -1))
        txt = decode(rqb[4:], PROTO_REQ, "FormationSave.proto", "ReqPb.FormationSave")
        idxs = []
        no = kind = ftype = "?"
        for line in (txt or "").splitlines():
            s = line.strip()
            if s.startswith("heroIdx:"):
                idxs.append(s.split(":", 1)[1].strip().strip('"'))
            elif s.startswith("no:"):
                no = s.split(":")[1].strip()
            elif s.startswith("kind:"):
                kind = s.split(":")[1].strip()
            elif s.startswith("formationType:"):
                ftype = s.split(":")[1].strip()
        print(f"[{t}] gi={gi} FormationSave no={no} kind={kind} fType={ftype} heroIdx={idxs}")
    elif path == "StageEnter":
        rqb = recover_request_bytes(e["request"].get("postData"), e["request"].get("bodySize", -1))
        txt = decode(rqb[4:], PROTO_REQ, "StageEnter.proto", "ReqPb.StageEnter")
        stageNo = "?"
        deck = []
        for line in (txt or "").splitlines():
            s = line.strip()
            if s.startswith("stageNo:"):
                stageNo = s.split(":")[1].strip()
        # parse clearHero
        hs = []
        cur = None
        for line in (txt or "").splitlines():
            s = line.strip()
            if s == "clearHero {":
                cur = {}
            elif cur is not None and s == "}":
                hs.append(cur); cur = None
            elif cur is not None and ":" in s:
                k, _, v = s.partition(":"); cur[k.strip()] = v.strip().strip('"')
        deck = [f"{hh.get('heroNo')}({hh.get('heroIdx')})" for hh in hs]
        print(f"[{t}] gi={gi} StageEnter stageNo={stageNo} deck={deck}")
    elif path == "StageClear":
        rqb = recover_request_bytes(e["request"].get("postData"), e["request"].get("bodySize", -1))
        txt = decode(rqb[4:], PROTO_REQ, "StageClear.proto", "ReqPb.StageClear")
        stageNo = "?"
        for line in (txt or "").splitlines():
            if line.strip().startswith("stageNo:"):
                stageNo = line.split(":")[1].strip(); break
        print(f"[{t}] gi={gi} StageClear stageNo={stageNo}")
    elif path == "GachaHeroTutorialFix":
        rb = recover_response_bytes(e["response"].get("content"))
        txt = decode(rb[8:], PROTO_RESP, "GachaHeroTutorialFix.proto", "EsPb.GachaHeroTutorialFix")
        hs = parse_heroes(txt)
        print(f"[{t}] gi={gi} GachaHeroTutorialFix *** COMMITS {len(hs)} HEROES ***")
        for hh in hs:
            print(f"        hero idx={hh.get('idx','-'):16s} heroNo={hh.get('heroNo'):>5} grade={hh.get('gradeSno')} race={hh.get('raceSno')}")
    elif path == "HeroLevelUp":
        rqb = recover_request_bytes(e["request"].get("postData"), e["request"].get("bodySize", -1))
        txt = decode(rqb[4:], PROTO_REQ, "HeroLevelUp.proto", "ReqPb.HeroLevelUp")
        hidx = tol = "?"
        for line in (txt or "").splitlines():
            s = line.strip()
            if s.startswith("heroIdx:"): hidx = s.split(":",1)[1].strip().strip('"')
            elif s.startswith("toLevel:"): tol = s.split(":")[1].strip()
        print(f"[{t}] gi={gi} HeroLevelUp heroIdx={hidx} toLevel={tol}")
