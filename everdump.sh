#!/system/bin/sh
# everdump.sh — EverSoul LIAPP decrypt 전 전체 메모리/파일 감시 덤프
# 실행: adb shell su -c "sh /sdcard/everdump.sh" 2>&1 | tee dump_run.txt

PKG="kakaogames.eversoul"
PKG_DATA="/data/data/com.kakaogames.eversoul"
OUT="/sdcard/everdump3"
POLL_US=1000

mkdir -p "$OUT/maps" "$OUT/mem" "$OUT/files" "$OUT/fd" "$OUT/so"
LOG="$OUT/run.log"
> "$LOG"

_log() {
    MSG="$(date '+%H:%M:%S.%3N') $*"
    echo "$MSG" | tee -a "$LOG"
}

_dump_range() {
    PID="$1" S_HEX="$2" E_HEX="$3" LABEL="$4"
    S_DEC=$(printf '%d' "0x${S_HEX}")
    E_DEC=$(printf '%d' "0x${E_HEX}")
    SIZE=$(( E_DEC - S_DEC ))
    OUTF="$OUT/mem/${PID}_${LABEL}.bin"
    METHOD="none"

    # 방법1: map_files 심볼릭링크 (파일 매핑 한정, 가장 빠름)
    MAPF="/proc/$PID/map_files/${S_HEX}-${E_HEX}"
    if [ -e "$MAPF" ]; then
        cp "$MAPF" "$OUTF" 2>/dev/null
        ACTUAL=$(ls -la "$OUTF" 2>/dev/null | awk '{print $5}')
        [ -n "$ACTUAL" ] && [ "$ACTUAL" -gt 0 ] 2>/dev/null && METHOD="map_files"
    fi

    # 방법2: dd iflag=skip_bytes (anonymous 포함, lseek64 기반)
    if [ "$METHOD" = "none" ]; then
        dd if=/proc/$PID/mem iflag=skip_bytes bs=65536 skip=$S_DEC \
           count=$(( (SIZE + 65535) / 65536 )) of="$OUTF" 2>/dev/null
        ACTUAL=$(ls -la "$OUTF" 2>/dev/null | awk '{print $5}')
        [ -n "$ACTUAL" ] && [ "$ACTUAL" -gt 0 ] 2>/dev/null && METHOD="dd_skip_bytes"
    fi

    # 방법3: dd bs=4096 page-aligned skip (fallback)
    if [ "$METHOD" = "none" ]; then
        PAGE_SKIP=$(( S_DEC / 4096 ))
        PAGE_COUNT=$(( (SIZE + 4095) / 4096 ))
        dd if=/proc/$PID/mem bs=4096 skip=$PAGE_SKIP count=$PAGE_COUNT \
           of="$OUTF" 2>/dev/null
        ACTUAL=$(ls -la "$OUTF" 2>/dev/null | awk '{print $5}')
        [ -n "$ACTUAL" ] && [ "$ACTUAL" -gt 0 ] 2>/dev/null && METHOD="dd_page_skip"
    fi

    [ -z "$ACTUAL" ] && ACTUAL=0
    _log "  DUMP[$METHOD][$LABEL] pid=$PID 0x$S_HEX-0x$E_HEX size=$SIZE actual=$ACTUAL"
    if [ "$ACTUAL" -gt 0 ] 2>/dev/null; then
        MAGIC=$(dd if="$OUTF" bs=1 count=8 2>/dev/null | xxd -p 2>/dev/null)
        _log "  magic: $MAGIC"
    else
        _log "  DUMP FAILED: $LABEL"
    fi
}

_snapshot_maps() {
    PID="$1" LABEL="$2"
    MAPS=$(cat /proc/$PID/maps 2>/dev/null)
    [ -z "$MAPS" ] && return 1
    echo "$MAPS" > "$OUT/maps/${PID}_${LABEL}.txt"
    echo "$MAPS"
}

