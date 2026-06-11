#!/usr/bin/env python3
"""Download Eversoul probability tables from Kakao Oqupie portal articles.

Fetches the current EN probability tables from the official index page and saves
rendered HTML tables as Markdown under probability/.

Usage:
  python3 tools/download_probability.py
"""
from __future__ import annotations

import html
import re
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path
from typing import Any

try:
    from bs4 import BeautifulSoup
except ImportError:
    print("error: beautifulsoup4 is required (pip install beautifulsoup4)", file=sys.stderr)
    sys.exit(1)

INDEX_URL = "https://kakaogames.oqupie.com/portals/2152/articles/59105"
OUT_DIR = Path("probability")
LANGS = {"en"}
REQUEST_DELAY_SEC = 0.5
CONTENT_SELECTOR = "div.portal_article_contents.fr-view.oq_portal_text_color"
USER_AGENT = "eversoul-offline-probability-downloader/1.0"


def fetch(url: str, timeout: int = 60) -> str:
    req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        charset = resp.headers.get_content_charset() or "utf-8"
        return resp.read().decode(charset, errors="replace")


def slugify(text: str, max_len: int = 80) -> str:
    text = html.unescape(text)
    text = re.sub(r"[^\w\s\-.]+", "", text, flags=re.UNICODE)
    text = re.sub(r"[\s_]+", "_", text.strip())
    return text[:max_len].strip("_") or "untitled"


def article_id_from_url(url: str) -> str:
    m = re.search(r"/articles/(\d+)", url)
    return m.group(1) if m else slugify(url)


def lang_from_label(label: str) -> str:
    label = label.strip().lower()
    if "en" in label:
        return "en"
    if "tc" in label:
        return "tc"
    return "other"


def parse_index_links(page_html: str) -> list[dict[str, str]]:
    soup = BeautifulSoup(page_html, "html.parser")
    content = soup.select_one(CONTENT_SELECTOR) or soup.select_one(".portal_article_contents")
    if content is None:
        raise RuntimeError("index page: article content container not found")

    entries: list[dict[str, str]] = []
    current_heading = ""
    in_outdated = False

    for node in content.descendants:
        if getattr(node, "name", None) != "p":
            continue
        text = node.get_text(" ", strip=True)
        if not text:
            continue

        if text.startswith("■ Outdated"):
            in_outdated = True
            continue
        if text.startswith("■ ") and "Probability Table List" in text:
            continue

        links = node.find_all("a", href=True)
        if links:
            for a in links:
                label = a.get_text(" ", strip=True)
                lang = lang_from_label(label)
                if lang not in LANGS:
                    continue
                href = a["href"]
                if "/articles/" not in href:
                    continue
                entries.append(
                    {
                        "heading": current_heading,
                        "url": href,
                        "link_label": label,
                        "lang": lang,
                        "outdated": in_outdated,
                    }
                )
        elif not text.startswith("※"):
            if re.match(r"^(\d+\.|-)", text) or text.startswith("■"):
                current_heading = text

    seen: set[tuple[str, str]] = set()
    unique: list[dict[str, str]] = []
    for entry in entries:
        key = (entry["url"], entry["lang"])
        if key in seen:
            continue
        seen.add(key)
        unique.append(entry)
    return [e for e in unique if not e.get("outdated")]


def table_to_grid(table) -> list[list[str]]:
    rows = table.find_all("tr")
    grid: list[list[str]] = []
    rowspan_carry: dict[int, tuple[str, int]] = {}

    for tr in rows:
        row: list[str] = []
        col = 0
        cells = tr.find_all(["td", "th"])
        cell_i = 0

        while cell_i < len(cells) or col in rowspan_carry:
            if col in rowspan_carry:
                text, remaining = rowspan_carry[col]
                row.append(text)
                if remaining > 1:
                    rowspan_carry[col] = (text, remaining - 1)
                else:
                    del rowspan_carry[col]
                col += 1
                continue
            if cell_i >= len(cells):
                break

            td = cells[cell_i]
            cell_i += 1
            text = td.get_text(" ", strip=True)
            rowspan = int(td.get("rowspan", 1))
            colspan = int(td.get("colspan", 1))

            for c in range(colspan):
                row.append(text if c == 0 else "")
                if rowspan > 1:
                    rowspan_carry[col] = (text if c == 0 else "", rowspan - 1)
                col += 1

        grid.append(row)

    if not grid:
        return []

    width = max(len(r) for r in grid)
    for row in grid:
        while len(row) < width:
            row.append("")

    header = grid[0]
    groups: list[tuple[int, int]] = []
    i = 0
    while i < len(header):
        j = i + 1
        while j < len(header) and (header[j] == header[i] or header[j] == ""):
            j += 1
        groups.append((i, j))
        i = j

    collapsed: list[list[str]] = []
    for row in grid:
        new_row: list[str] = []
        for start, end in groups:
            values = [row[k] for k in range(start, end) if row[k]]
            new_row.append(values[0] if values else "")
        collapsed.append(new_row)
    return collapsed


def split_sections(content) -> list[dict[str, Any]]:
    sections: list[dict[str, Any]] = []
    current_heading = ""
    current_tables: list[list[list[str]]] = []

    def flush():
        nonlocal current_tables, current_heading
        if current_heading or current_tables:
            sections.append({"heading": current_heading, "tables": current_tables})
        current_tables = []

    for child in content.children:
        if getattr(child, "name", None) is None:
            continue

        if child.name == "p":
            strong = child.find("strong")
            if strong:
                heading = strong.get_text(" ", strip=True)
                if heading.startswith("■"):
                    flush()
                    current_heading = heading
            continue

        if child.name == "table":
            grid = table_to_grid(child)
            if grid:
                current_tables.append(grid)
            continue

    flush()
    return sections


