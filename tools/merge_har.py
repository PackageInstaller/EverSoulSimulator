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

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8")

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, HERE)
from proto_registry import ProtoRegistry  # noqa: E402
import har_to_json as h2j                  # noqa: E402


def load_entries(path):
    with open(path, encoding="utf-8", errors="replace") as f:
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
    ap = argparse.ArgumentParser(description="合并新 HAR 的游戏响应")
    ap.add_argument("new_har", help="新抓包 HAR 路径")
    ap.add_argument("--baseline", default=h2j.DEFAULT_HAR,
                    help="生成现有 responses/ 的原始 HAR（用于判定手改）")
    ap.add_argument("--protect", default="",
                    help="额外强制保护、绝不覆盖的端点（逗号分隔，可带或不带前导/）")
    ap.add_argument("--add-only", action="store_true",
                    help="只新增 responses/ 还没有的端点，现有文件一律不动（最保守）")
    ap.add_argument("--force", action="store_true",
                    help="除 --protect 外，已有端点也全部用新 HAR 覆盖")
    ap.add_argument("--dry-run", action="store_true", help="只报告，不写文件")
    ap.add_argument("--out-dir", default="responses",
                    help="输出 fixture 目录（相对项目根目录或绝对路径），默认 responses")
    ap.add_argument("--clean", action="store_true",
                    help="写入前清空输出目录中的 .json/.hex，避免旧 endpoint 残留")
    a = ap.parse_args()

    if not os.path.exists(a.new_har):
        sys.exit(f"找不到新 HAR：{a.new_har}")

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

    order = ["新增", "覆盖", "刷新", "跳过-已存在", "跳过-手改", "跳过-保护",
             "跳过-无基线", "解码失败"]
    acts = {k: [] for k in order}

    for ep in sorted(new):
        req_p, resp_p = new[ep]
        try:
            obj, info = h2j.build_fixture(reg, ep, req_p, resp_p)
        except Exception as exc:  # noqa: BLE001
            acts["解码失败"].append(f"{ep}({type(exc).__name__})")
            continue

        path = os.path.join(resp_dir, ep + ".json")
        if not os.path.exists(path):
            decision = "新增"
        elif a.add_only:
            decision = "跳过-已存在"      # --add-only：只补新端点，现有一律不动
        elif ep in protect:
            decision = "跳过-保护"
        elif a.force:
            decision = "覆盖"
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
                decision = "跳过-无基线"      # 已存在但基线无此端点，无法判定 -> 保守
            elif cur == base_obj:
                decision = "刷新"              # 与原始一致 = 没动过 -> 用新 HAR 覆盖
            else:
                decision = "跳过-手改"          # 与原始不同 = 你改过 -> 保护

        if decision in ("新增", "覆盖", "刷新") and not a.dry_run:
            with open(path, "w", encoding="utf-8") as f:
                json.dump(obj, f, indent=2, ensure_ascii=False)
            manifest[ep] = {"hits": hits_by_ep.get(ep, 1), **info}
        acts[decision].append(ep)

    if not a.dry_run:
        with open(man_path, "w", encoding="utf-8") as f:
            json.dump(manifest, f, indent=2, ensure_ascii=False)

    # ---- 报告 ----
    tag = "  [DRY-RUN 未写盘]" if a.dry_run else ""
    print(f"合并 {os.path.basename(a.new_har)} -> {os.path.relpath(resp_dir, ROOT)}  "
          f"基线={os.path.basename(a.baseline)}{tag}")
    for k in order:
        v = sorted(acts[k])
        print(f"  {k:9s} {len(v):3d}  {v if v else ''}")
    written = len(acts["新增"]) + len(acts["覆盖"]) + len(acts["刷新"])
    print(f"写入 {written} 个（新增 {len(acts['新增'])} + 覆盖 {len(acts['覆盖'])} + 刷新 {len(acts['刷新'])}）；"
          f"手改保护 {len(acts['跳过-手改']) + len(acts['跳过-保护'])} 个。")
    if not a.dry_run and written:
        print("下一步：./build.sh  （重新生成 schema/ 并打包）")


if __name__ == "__main__":
    main()