_process_maps() {
    PID="$1" LABEL="$2"
    MAPS=$(_snapshot_maps "$PID" "$LABEL")
    [ -z "$MAPS" ] && return

    _log "PID=$PID maps changed [$LABEL]"

    # global-metadata 즉시 덤프 + 바로 앞 rw 매핑(복호화 버퍼) 덤프
    echo "$MAPS" | grep -i "global.metadata" | while read LINE; do
        RANGE=$(echo "$LINE" | awk '{print $1}')
        PERMS=$(echo "$LINE" | awk '{print $2}')
        FOFF=$(echo "$LINE" | awk '{print $3}')
        S=$(echo "$RANGE" | cut -d'-' -f1)
        E=$(echo "$RANGE" | cut -d'-' -f2)
        _log "*** global-metadata MAPPED pid=$PID 0x$S-0x$E perms=$PERMS foff=$FOFF ***"
        _log "    full_line: $LINE"
        _dump_range "$PID" "$S" "$E" "global_metadata_${LABEL}"

        # global-metadata 바로 앞 rw 매핑 = 복호화 버퍼 (scudo:secondary 등)
        S_DEC=$(printf '%d' "0x${S}")
        PREV=$(echo "$MAPS" | awk -v end="$S_DEC" '
            {
                split($1, r, "-")
                se = strtonum("0x" r[2])
                if (se == end && $2 ~ /rw/) print $0
            }
        ')
        if [ -n "$PREV" ]; then
            PS=$(echo "$PREV" | awk '{split($1,r,"-"); print r[1]}')
            PE=$(echo "$PREV" | awk '{split($1,r,"-"); print r[2]}')
            _log "*** DECRYPT BUFFER (pre-meta rw) pid=$PID 0x$PS-0x$PE ***"
            _log "    full_line: $PREV"
            _dump_range "$PID" "$PS" "$PE" "decrypt_buf_${LABEL}"
        fi
    done

    # cawwyayy / liapp / libliapp 관련 SO 즉시 덤프
    echo "$MAPS" | grep -iE "cawwyayy|libliapp|liapp" | while read LINE; do
        RANGE=$(echo "$LINE" | awk '{print $1}')
        PERMS=$(echo "$LINE" | awk '{print $2}')
        NAME=$(echo "$LINE" | awk '{print $NF}')
        S=$(echo "$RANGE" | cut -d'-' -f1)
        E=$(echo "$RANGE" | cut -d'-' -f2)
        SLUG=$(echo "$NAME" | tr '/' '_' | tr -d ' ')
        _log "  SO[$PERMS] $NAME 0x$S-0x$E"
        case "$PERMS" in
        r-xp|r--p)
            _dump_range "$PID" "$S" "$E" "so_${SLUG}_${LABEL}"
            ;;
        esac
    done

    # scudo:secondary 매핑 덤프 (LIAPP 대형 malloc 버퍼 = 복호화 버퍼 후보)
    echo "$MAPS" | grep "anon:scudo:secondary" | while read LINE; do
        RANGE=$(echo "$LINE" | awk '{print $1}')
        S=$(echo "$RANGE" | cut -d'-' -f1)
        E=$(echo "$RANGE" | cut -d'-' -f2)
        S_DEC=$(printf '%d' "0x${S}")
        E_DEC=$(printf '%d' "0x${E}")
        SZ=$(( E_DEC - S_DEC ))
        if [ "$SZ" -gt 10485760 ]; then
            _log "  SCUDO_SEC pid=$PID 0x$S-0x$E size=$SZ"
            _dump_range "$PID" "$S" "$E" "scudo_sec_${S}_${LABEL}"
        fi
    done

    # 전체 anonymous rw 영역 (파일명 없는 rw-p, 1MB~64MB)
    echo "$MAPS" | grep " rw-p 00000000 00:00 0 $" | while read LINE; do
        RANGE=$(echo "$LINE" | awk '{print $1}')
        S_HEX=$(echo "$RANGE" | cut -d'-' -f1)
        E_HEX=$(echo "$RANGE" | cut -d'-' -f2)
        S_DEC=$(printf '%d' "0x${S_HEX}")
        E_DEC=$(printf '%d' "0x${E_HEX}")
        SIZE=$(( E_DEC - S_DEC ))
        if [ "$SIZE" -gt 1048576 ] && [ "$SIZE" -lt 67108864 ]; then
            _log "  ANON-RW $S_HEX-$E_HEX size=$SIZE"
            _dump_range "$PID" "$S_HEX" "$E_HEX" "anon_rw_${S_HEX}_${LABEL}"
        fi
    done
}

_watch_fd() {
    PID="$1"
    TS="$2"
    ls -la /proc/$PID/fd/ 2>/dev/null | while read FDLINE; do
        LINK=$(echo "$FDLINE" | awk '{print $NF}')
        echo "$FDLINE" >> "$OUT/fd/${PID}_${TS}.txt"
    done
    # readlink로 실제 경로
    ls /proc/$PID/fd/ 2>/dev/null | while read FD; do
        TARGET=$(readlink /proc/$PID/fd/$FD 2>/dev/null)
        echo "fd$FD -> $TARGET" >> "$OUT/fd/${PID}_${TS}.txt"
    done
}

