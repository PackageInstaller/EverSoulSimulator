#!/usr/bin/env python
"""Analyze HAR request/response bodies and TBL evidence without touching fixtures.

Outputs are written only under the selected research directory.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from collections import defaultdict
from pathlib import Path
from typing import Any
from urllib.parse import urlparse

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sys.path.insert(0, str(HERE))

from har_to_json import req_bytes, resp_bytes  # noqa: E402
from proto_registry import ProtoRegistry  # noqa: E402

REQ_OFFSET = 4
RESP_OFFSET = 8


def read_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8", errors="ignore"))


def write_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2), encoding="utf-8")


def read_varint(data: bytes, pos: int) -> tuple[int | None, int]:
    value = 0
    shift = 0
    while pos < len(data):
        byte = data[pos]
        pos += 1
        value |= (byte & 0x7F) << shift
        if not byte & 0x80:
            return value, pos
        shift += 7
        if shift > 70:
            break
    return None, pos


def wire_fields(data: bytes, limit: int = 80) -> list[dict[str, Any]]:
    pos = 0
    out: list[dict[str, Any]] = []
    while pos < len(data) and len(out) < limit:
        key, next_pos = read_varint(data, pos)
        if key is None:
            break
        pos = next_pos
        field = key >> 3
        wire_type = key & 7
        item: dict[str, Any] = {"field": field, "wire": wire_type}
        if wire_type == 0:
            value, pos = read_varint(data, pos)
            item["value"] = value
        elif wire_type == 1:
            item["bytes"] = 8
            item["hex"] = data[pos:pos + 8].hex()
            pos += 8
        elif wire_type == 2:
            size, pos = read_varint(data, pos)
            if size is None:
                break
            raw = data[pos:pos + size]
            item["len"] = size
            if size <= 64:
                item["hex"] = raw.hex()
            pos += size
        elif wire_type == 5:
            item["bytes"] = 4
            item["hex"] = data[pos:pos + 4].hex()
            pos += 4
        else:
            item["unsupported"] = True
            break
        out.append(item)
    return out


def summarize_value(value: Any, limit: int = 12) -> Any:
    if isinstance(value, dict):
        result: dict[str, Any] = {}
        for index, (key, child) in enumerate(value.items()):
            if index >= limit:
                result["..."] = len(value) - limit
                break
            result[key] = summarize_value(child, limit)
        return result
    if isinstance(value, list):
        if not value:
            return []
        return {"count": len(value), "first": summarize_value(value[0], limit)}
    return value


def collect_scalar_values(value: Any, prefix: str = "") -> list[dict[str, Any]]:
    out: list[dict[str, Any]] = []
    if isinstance(value, dict):
        for key, child in value.items():
            child_prefix = f"{prefix}.{key}" if prefix else key
            out.extend(collect_scalar_values(child, child_prefix))
    elif isinstance(value, list):
        for index, child in enumerate(value[:20]):
            child_prefix = f"{prefix}[{index}]"
            out.extend(collect_scalar_values(child, child_prefix))
    elif isinstance(value, (int, str)):
        out.append({"path": prefix, "value": value})
    return out


def normalize_scalar_path(path: str) -> str:
    return re.sub(r"\[\d+\]", "[]", path)


def camel_to_snake(name: str) -> str:
    first = re.sub("(.)([A-Z][a-z]+)", r"\1_\2", name)
    return re.sub("([a-z0-9])([A-Z])", r"\1_\2", first).lower()


def endpoint_tokens(endpoint: str) -> set[str]:
    parts = re.findall(r"[A-Z][a-z0-9]*|[A-Z]+(?=[A-Z]|$)", endpoint)
    tokens = set(parts)
    for start in range(len(parts)):
        for end in range(start + 1, min(len(parts), start + 4) + 1):
            tokens.add("".join(parts[start:end]))
    return tokens


def load_tbl_rows(root: Path) -> dict[str, list[dict[str, Any]]]:
    tables: dict[str, list[dict[str, Any]]] = {}
    for path in sorted((root / "tbl_json").glob("*.json")):
        data = read_json(path)
        rows = data.get("json", data) if isinstance(data, dict) else data
        if isinstance(rows, list):
            tables[path.stem] = [row for row in rows if isinstance(row, dict)]
    return tables


def row_excerpt(row: dict[str, Any], limit: int = 12) -> dict[str, Any]:
    result: dict[str, Any] = {}
    for index, (key, value) in enumerate(row.items()):
        if index >= limit:
            result["..."] = len(row) - limit
            break
        result[key] = value
    return result


def candidate_tables(endpoint: str, tables: dict[str, list[dict[str, Any]]]) -> set[str]:
    tokens = endpoint_tokens(endpoint)
    candidates = {name for name in tables if name in tokens or any(token in name for token in tokens)}
    candidates.update({
        "Item", "Hero", "Dungeon", "Shop", "ShopItems", "ShopRandom", "ShopRandomItems",
        "DungeonMerchant", "DungeonMerchantItem", "DungeonRotationReward",
        "Signature", "SignatureLevel", "SignatureLevelCost", "SignatureGrade",
        "Zodiac", "SpiritTree", "TownMission", "ArenaTimeReward", "ArkEnhance",
    } & set(tables))
    return candidates


def tbl_hits_for_values(endpoint: str,
                        decoded_request: Any,
                        decoded_response: Any,
                        tables: dict[str, list[dict[str, Any]]]) -> list[dict[str, Any]]:
    values = collect_scalar_values(decoded_request) + collect_scalar_values(decoded_response)
    candidates = candidate_tables(endpoint, tables)
    hits: list[dict[str, Any]] = []
    for value_info in values:
        value = value_info["value"]
        if isinstance(value, str) and not value.isdigit():
            continue
        text_value = str(value)
        leaf = value_info["path"].split(".")[-1].split("[")[0]
        possible_keys = {
            leaf,
            camel_to_snake(leaf),
            "no",
            "field_0",
        }
        if leaf.endswith("No"):
            possible_keys.add("no")
            possible_keys.add(camel_to_snake(leaf))
        if leaf in {"group", "level", "arenaType", "coreType01", "coreType02", "dungeonType"}:
            possible_keys.add(camel_to_snake(leaf))
        for table in sorted(candidates):
            for row in tables.get(table, []):
                for key in possible_keys:
                    if key in row and str(row[key]) == text_value:
                        hits.append({
                            "source_path": value_info["path"],
                            "value": value,
                            "table": table,
                            "key": key,
                            "row": row_excerpt(row),
                        })
                        break
                if len(hits) >= 80:
                    return hits
    return hits


DIRECT_TBL_RULES: dict[str, list[dict[str, str]]] = {
    "ArkEnhanceCore": [
        {"path": "request.coreType02", "table": "ArkEnhance", "key": "core_type_02"},
        {"path": "response.coreType02", "table": "ArkEnhance", "key": "core_type_02"},
    ],
    "ChangeThumbnail": [
        {"path": "request.thumbnailFrame", "table": "Thumbnail", "key": "no"},
        {"path": "request.thumbnailImage", "table": "Thumbnail", "key": "no"},
        {"path": "response.thumbnail.thumbnailFrame", "table": "Thumbnail", "key": "no"},
        {"path": "response.thumbnail.thumbnailImage", "table": "Thumbnail", "key": "no"},
    ],
    "ContentLimitSave": [
        {"path": "request.no", "table": "HelpGuide", "key": "no"},
        {"path": "response.no[]", "table": "HelpGuide", "key": "no"},
    ],
    "DungeonShopItemBuy": [
        {"path": "request.no", "table": "DungeonMerchantItem", "key": "field_0"},
        {"path": "response.no", "table": "DungeonMerchantItem", "key": "field_0"},
        {"path": "response.itemEtc[].itemNo", "table": "Item", "key": "no"},
        {"path": "response.itemNo", "table": "Item", "key": "no"},
        {"path": "request.dungeonType", "table": "Dungeon", "key": "dungeon_type"},
    ],
    "DungeonShopOpen": [
        {"path": "request.dungeonNo", "table": "Dungeon", "key": "no"},
        {"path": "request.stageNo", "table": "DungeonMerchant", "key": "field_2"},
        {"path": "response.dungeonShopItem[].no", "table": "DungeonMerchantItem", "key": "field_0"},
        {"path": "response.dungeonShopItem[].itemNo", "table": "Item", "key": "no"},
        {"path": "response.dungeonShopItem[].payItemNo", "table": "Item", "key": "no"},
    ],
    "SignatureEquip": [
        {"path": "request.no", "table": "Signature", "key": "no"},
        {"path": "response.itemSignature[].itemNo", "table": "Signature", "key": "no"},
    ],
    "SignatureLevelUp": [
        {"path": "request.no", "table": "Signature", "key": "no"},
        {"path": "request.no", "table": "SignatureLevel", "key": "group"},
        {"path": "request.toLevel", "table": "SignatureLevelCost", "key": "level"},
        {"path": "response.itemSignature.itemNo", "table": "Signature", "key": "no"},
        {"path": "response.itemSignature.itemNo", "table": "SignatureLevel", "key": "group"},
        {"path": "response.itemSignature.level", "table": "SignatureLevelCost", "key": "level"},
    ],
    "SignatureUpgrade": [
        {"path": "request.no", "table": "Signature", "key": "no"},
        {"path": "response.itemSignature.itemNo", "table": "Signature", "key": "no"},
        {"path": "response.itemSignature.itemNo", "table": "SignatureGrade", "key": "group"},
        {"path": "response.itemEtc.itemNo", "table": "Item", "key": "no"},
    ],
    "SpiritTreeSlotAdd": [
        {"path": "response.spiritTree.slotNo", "table": "SpiritTree", "key": "no"},
    ],
    "TownMissionReward": [
        {"path": "request.no", "table": "TownMission", "key": "no"},
        {"path": "response.itemChangeAmount[].itemNo", "table": "Item", "key": "no"},
    ],
    "ZodiacActive": [
        {"path": "request.zodiacNo", "table": "Zodiac", "key": "no"},
        {"path": "response.zodiac.zodiacNo", "table": "Zodiac", "key": "no"},
    ],
    "ZodiacMainActive": [
        {"path": "request.zodiacNo", "table": "Zodiac", "key": "no"},
        {"path": "response.zodiac.zodiacNo", "table": "Zodiac", "key": "no"},
    ],
    "ZodiacPresetActive": [
        {"path": "response.zodiac[].zodiacNo", "table": "Zodiac", "key": "no"},
    ],
}


def direct_tbl_hits_for_endpoint(endpoint: str,
                                 decoded_request: Any,
                                 decoded_response: Any,
                                 tables: dict[str, list[dict[str, Any]]]) -> list[dict[str, Any]]:
    rules = DIRECT_TBL_RULES.get(endpoint, [])
    if not rules:
        return []
    values = collect_scalar_values(decoded_request, "request") + collect_scalar_values(decoded_response, "response")
    values_by_path: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for value_info in values:
        values_by_path[normalize_scalar_path(value_info["path"])].append(value_info)

    hits: list[dict[str, Any]] = []
    for rule in rules:
        table = rule["table"]
        key = rule["key"]
        for value_info in values_by_path.get(rule["path"], []):
            value = value_info["value"]
            for row in tables.get(table, []):
                if key in row and str(row[key]) == str(value):
                    hits.append({
                        "source_path": value_info["path"],
                        "value": value,
                        "table": table,
                        "key": key,
                        "row": row_excerpt(row),
                    })
                    break
    return hits


def manifest_status(root: Path, endpoint: str) -> dict[str, str]:
    result: dict[str, str] = {}
    for name in ("responses", "responses_newbie"):
        manifest = root / name / "_manifest.json"
        if not manifest.exists():
            result[name] = "manifest 없음"
            continue
        data = read_json(manifest)
        if endpoint not in data:
            result[name] = "없음"
            continue
        info = data[endpoint]
        fmt = info.get("format") or info.get("__format__") or info.get("type") or "unknown"
        size = info.get("resp_bytes")
        result[name] = f"{fmt} {size}B"
    return result


def schema_status(root: Path, endpoint: str) -> dict[str, Any]:
    schema_path = root / "schema" / f"{endpoint}.json"
    if not schema_path.exists():
        return {"exists": False}
    data = read_json(schema_path)
    root_name = data.get("root")
    messages = data.get("messages", {})
    fields = []
    if root_name in messages:
        fields = messages[root_name].get("fields", [])
    return {
        "exists": True,
        "root": root_name,
        "fields": fields,
    }


def decode_payload(registry: ProtoRegistry, kind: str, endpoint: str, payload: bytes) -> tuple[Any, str | None]:
    if not payload:
        return {}, None
    if not registry.has(kind, endpoint):
        return None, "proto 없음"
    try:
        return registry.decode(kind, endpoint, payload), None
    except Exception as exc:  # noqa: BLE001
        return None, f"{type(exc).__name__}: {exc}"


def collect_har_entries(root: Path) -> dict[str, list[dict[str, Any]]]:
    endpoints: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for har_path in sorted((root / "research").glob("*.har")):
        data = read_json(har_path)
        for entry in data.get("log", {}).get("entries", []):
            url = entry.get("request", {}).get("url", "")
            parsed = urlparse(url)
            if "esoul.kakaogames.com:1739" not in parsed.netloc:
                continue
            endpoint = parsed.path.strip("/").split("/")[-1]
            if not endpoint:
                continue
            raw_req = req_bytes(entry)
            raw_resp = resp_bytes(entry)
            request_payload = raw_req[REQ_OFFSET:] if len(raw_req) >= REQ_OFFSET else b""
            response_payload = raw_resp[RESP_OFFSET:] if len(raw_resp) >= RESP_OFFSET else b""
            endpoints[endpoint].append({
                "har": har_path.name,
                "host": parsed.netloc,
                "url": url,
                "method": entry.get("request", {}).get("method", ""),
                "status": entry.get("response", {}).get("status"),
                "request_bytes": len(request_payload),
                "response_bytes": len(response_payload),
                "request_hex": request_payload.hex(),
                "response_hex": response_payload.hex(),
                "request_wire": wire_fields(request_payload),
                "response_wire": wire_fields(response_payload),
                "_request_payload": request_payload,
                "_response_payload": response_payload,
            })
    return dict(endpoints)


def markdown_summary(endpoint_docs: dict[str, dict[str, Any]], full: bool = False) -> str:
    lines = [
        "# HAR Runtime Evidence",
        "",
        "이 산출물은 HAR 원본을 읽어 요청 바디, 응답 바디, fixture 상태, schema, TBL 값 매칭을 분리 저장한 결과다.",
        "요청은 4바이트 시퀀스를 제거했고, 응답은 8바이트 응답 봉투를 제거했다.",
        "",
        "| 엔드포인트 | hits | 최신 HAR | 요청 바디 | 응답 바디 | decoded | direct TBL | value TBL |",
        "| --- | ---: | --- | --- | --- | --- | ---: | ---: |",
    ]
    items = sorted(endpoint_docs.items())
    if not full:
        items = [item for item in items if item[1].get("stateful_candidate")]
    for endpoint, doc in items:
        latest = doc["latest"]
        decoded = []
        if latest.get("request_decoded") is not None:
            decoded.append("req")
        if latest.get("response_decoded") is not None:
            decoded.append("resp")
        lines.append(
            f"| `/{endpoint}` | {doc['hits']} | `{latest['har']}` | "
            f"{latest['request_bytes']}B | {latest['response_bytes']}B | "
            f"{'/'.join(decoded) if decoded else 'wire'} | "
            f"{len(doc.get('tbl_direct_hits', []))} | {len(doc.get('tbl_value_hits', []))} |"
        )
    return "\n".join(lines) + "\n"


def build_docs(root: Path, endpoints_filter: set[str] | None) -> dict[str, dict[str, Any]]:
    registry = ProtoRegistry()
    tables = load_tbl_rows(root)
    collected = collect_har_entries(root)
    router_text = (root / "src/server/app/router.cpp").read_text(encoding="utf-8", errors="ignore")
    stateful_match = re.search(r"static const std::vector<std::string> kStateful = \{(.*?)\};", router_text, re.S)
    stateful = set(re.findall(r'"\/([^"]+)"', stateful_match.group(1))) if stateful_match else set()

    endpoint_docs: dict[str, dict[str, Any]] = {}
    for endpoint, entries in collected.items():
        if endpoints_filter and endpoint not in endpoints_filter:
            continue
        latest = dict(entries[-1])
        request_payload = latest.pop("_request_payload")
        response_payload = latest.pop("_response_payload")
        request_decoded, request_error = decode_payload(registry, "Request", endpoint, request_payload)
        response_decoded, response_error = decode_payload(registry, "Response", endpoint, response_payload)
        latest["has_request_proto"] = registry.has("Request", endpoint)
        latest["has_response_proto"] = registry.has("Response", endpoint)
        latest["request_decoded"] = request_decoded
        latest["request_decode_error"] = request_error
        latest["response_decoded"] = response_decoded
        latest["response_decoded_summary"] = summarize_value(response_decoded)
        latest["response_decode_error"] = response_error
        decoded_req_for_tbl = request_decoded if isinstance(request_decoded, (dict, list)) else {}
        decoded_resp_for_tbl = response_decoded if isinstance(response_decoded, (dict, list)) else {}
        endpoint_docs[endpoint] = {
            "endpoint": endpoint,
            "hits": len(entries),
            "stateful_candidate": endpoint in stateful,
            "latest": latest,
            "fixture": manifest_status(root, endpoint),
            "schema": schema_status(root, endpoint),
            "tbl_candidates": sorted(candidate_tables(endpoint, tables)),
            "tbl_direct_hits": direct_tbl_hits_for_endpoint(
                endpoint, decoded_req_for_tbl, decoded_resp_for_tbl, tables),
            "tbl_value_hits": tbl_hits_for_values(endpoint, decoded_req_for_tbl, decoded_resp_for_tbl, tables),
        }
    return endpoint_docs


def main() -> int:
    parser = argparse.ArgumentParser(description="Analyze HAR runtime request/response/TBL evidence.")
    parser.add_argument("--root", default=str(ROOT), help="project root")
    parser.add_argument("--out-dir", default="research/har_runtime_evidence_20260701", help="output directory")
    parser.add_argument("--endpoints", default="", help="comma separated endpoint names without slash")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    out_dir = (root / args.out_dir).resolve()
    if not str(out_dir).startswith(str((root / "research").resolve())):
        raise SystemExit("out-dir must be under research/")

    endpoints_filter = {part.strip().lstrip("/") for part in args.endpoints.split(",") if part.strip()}
    docs = build_docs(root, endpoints_filter or None)
    out_dir.mkdir(parents=True, exist_ok=True)
    endpoints_dir = out_dir / "endpoints"
    endpoints_dir.mkdir(parents=True, exist_ok=True)

    for endpoint, doc in sorted(docs.items()):
        write_json(endpoints_dir / f"{endpoint}.json", doc)

    summary = {
        "endpoint_count": len(docs),
        "stateful_count": sum(1 for doc in docs.values() if doc.get("stateful_candidate")),
        "decoded_request_count": sum(1 for doc in docs.values() if doc["latest"].get("request_decoded") is not None),
        "decoded_response_count": sum(1 for doc in docs.values() if doc["latest"].get("response_decoded") is not None),
        "tbl_direct_hit_endpoint_count": sum(1 for doc in docs.values() if doc.get("tbl_direct_hits")),
        "tbl_value_hit_endpoint_count": sum(1 for doc in docs.values() if doc.get("tbl_value_hits")),
    }
    write_json(out_dir / "summary.json", summary)
    write_json(out_dir / "all_endpoints_compact.json", {
        endpoint: {
            "hits": doc["hits"],
            "stateful_candidate": doc["stateful_candidate"],
            "latest_har": doc["latest"]["har"],
            "request_bytes": doc["latest"]["request_bytes"],
            "response_bytes": doc["latest"]["response_bytes"],
            "fixture": doc["fixture"],
            "schema_exists": doc["schema"].get("exists", False),
            "tbl_direct_hits": len(doc["tbl_direct_hits"]),
            "tbl_value_hits": len(doc["tbl_value_hits"]),
        }
        for endpoint, doc in sorted(docs.items())
    })
    (out_dir / "stateful_matrix.md").write_text(markdown_summary(docs, full=False), encoding="utf-8")
    (out_dir / "all_endpoint_matrix.md").write_text(markdown_summary(docs, full=True), encoding="utf-8")

    print(f"wrote {out_dir}")
    print(json.dumps(summary, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
