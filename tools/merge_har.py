#!/usr/bin/env python3
"""merge_har.py — 把新抓包(HAR)里的游戏响应合并进 responses/。

与 har_to_json.py（全量删光重建）不同，本脚本做"增量合并"，决策如下：
  - 新端点（responses/ 还没有）           -> 新增
  - 已有且未手改                          -> 用新 HAR 刷新
  - 已有且被手改过（如 UserInfo）         -> 跳过，绝不覆盖
  - 已有但基线 HAR 里没有这个端点         -> 保守跳过（无法判定是否手改）
  - 被 --protect 显式点名的端点           -> 跳过
  - 指定 --force                         -> 除 --protect 外全部按新 HAR 覆盖

"是否手改"的判定（不依赖任何额外状态文件）：
现有 responses/ 是用“基线 HAR”（默认 cdp…08_38_04，即当初生成它们的那一份）
导出的。本脚本用基线 HAR 把同一端点**重新解码出原始内容**，与当前磁盘文件做
**语义比较**（都 json.load 成 Python 对象比较，忽略缩进/键序/格式差异）：
一致 = 没动过（可刷新）；不一致 = 你改过（保护、跳过）。

用法：
  python3 tools/merge_har.py eversoul_new.har
  python3 tools/merge_har.py eversoul_new.har --baseline cdp.cloud.unity3d.com_2026_06_08_08_38_04.har
  python3 tools/merge_har.py eversoul_new.har --force
  python3 tools/merge_har.py eversoul_new.har --protect UserInfo,LobbyRefresh
  python3 tools/merge_har.py eversoul_new.har --dry-run     # 只报告，不写盘
合并后跑 ./build.sh 重新生成 schema/ 并打包。
"""
import argparse
import json
import os
import sys
from urllib.parse import urlparse

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
from i18n import T                         # noqa: E402
from proto_registry import ProtoRegistry  # noqa: E402
import har_to_json as h2j                  # noqa: E402


def load_entries(path):
    with open(path, encoding="utf-8") as f:
        return json.load(f)["log"]["entries"]


def endpoint_counts(entries):
    counts = {}
    for e in entries:
        u = urlparse(e["request"]["url"])
        if not h2j.is_game_host(u.netloc):
            continue
        ep = u.path.lstrip("/")
        if not ep:
            continue
        counts[ep] = counts.get(ep, 0) + 1
    return counts


def main():
    ap = argparse.ArgumentParser(description=T("merge.argdesc"))
    ap.add_argument("new_har", help=T("merge.arg_new_har"))
    ap.add_argument("--baseline", default=h2j.DEFAULT_HAR, help=T("merge.arg_baseline"))
    ap.add_argument("--protect", default="", help=T("merge.arg_protect"))
    ap.add_argument("--add-only", action="store_true", help=T("merge.arg_add_only"))
    ap.add_argument("--force", action="store_true", help=T("merge.arg_force"))
    ap.add_argument("--dry-run", action="store_true", help=T("merge.arg_dry_run"))
    ap.add_argument("--out-dir", default="responses", help=T("merge.arg_out_dir"))
    ap.add_argument("--clean", action="store_true", help=T("merge.arg_clean"))
    a = ap.parse_args()

    if not os.path.exists(a.new_har):
        sys.exit(T("merge.not_found", path=a.new_har))

    resp_dir = a.out_dir if os.path.isabs(a.out_dir) else os.path.join(ROOT, a.out_dir)
    os.makedirs(resp_dir, exist_ok=True)
    if a.clean and not a.dry_run:
        for fn in os.listdir(resp_dir):
            if fn.endswith((".json", ".hex")):
                os.remove(os.path.join(resp_dir, fn))
    man_path = os.path.join(resp_dir, "_manifest.json")
    manifest = json.load(open(man_path, encoding="utf-8")) if os.path.exists(man_path) else {}
    protect = {x.strip().lstrip("/") for x in a.protect.split(",") if x.strip()}

    reg = ProtoRegistry()
    new_entries = load_entries(a.new_har)
    new = h2j.game_endpoints(new_entries)
    hits_by_ep = endpoint_counts(new_entries)
    base = (h2j.game_endpoints(load_entries(a.baseline))
            if a.baseline and os.path.exists(a.baseline) else {})

    _KEYS = ["add", "overwrite", "refresh", "skip-exists", "skip-edited",
             "skip-protected", "skip-no-baseline", "decode-failed"]
    acts = {k: [] for k in _KEYS}

    for ep in sorted(new):
        req_p, resp_p = new[ep]
        try:
            obj, info = h2j.build_fixture(reg, ep, req_p, resp_p)
        except Exception as exc:  # noqa: BLE001
            acts["decode-failed"].append(f"{ep}({type(exc).__name__})")
            continue

        path = os.path.join(resp_dir, ep + ".json")
        if not os.path.exists(path):
            decision = "add"
        elif a.add_only:
            decision = "skip-exists"
        elif ep in protect:
            decision = "skip-protected"
        elif a.force:
            decision = "overwrite"
        else:
            try:
                cur = json.load(open(path, encoding="utf-8"))
            except Exception:  # noqa: BLE001
                cur = None
            base_obj = None
            if ep in base:
                try:
                    base_obj, _ = h2j.build_fixture(reg, ep, *base[ep])
                except Exception:  # noqa: BLE001
                    base_obj = None
            if base_obj is None:
                decision = "skip-no-baseline"
            elif cur == base_obj:
                decision = "refresh"
            else:
                decision = "skip-edited"

        if decision in ("add", "overwrite", "refresh") and not a.dry_run:
            with open(path, "w", encoding="utf-8") as f:
                json.dump(obj, f, indent=2, ensure_ascii=False)
            manifest[ep] = {"hits": hits_by_ep.get(ep, 1), **info}
        acts[decision].append(ep)

    if not a.dry_run:
        with open(man_path, "w", encoding="utf-8") as f:
            json.dump(manifest, f, indent=2, ensure_ascii=False)

    tag = T("merge.dry_run_tag") if a.dry_run else ""
    print(T("merge.header", har=os.path.basename(a.new_har),
            dir=os.path.relpath(resp_dir, ROOT),
            base=os.path.basename(a.baseline), tag=tag))
    for k in _KEYS:
        v = sorted(acts[k])
        label = T(f"merge.{k}")
        print(f"  {label:20s} {len(v):3d}  {v if v else ''}")
    written = len(acts["add"]) + len(acts["overwrite"]) + len(acts["refresh"])
    print(T("merge.written_summary",
            total=written, add=len(acts["add"]),
            ow=len(acts["overwrite"]), rf=len(acts["refresh"]),
            prot=len(acts["skip-edited"]) + len(acts["skip-protected"])))
    if not a.dry_run and written:
        print(T("merge.next_step"))


if __name__ == "__main__":
    main()