# ══════════════════════════════════════════════════
# 파일시스템 감시 백그라운드 워커
# ══════════════════════════════════════════════════
_fs_worker() {
    find "$PKG_DATA" -type f 2>/dev/null | sort > "$OUT/files/snap_init.txt"
    _log "[FS] initial snapshot: $(wc -l < "$OUT/files/snap_init.txt") files"

    while true; do
        CURR_LIST=$(find "$PKG_DATA" -type f 2>/dev/null | sort)
        TMP_C="/sdcard/.evd_tmp_$$"
        echo "$CURR_LIST" > "$TMP_C"
        NEW=$(comm -23 "$TMP_C" "$OUT/files/snap_init.txt" 2>/dev/null)
        rm -f "$TMP_C"
        if [ -n "$NEW" ]; then
            TS=$(date '+%H%M%S_%3N')
            echo "$NEW" | while read F; do
                _log "[FS] NEW FILE: $F"
                FNAME=$(basename "$F")
                cp -f "$F" "$OUT/files/${TS}_${FNAME}" 2>/dev/null
                SZ=$(ls -la "$OUT/files/${TS}_${FNAME}" 2>/dev/null | awk '{print $5}')
                _log "[FS]   copied ${TS}_${FNAME} ($SZ bytes)"
            done
            echo "$CURR_LIST" > "$OUT/files/snap_init.txt"
        fi
        usleep $POLL_US
    done
}

# ══════════════════════════════════════════════════
# PID 감시 백그라운드 워커 (PID 하나당 하나 실행)
# ══════════════════════════════════════════════════
_pid_worker() {
    PID="$1"
    _log "[PID $PID] worker start"

    # 초기 스냅샷
    _process_maps "$PID" "t00_init"
    _watch_fd "$PID" "t00_init"

    PREV_HASH=$(md5sum /proc/$PID/maps 2>/dev/null | cut -d' ' -f1)
    PREV_FD_CNT=$(ls /proc/$PID/fd/ 2>/dev/null | wc -l)
    ITER=0

    while [ -d "/proc/$PID" ]; do
        ITER=$(( ITER + 1 ))
        TS=$(printf 't%05d' $ITER)

        CURR_HASH=$(md5sum /proc/$PID/maps 2>/dev/null | cut -d' ' -f1)
        if [ "$CURR_HASH" != "$PREV_HASH" ]; then
            _process_maps "$PID" "$TS"
            PREV_HASH="$CURR_HASH"
        fi

        CURR_FD_CNT=$(ls /proc/$PID/fd/ 2>/dev/null | wc -l)
        if [ "$CURR_FD_CNT" != "$PREV_FD_CNT" ]; then
            _watch_fd "$PID" "$TS"
            PREV_FD_CNT="$CURR_FD_CNT"
        fi

        usleep $POLL_US
    done

    _log "[PID $PID] process dead (iter=$ITER)"
}

# ══════════════════════════════════════════════════
# 서브프로세스 추적 워커
# ══════════════════════════════════════════════════
_subproc_tracker() {
    KNOWN_PIDS="$1"

    while true; do
        ALL=$(ps -A 2>/dev/null | awk "/$PKG/{print \$2}" | tr '\n' ' ')
        for NPID in $ALL; do
            case " $KNOWN_PIDS " in
            *" $NPID "*) ;;
            *)
                _log "[TRACKER] NEW PID=$NPID (known=$KNOWN_PIDS)"
                KNOWN_PIDS="$KNOWN_PIDS $NPID"
                _pid_worker "$NPID" &
            ;;
            esac
        done

        ALIVE=""
        for P in $KNOWN_PIDS; do
            [ -d "/proc/$P" ] && ALIVE="$ALIVE $P"
        done
        KNOWN_PIDS="$ALIVE"
        [ -z "$KNOWN_PIDS" ] && _log "[TRACKER] all pids dead" && break

        usleep $POLL_US
    done
}

# ══════════════════════════════════════════════════
# 메인: 에버소울 PID 출현 대기
# ══════════════════════════════════════════════════
_log "=== everdump START (pkg=$PKG poll=${POLL_US}us) ==="
_log "output: $OUT"
_log "Waiting for $PKG to start..."

_fs_worker &
FS_PID=$!
_log "FS worker pid=$FS_PID"

INIT_PIDS=""
while [ -z "$INIT_PIDS" ]; do
    INIT_PIDS=$(ps -A 2>/dev/null | awk "/$PKG/{print \$2}" | tr '\n' ' ' | xargs)
    usleep $POLL_US
done

_log "=== PROCESS FOUND: [$INIT_PIDS] ==="

for PID in $INIT_PIDS; do
    _pid_worker "$PID" &
done

_subproc_tracker "$INIT_PIDS" &
TRACKER_PID=$!

# 프로세스 전체 종료 대기 (최대 60초)
WAIT=0
while [ $WAIT -lt 60000 ]; do
    ALIVE=$(ps -A 2>/dev/null | awk "/$PKG/{print \$2}" | tr '\n' ' ' | xargs)
    [ -z "$ALIVE" ] && break
    usleep 50000
    WAIT=$(( WAIT + 50 ))
done

kill $FS_PID 2>/dev/null
kill $TRACKER_PID 2>/dev/null
wait 2>/dev/null

_log "=== everdump DONE === output=$OUT"
ls -lh "$OUT/mem/" 2>/dev/null
ls -lh "$OUT/files/" 2>/dev/null