def grid_to_records(grid: list[list[str]]) -> dict[str, Any]:
    if not grid:
        return {"headers": [], "rows": []}
    return {"headers": grid[0], "rows": grid[1:]}


def parse_article(page_html: str, source_url: str) -> dict[str, Any]:
    soup = BeautifulSoup(page_html, "html.parser")
    title_tag = soup.find("title")
    title = html.unescape(title_tag.get_text(strip=True)) if title_tag else ""
    if title.endswith("| eversoul"):
        title = title[: -len("| eversoul")].strip()

    content = soup.select_one(CONTENT_SELECTOR) or soup.select_one(".portal_article_contents")
    if content is None:
        raise RuntimeError(f"article {source_url}: content container not found")

    sections = split_sections(content)
    for section in sections:
        section["tables"] = [grid_to_records(grid) for grid in section["tables"]]

    return {
        "title": title,
        "source_url": source_url,
        "article_id": article_id_from_url(source_url),
        "sections": sections,
    }


def escape_md_cell(text: str) -> str:
    return text.replace("|", "\\|").replace("\n", " ").strip()


def render_markdown_table(headers: list[str], rows: list[list[str]]) -> str:
    if not headers:
        return ""
    lines = [
        "| " + " | ".join(escape_md_cell(h) for h in headers) + " |",
        "| " + " | ".join("---" for _ in headers) + " |",
    ]
    for row in rows:
        padded = row + [""] * (len(headers) - len(row))
        lines.append("| " + " | ".join(escape_md_cell(c) for c in padded[: len(headers)]) + " |")
    return "\n".join(lines)


def render_article_markdown(entry: dict[str, str], data: dict[str, Any]) -> str:
    lines = [f"# {data['title']}", ""]
    if entry.get("heading"):
        lines.extend([f"- **Index**: {entry['heading']}", ""])
    lines.extend(
        [
            f"- **Source**: {data['source_url']}",
            f"- **Article ID**: {data['article_id']}",
            f"- **Language**: {entry['lang']}",
            "",
        ]
    )

    for section in data["sections"]:
        heading = section.get("heading", "")
        if heading:
            lines.extend([f"## {heading}", ""])
        tables = section.get("tables", [])
        for t_idx, table in enumerate(tables, 1):
            if len(tables) > 1:
                lines.extend([f"### Table {t_idx}", ""])
            md_table = render_markdown_table(table["headers"], table["rows"])
            if md_table:
                lines.extend([md_table, ""])

    return "\n".join(lines).rstrip() + "\n"


def render_manifest_markdown(manifest: list[dict[str, Any]]) -> str:
    lines = ["# Probability Tables", "", "## Current", ""]
    for item in manifest:
        if item.get("file"):
            lines.append(
                f"- [{item['file']}]({item['file']}) — {item['title']} "
                f"({item['table_count']} tables)"
            )
        else:
            lines.append(f"- {item['source_url']}: {item['error']}")
    lines.append("")
    return "\n".join(lines)


def output_path(out_dir: Path, entry: dict[str, str], data: dict[str, Any]) -> Path:
    article_id = data["article_id"]
    lang = entry["lang"]
    heading_slug = slugify(entry.get("heading") or data["title"])
    return out_dir / f"{article_id}_{lang}_{heading_slug}.md"


def download_entries(entries: list[dict[str, str]], out_dir: Path) -> list[dict[str, Any]]:
    out_dir.mkdir(parents=True, exist_ok=True)
    manifest: list[dict[str, Any]] = []

    for i, entry in enumerate(entries, 1):
        url = entry["url"]
        print(f"[{i}/{len(entries)}] {entry.get('heading', '')[:60]} ({entry['lang']})")
        try:
            page_html = fetch(url)
            data = parse_article(page_html, url)
            path = output_path(out_dir, entry, data)
            path.write_text(render_article_markdown(entry, data), encoding="utf-8")
            manifest.append(
                {
                    "file": path.name,
                    "title": data["title"],
                    "source_url": url,
                    "table_count": sum(len(s["tables"]) for s in data["sections"]),
                }
            )
            print(f"  -> {path.name} ({manifest[-1]['table_count']} tables)")
        except (urllib.error.URLError, RuntimeError, ValueError) as exc:
            print(f"  !! failed: {exc}", file=sys.stderr)
            manifest.append({"file": None, "source_url": url, "error": str(exc)})
        if i < len(entries):
            time.sleep(REQUEST_DELAY_SEC)

    manifest_path = out_dir / "_manifest.md"
    manifest_path.write_text(render_manifest_markdown(manifest), encoding="utf-8")
    print(f"wrote {manifest_path} ({len(manifest)} entries)")
    return manifest


def main() -> int:
    print(f"fetching index: {INDEX_URL}")
    index_html = fetch(INDEX_URL)
    entries = parse_index_links(index_html)
    if not entries:
        print("no articles to download", file=sys.stderr)
        return 1

    print(f"found {len(entries)} current article(s)")
    download_entries(entries, OUT_DIR)
    return 0


if __name__ == "__main__":
    sys.exit(main())
