import os

_LANG = os.environ.get("EVERSOUL_LANG", "en").lower()

_STRINGS = {
    "pack.warn_missing_dir": {
        "en": "WARNING: missing directory {d}/",
        "ko": "경고: 디렉토리 없음 {d}/",
        "zh": "警告：缺少目录 {d}/",
    },
    "pack.warn_missing_file": {
        "en": "WARNING: missing {rel}",
        "ko": "경고: 파일 없음 {rel}",
        "zh": "警告：缺少 {rel}",
    },
    "pack.summary": {
        "en": "Packed {count} files, raw {total} bytes -> {size} bytes",
        "ko": "{count}개 파일 패킹, 원본 {total} 바이트 -> {size} 바이트",
        "zh": "打包 {count} 个文件，原始 {total} 字节 -> {size} 字节",
    },
    "pack.output": {
        "en": "Output: {path}",
        "ko": "출력: {path}",
        "zh": "输出：{path}",
    },
    "pack.dir_count": {
        "en": "  {d}/: {c} files",
        "ko": "  {d}/: {c}개 파일",
        "zh": "  {d}/: {c} 个文件",
    },
    "merge.add":              {"en": "add",              "ko": "추가",         "zh": "新增"},
    "merge.overwrite":        {"en": "overwrite",        "ko": "덮어쓰기",     "zh": "覆盖"},
    "merge.refresh":          {"en": "refresh",          "ko": "갱신",         "zh": "刷新"},
    "merge.skip-exists":      {"en": "skip-exists",      "ko": "건너뜀-존재",  "zh": "跳过-已存在"},
    "merge.skip-edited":      {"en": "skip-edited",      "ko": "건너뜀-수정됨","zh": "跳过-手改"},
    "merge.skip-protected":   {"en": "skip-protected",   "ko": "건너뜀-보호",  "zh": "跳过-保护"},
    "merge.skip-no-baseline": {"en": "skip-no-baseline", "ko": "건너뜀-베이스라인없음", "zh": "跳过-无基线"},
    "merge.decode-failed":    {"en": "decode-failed",    "ko": "디코딩실패",   "zh": "解码失败"},
    "merge.dry_run_tag": {
        "en": "  [DRY-RUN not written]",
        "ko": "  [DRY-RUN 미기록]",
        "zh": "  [DRY-RUN 未写盘]",
    },
    "merge.header": {
        "en": "Merge {har} -> {dir}  baseline={base}{tag}",
        "ko": "병합 {har} -> {dir}  베이스라인={base}{tag}",
        "zh": "合并 {har} -> {dir}  基线={base}{tag}",
    },
    "merge.written_summary": {
        "en": "Written {total} (add {add} + overwrite {ow} + refresh {rf}); protected {prot}.",
        "ko": "{total}개 기록 (추가 {add} + 덮어쓰기 {ow} + 갱신 {rf}); 보호됨 {prot}개.",
        "zh": "写入 {total} 个（新增 {add} + 覆盖 {ow} + 刷新 {rf}）；手改保护 {prot} 个。",
    },
    "merge.next_step": {
        "en": "Next: ./build.sh",
        "ko": "다음 단계: ./build.sh",
        "zh": "下一步：./build.sh  （重新生成 schema/ 并打包）",
    },
    "merge.not_found": {
        "en": "HAR file not found: {path}",
        "ko": "HAR 파일을 찾을 수 없음: {path}",
        "zh": "找不到新 HAR：{path}",
    },
    "merge.argdesc": {
        "en": "Merge new HAR game responses into responses/",
        "ko": "새 HAR 게임 응답을 responses/에 병합",
        "zh": "合并新 HAR 的游戏响应",
    },
    "merge.arg_new_har":    {"en": "path to new HAR",      "ko": "새 HAR 경로",        "zh": "新抓包 HAR 路径"},
    "merge.arg_baseline":   {"en": "baseline HAR path",    "ko": "베이스라인 HAR 경로", "zh": "生成现有 responses/ 的原始 HAR（用于判定手改）"},
    "merge.arg_protect":    {"en": "comma-separated endpoints to protect", "ko": "보호할 엔드포인트 (쉼표 구분)", "zh": "额外强制保护、绝不覆盖的端点（逗号分隔，可带或不带前导/）"},
    "merge.arg_add_only":   {"en": "only add new endpoints, never overwrite", "ko": "새 엔드포인트만 추가, 덮어쓰기 금지", "zh": "只新增 responses/ 还没有的端点，现有文件一律不动（最保守）"},
    "merge.arg_force":      {"en": "overwrite all except --protect", "ko": "--protect 외 모두 덮어쓰기", "zh": "除 --protect 外，已有端点也全部用新 HAR 覆盖"},
    "merge.arg_dry_run":    {"en": "report only, do not write", "ko": "보고만, 기록 안 함", "zh": "只报告，不写文件"},
    "merge.arg_out_dir":    {"en": "output fixture dir (default: responses)", "ko": "출력 디렉토리 (기본값: responses)", "zh": "输出 fixture 目录（相对项目根目录或绝对路径），默认 responses"},
    "merge.arg_clean":      {"en": "clean output dir before writing", "ko": "기록 전 출력 디렉토리 정리", "zh": "写入前清空输出目录中的 .json/.hex，避免旧 endpoint 残留"},
}


def T(key, **kwargs):
    entry = _STRINGS.get(key, {})
    text = entry.get(_LANG) or entry.get("en") or key
    return text.format(**kwargs) if kwargs else text
