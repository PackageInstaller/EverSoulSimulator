'use strict';

// ── i18n (_I 는 i18n.js 에서 로드) ───────────────────────────────────────────

let LANG = 'ko';

let _SERVER_STRINGS = {};

function t(key) {
  const srv = _SERVER_STRINGS[key];
  if (srv) return srv[LANG] || srv['en'] || key;
  const loc = _I[key];
  if (loc) return loc[LANG] || loc['en'] || key;
  return key;
}

async function loadStrings() {
  try {
    const r = await fetch('/web/api/i18n');
    _SERVER_STRINGS = await r.json();
  } catch (_) {}
  applyI18n();
}

function applyI18n() {
  document.querySelectorAll('[data-i18n]').forEach(el => {
    const k = el.getAttribute('data-i18n');
    if (k) el.textContent = t(k);
  });
  document.querySelectorAll('[data-i18n-placeholder]').forEach(el => {
    const k = el.getAttribute('data-i18n-placeholder');
    if (k) el.placeholder = t(k);
  });
  document.querySelectorAll('.lang-btn[id]').forEach(b => {
    b.classList.toggle('active', b.id === 'lbtn-' + LANG);
  });
}

function setLang(l) {
  LANG = l;
  fetch('/web/api/config', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ lang: l }),
  }).catch(() => {});
  applyI18n();
}

function selectLangAndStart(lang) {
  LANG = lang;
  fetch('/web/api/config', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ lang }),
  }).catch(() => {});
  applyI18n();
  const dlg = document.getElementById('lang-select-overlay');
  if (dlg) dlg.close();
  _bootAfterLang();
}

let _bootAfterLang = () => {};
let _portVerified  = false;

// ── helpers ───────────────────────────────────────────────────────────────────

function escHtml(s) {
  return String(s)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;');
}

// ── INTRO: terminal output helpers ───────────────────────────────────────────

function termPrint(msg, cls = '') {
  const out = document.getElementById('terminal-output');
  const div = document.createElement('div');
  div.className = 't-line';
  div.innerHTML =
    `<span class="t-prompt">▶</span>` +
    `<span class="t-msg${cls ? ' ' + cls : ''}">${escHtml(msg)}</span>`;
  out.appendChild(div);
  out.scrollTop = out.scrollHeight;
  return div;
}

function termPrintResult(msg, statusPct, badgeClass, badgeText) {
  const out = document.getElementById('terminal-output');
  const div = document.createElement('div');
  div.className = 't-line';
  div.innerHTML =
    `<span class="t-prompt">▶</span>` +
    `<span class="t-msg">${escHtml(msg)}</span>` +
    `<span class="t-right">` +
      `<span class="mini-bar"><span class="mini-bar-fill" style="width:${statusPct}%"></span></span>` +
      `<span class="badge ${badgeClass}">${badgeText}</span>` +
    `</span>`;
  out.appendChild(div);
  out.scrollTop = out.scrollHeight;
}

function termSetStatus(text) {
  document.getElementById('terminal-status-text').textContent = text;
}

function termSetProgress(pct) {
  document.getElementById('overall-bar-fill').style.width = pct + '%';
}

function sleep(ms) {
  return new Promise(r => setTimeout(r, ms));
}


// ── INTRO: port input section ────────────────────────────────────────────────

let _portSetDone = () => {};

function showPortInput() {
  document.getElementById('adb-port-input-section').classList.add('visible');
  document.getElementById('adb-port-input').focus();
}

function _printProbeResults(d) {
  if (!d || !d.connected) {
    termPrintResult(t('intro.probe_fail'), 0, 'badge-err', 'FAIL');
    return;
  }
  termPrintResult(
    d.eversoul ? t('intro.probe_eversoul_ok') : t('intro.probe_eversoul_fail'),
    d.eversoul ? 100 : 30, d.eversoul ? 'badge-ok' : 'badge-warn', d.eversoul ? 'OK' : 'WARN'
  );
  termPrintResult(
    d.rooted ? t('intro.probe_rooted') : t('intro.probe_not_rooted'),
    d.rooted ? 100 : 30, d.rooted ? 'badge-ok' : 'badge-warn', d.rooted ? 'OK' : 'WARN'
  );
  termPrintResult(
    d.adb_root ? t('intro.probe_adb_root') : t('intro.probe_no_adb_root'),
    d.adb_root ? 100 : 50, d.adb_root ? 'badge-ok' : 'badge-warn', d.adb_root ? 'OK' : 'WARN'
  );
}

async function probeDevice() {
  const portEl = document.getElementById('adb-port-input');
  const msg    = document.getElementById('adb-port-msg');
  const btn    = document.getElementById('btn-port-probe');
  const port   = portEl.value.trim();

  if (!port) { msg.textContent = t('intro.port_empty_err'); msg.className = 'err'; return; }

  btn.disabled = true;
  msg.textContent = t('intro.port_probing');
  msg.className = '';

  const target = '127.0.0.1:' + port;

  try {
    await fetch('/web/api/adb/port', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ port }),
    }).catch(() => {});

    const r = await fetch('/web/api/adb/probe', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ target }),
    });
    const d = await r.json();

    if (d.connected) {
      msg.textContent = '✓ ' + target;
      msg.className = 'ok';
      document.getElementById('adb-port-input-section').classList.remove('visible');
      _portSetDone(d);
    } else {
      msg.textContent = '✗ ' + t('intro.probe_fail');
      msg.className = 'err';
    }
  } catch (_) {
    msg.textContent = t('intro.server_conn_fail');
    msg.className = 'err';
  }
  btn.disabled = false;
}

// ── INTRO: pipeline ───────────────────────────────────────────────────────────

async function runIntro() {
  document.getElementById('intro').classList.remove('hidden');
  termSetProgress(0);
  termSetStatus(t('intro.status_init'));

  await sleep(400);

  termSetStatus(t('intro.status_init'));
  termSetProgress(5);
  await sleep(600);
  termPrintResult(t('intro.init_ok'), 100, 'badge-ok', 'OK');
  termSetProgress(15);

  termSetStatus(t('intro.status_server'));
  termPrint(t('intro.connecting_server'), 'dim');
  termSetProgress(20);
  try {
    const r = await fetch('/web/api/status');
    const d = await r.json();
    const mode = d.proxy_enabled ? t('intro.proxy_mode') : t('intro.offline_mode');
    termPrintResult(
      t('intro.server_ok').replace('{port}', d.port).replace('{mode}', mode),
      100, 'badge-ok', 'OK'
    );
  } catch (_) {
    termPrintResult(t('intro.server_fail'), 0, 'badge-err', 'FAIL');
  }
  termSetProgress(35);

  termSetStatus(t('intro.status_port'));
  termPrint(t('intro.loading_port'), 'dim');
  termSetProgress(58);

  let savedPort = '';
  try {
    const rp = await fetch('/web/api/adb/port');
    const dp = await rp.json();
    savedPort = dp.port || '';
  } catch (_) {}

  let probeResult = null;

  if (!savedPort) {
    termPrintResult(t('intro.port_need'), 0, 'badge-warn', 'NEED');
    termSetProgress(62);
    termSetStatus(t('intro.status_port_input'));
    probeResult = await new Promise(resolve => {
      _portSetDone = resolve;
      showPortInput();
    });
    _portSetDone = () => {};
    termPrintResult(t('intro.port_saved').replace('{port}', document.getElementById('adb-port-input').value.trim()), 100, 'badge-ok', 'OK');
  } else {
    termPrintResult(t('intro.port_loaded').replace('{port}', savedPort), 100, 'badge-ok', 'OK');
    termSetProgress(62);
    termSetStatus(t('intro.status_probe'));
    termPrint(t('intro.probe_connecting').replace('{target}', '127.0.0.1:' + savedPort), 'dim');
    try {
      const rr = await fetch('/web/api/adb/probe', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ target: '127.0.0.1:' + savedPort }),
      });
      probeResult = await rr.json();
    } catch (_) {}
  }

  _printProbeResults(probeResult);
  if (probeResult && probeResult.connected) _portVerified = true;
  termSetProgress(72);

  termSetStatus(t('intro.status_device'));
  termPrint(t('intro.scanning_devices'), 'dim');
  termSetProgress(78);
  try {
    const r = await fetch('/web/api/injector/devices');
    const d = await r.json();
    if (d.devices && d.devices.length > 0) {
      termPrintResult(t('intro.device_found').replace('{serial}', d.devices[0]), 100, 'badge-ok', 'OK');
    } else {
      termPrintResult(t('intro.device_none'), 50, 'badge-warn', 'WARN');
    }
  } catch (_) {
    termPrintResult(t('intro.device_fail'), 0, 'badge-err', 'FAIL');
  }
  termSetProgress(88);

  await sleep(300);
  termSetProgress(100);
  termSetStatus(t('intro.status_ready'));
  termPrintResult(t('intro.ready_banner'), 100, 'badge-ok', 'READY');

  fetch('/web/api/setup/complete', { method: 'POST' }).catch(() => {});

  await sleep(400);
  document.getElementById('btn-enter').classList.add('visible');
  termSetStatus(t('intro.enter_hint'));
}

function enterMain() {
  document.getElementById('intro').classList.add('hidden');
  document.getElementById('app').classList.add('visible');
  initMain();
}

// ── MAIN: navigation ──────────────────────────────────────────────────────────

document.querySelectorAll('.nav-item').forEach(item => {
  item.addEventListener('click', () => {
    document.querySelectorAll('.nav-item').forEach(n => n.classList.remove('active'));
    document.querySelectorAll('.page').forEach(p => p.classList.remove('active'));
    item.classList.add('active');
    const pg = 'page-' + item.getAttribute('data-page');
    document.getElementById(pg).classList.add('active');
    document.getElementById('topbar-title').textContent =
      item.querySelector('[data-i18n]')?.textContent || '';
    const page = item.getAttribute('data-page');
    if (page === 'db')       loadDbTables();
    if (page === 'fixtures') loadFixtures();
    if (page === 'health')   loadHealth();
    if (page === 'settings') { loadSettings(); }
    if (page === 'injector') { loadInjectorDevices(); pollInjectorStatus(); }
    if (page === 'gamedata') loadGameData();
    if (page === 'accounts') loadAdminAccounts();
    if (page === 'files')    listFiles('responses/');
  });
});

// ── MAIN: status poll ─────────────────────────────────────────────────────────

let _startTime  = null;
let _uptimeIv   = null;
let _reqHistory = [];
let _lastReqCount = 0;

function _updateReqChart(total) {
  const delta = Math.max(0, total - _lastReqCount);
  _lastReqCount = total;
  _reqHistory.push(delta);
  if (_reqHistory.length > 40) _reqHistory.shift();
  const svg  = document.getElementById('req-chart');
  if (!svg) return;
  const W = 400, H = 48;
  const n = _reqHistory.length;
  const max = Math.max(1, ..._reqHistory);
  const bw  = Math.floor(W / 40) - 1;
  let html = '';
  _reqHistory.forEach((v, i) => {
    const x = Math.floor(i * (W / 40));
    const h = Math.max(2, Math.round((v / max) * (H - 4)));
    const y = H - h;
    const alpha = 0.35 + 0.65 * (i / (n - 1 || 1));
    html += `<rect x="${x}" y="${y}" width="${bw}" height="${h}" fill="rgba(0,212,255,${alpha.toFixed(2)})"/>`;
  });
  svg.innerHTML = html;
}

async function pollStatus() {
  try {
    const r = await fetch('/web/api/status');
    const d = await r.json();
    document.getElementById('s-port').textContent  = d.port || '–';
    document.getElementById('s-reqs').textContent  = d.request_count || '0';
    document.getElementById('s-fix').textContent   = d.fixture_count || '0';
    document.getElementById('s-fix-err').textContent = d.fixture_errors > 0 ? d.fixture_errors + ' errors' : '';
    document.getElementById('s-db').textContent    = d.db_tables || '–';
    document.getElementById('s-db-path').textContent = d.db_path || '';
    document.getElementById('s-lang').textContent  = d.lang || '–';
    document.getElementById('s-mode').textContent  = d.proxy_enabled ? 'proxy' : 'offline';
    document.getElementById('srv-dot').className   = 'srv-dot';
    document.getElementById('srv-label').textContent = t('status.online');
    if (!_startTime && d.started_at) { _startTime = d.started_at; startUptimeTick(); }
    _updateReqChart(d.request_count || 0);
  } catch (_) {
    document.getElementById('srv-dot').className = 'srv-dot fail';
    document.getElementById('srv-label').textContent = t('status.offline');
  }
  pollGameSummary();
}

async function pollGameSummary() {
  try {
    const r = await fetch('/web/api/gamedata/summary');
    const d = await r.json();
    const fmt = n => n >= 1000000 ? (n / 1000000).toFixed(1) + 'M' :
                     n >= 1000    ? (n / 1000).toFixed(1) + 'K' : String(n);
    document.getElementById('s-gold').textContent    = fmt(d.gold    ?? 0);
    document.getElementById('s-crystal').textContent = fmt(d.crystal ?? 0);
    document.getElementById('s-heroes').textContent  = String(d.hero_count ?? '–');
  } catch (_) {}
}

function startUptimeTick() {
  if (_uptimeIv) clearInterval(_uptimeIv);
  _uptimeIv = setInterval(() => {
    const sec = Math.floor(Date.now() / 1000 - _startTime);
    const h = Math.floor(sec / 3600), m = Math.floor((sec % 3600) / 60), s = sec % 60;
    const txt = h > 0 ? `${h}h ${m}m` : `${m}m ${s}s`;
    document.getElementById('s-uptime').textContent  = txt;
    document.getElementById('s-started').textContent = new Date(_startTime * 1000).toLocaleTimeString();
    document.getElementById('uptime-display').textContent = h > 0 ? `${h}h ${m}m ${s}s` : `${m}m ${s}s`;
  }, 1000);
}

// ── MAIN: SSE log ─────────────────────────────────────────────────────────────

let logPaused   = false;
let logFilter   = '';
let _logChannel = 'server';
const MAX_LOG   = 1000;

function tagClass(tag) { return 'tag-' + tag.replace(/[^A-Z0-9_]/gi, ''); }

function _activeLogPanel() {
  return document.getElementById(_logChannel === 'adb' ? 'log-panel-adb' : 'log-panel-server');
}

function _serverLogRowCls(tag) {
  if (tag === 'ERROR')                    return 'log-row-error';
  if (tag === 'WARN')                     return 'log-row-warn';
  if (tag === 'REQUEST')                  return 'log-row-req';
  if (tag === 'WS')                       return 'log-row-ws';
  if (tag === 'START' || tag === 'STOP')  return 'log-row-ok';
  return '';
}

function appendServerLogLine(entry, panel) {
  const div = document.createElement('div');
  const tag = entry.tag || '';
  const rowCls = _serverLogRowCls(tag);
  div.className = 'log-line' + (rowCls ? ' ' + rowCls : '');
  const ts  = entry.timestamp || '';
  const txt = entry.text || '';
  div.innerHTML =
    `<span class="log-ts">${escHtml(ts.slice(11, 19) || ts)}</span>` +
    `<span class="log-id">#${entry.id ?? ''}</span>` +
    `<span class="log-tag ${tagClass(tag)}">[${escHtml(tag)}]</span>` +
    `<span class="log-text">${escHtml(txt)}</span>`;
  if (logFilter && !txt.toLowerCase().includes(logFilter) && !tag.toLowerCase().includes(logFilter))
    div.classList.add('filtered');
  panel.appendChild(div);
  while (panel.children.length > MAX_LOG) panel.removeChild(panel.firstChild);
  return div;
}

function _adbLogCls(txt) {
  const lvl = txt.match(/^\S+\s+\S+\s+\d+\s+\d+\s+([VDIWEF])\s/)?.[1];
  const rowMap = { E: 'adb-row-err', W: 'adb-row-warn', F: 'adb-row-fatal' };
  const txtMap = { E: 'adb-lvl-e', W: 'adb-lvl-w', I: 'adb-lvl-i', D: 'adb-lvl-d', V: 'adb-lvl-v', F: 'adb-lvl-f' };
  return { row: rowMap[lvl] || '', txt: txtMap[lvl] || 'adb-lvl-d' };
}

function appendAdbLogLine(entry, panel) {
  const div = document.createElement('div');
  const ts  = entry.timestamp || '';
  const txt = entry.text || '';
  const cls = _adbLogCls(txt);
  div.className = 'log-line' + (cls.row ? ' ' + cls.row : '');
  div.innerHTML =
    `<span class="log-ts">${escHtml(ts.slice(11, 19) || ts)}</span>` +
    `<span class="log-text ${cls.txt}">${escHtml(txt)}</span>`;
  if (logFilter && !txt.toLowerCase().includes(logFilter))
    div.classList.add('filtered');
  panel.appendChild(div);
  while (panel.children.length > MAX_LOG) panel.removeChild(panel.firstChild);
  return div;
}

function switchLogChannel(ch) {
  _logChannel = ch;
  document.getElementById('log-chtab-server').classList.toggle('active', ch === 'server');
  document.getElementById('log-chtab-adb').classList.toggle('active',    ch === 'adb');
  document.getElementById('log-panel-server').classList.toggle('log-panel-off', ch !== 'server');
  document.getElementById('log-panel-adb').classList.toggle('log-panel-off',    ch !== 'adb');
}

function initSSEServer() {
  const src   = new EventSource('/web/api/logs/server/stream');
  const panel = document.getElementById('log-panel-server');
  const dash  = document.getElementById('dash-log');
  src.onmessage = e => {
    const entry = JSON.parse(e.data);
    if (!logPaused) {
      appendServerLogLine(entry, panel);
      panel.scrollTop = panel.scrollHeight;
    }
    appendServerLogLine(entry, dash);
    dash.scrollTop = dash.scrollHeight;
    while (dash.children.length > 80) dash.removeChild(dash.firstChild);
  };
  src.onerror = () => { setTimeout(initSSEServer, 3000); src.close(); };
}

function initSSEAdb() {
  const src   = new EventSource('/web/api/logs/adb/stream');
  const panel = document.getElementById('log-panel-adb');
  src.onmessage = e => {
    const entry = JSON.parse(e.data);
    if (!logPaused) {
      appendAdbLogLine(entry, panel);
      panel.scrollTop = panel.scrollHeight;
    }
    if (entry.text && (entry.text.startsWith('$') || entry.text.startsWith('adb'))) {
      const inj = document.getElementById('injector-log');
      if (inj) { appendAdbLogLine(entry, inj); inj.scrollTop = inj.scrollHeight; }
    }
  };
  src.onerror = () => { setTimeout(initSSEAdb, 3000); src.close(); };
}

async function loadRecentLogs() {
  try {
    const [rs, ra] = await Promise.all([
      fetch('/web/api/logs/server/recent?n=200'),
      fetch('/web/api/logs/adb/recent?n=200'),
    ]);
    const serverLogs = await rs.json();
    const adbLogs    = await ra.json();
    const panelS = document.getElementById('log-panel-server');
    const panelA = document.getElementById('log-panel-adb');
    const dash   = document.getElementById('dash-log');
    serverLogs.forEach(e => { appendServerLogLine(e, panelS); appendServerLogLine(e, dash); });
    adbLogs.forEach(e => appendAdbLogLine(e, panelA));
    panelS.scrollTop = panelS.scrollHeight;
    panelA.scrollTop = panelA.scrollHeight;
    dash.scrollTop   = dash.scrollHeight;
  } catch (_) {}
}

function toggleLogPause() {
  logPaused = !logPaused;
  const btn = document.getElementById('btn-pause');
  btn.textContent = logPaused ? 'Resume' : 'Pause';
  btn.classList.toggle('btn-pause-active', logPaused);
}

function clearLog() {
  _activeLogPanel().innerHTML = '';
  if (_logChannel === 'adb')
    fetch('/web/api/logs/adb/clear', { method: 'POST' }).catch(() => {});
  else
    fetch('/web/api/logs/clear', { method: 'POST' }).catch(() => {});
}

function filterLog(v) {
  logFilter = v.toLowerCase();
  _activeLogPanel().querySelectorAll('.log-line').forEach(el => {
    const txt = el.querySelector('.log-text')?.textContent.toLowerCase() || '';
    const tag = el.querySelector('.log-tag')?.textContent.toLowerCase()  || '';
    el.classList.toggle('filtered', !!logFilter && !txt.includes(logFilter) && !tag.includes(logFilter));
  });
}

// ── MAIN: health ──────────────────────────────────────────────────────────────

async function loadHealth() {
  const grid = document.getElementById('health-grid');
  grid.innerHTML = '';
  try {
    const r      = await fetch('/web/api/health');
    const checks = await r.json();
    checks.forEach(c => {
      const statCls  = c.status === 'ok' ? 'ok' : c.status === 'warn' ? 'warn' : 'fail';
      const badgeCls = c.status === 'ok' ? 'badge-ok' : c.status === 'warn' ? 'badge-warn' : 'badge-fail';
      const label    = c.status === 'ok' ? 'OK' : c.status === 'warn' ? 'WARN' : 'FAIL';
      const card = document.createElement('div');
      card.className = `health-card ${statCls}`;
      card.innerHTML =
        `<span class="health-card-badge ${badgeCls}">${label}</span>` +
        `<div class="health-card-name">${escHtml(c.name)}</div>` +
        (c.detail ? `<div class="health-card-detail">${escHtml(c.detail)}</div>` : '');
      grid.appendChild(card);
    });
  } catch (_) {
    grid.innerHTML = `<div class="list-msg err">${t('admin.health_load_fail')}</div>`;
  }
}

// ── MAIN: DB Manager ──────────────────────────────────────────────────────────

let _dbTable     = null;
let _dbAllRows   = [];
let _dbFiltered  = [];
let _dbPage      = 0;
const _DB_PAGE_SIZE = 100;
let _dbSortCol   = null;
let _dbSortAsc   = true;
let _dbActiveTab = 'data';

async function loadDbTables() {
  try {
    const r      = await fetch('/web/api/db/tables');
    const tables = await r.json();
    const list   = document.getElementById('table-list');
    list.innerHTML = '';
    tables.forEach(t2 => {
      const item = document.createElement('div');
      item.className = 'db-table-item' + (_dbTable === t2.name ? ' active' : '');
      item.innerHTML =
        `<span>${escHtml(t2.name)}</span>` +
        `<span class="db-table-rows">${t2.rows}</span>`;
      item.onclick = () => loadTableData(t2.name);
      list.appendChild(item);
    });
  } catch (_) {}
}

function switchDbTab(tab) {
  _dbActiveTab = tab;
  document.getElementById('db-tab-data').classList.toggle('active',   tab === 'data');
  document.getElementById('db-tab-schema').classList.toggle('active', tab === 'schema');
  document.getElementById('db-table-wrap').style.display   = tab === 'data'   ? 'flex' : 'none';
  document.getElementById('db-schema-wrap').style.display  = tab === 'schema' ? 'flex' : 'none';
  if (tab === 'schema' && _dbTable) loadDbSchema(_dbTable);
}

async function loadTableData(name) {
  _dbTable  = name;
  _dbPage   = 0;
  _dbSortCol = null;
  document.querySelectorAll('.db-table-item').forEach(el =>
    el.classList.toggle('active', el.querySelector('span')?.textContent === name));
  if (_dbActiveTab !== 'data') switchDbTab('data');
  const wrap = document.getElementById('db-table-wrap');
  wrap.innerHTML = '<div class="db-empty-msg">Loading…</div>';
  try {
    const r = await fetch('/web/api/db/table/' + encodeURIComponent(name) + '?limit=5000');
    const d = await r.json();
    _dbAllRows = d.rows || [];
    _dbFiltered = _dbAllRows;
    document.getElementById('db-search').value = '';
    _renderDbTable(d.columns || [], false);
  } catch (_) { wrap.innerHTML = `<div class="db-empty-msg text-col-red">${t('admin.load_fail')}</div>`; }
}

function _renderDbTable(cols, keepCols) {
  if (!keepCols) _renderDbTable._cols = cols;
  const columns = _renderDbTable._cols || cols;
  const wrap    = document.getElementById('db-table-wrap');
  const total   = _dbFiltered.length;
  const start   = _dbPage * _DB_PAGE_SIZE;
  const slice   = _dbFiltered.slice(start, start + _DB_PAGE_SIZE);

  document.getElementById('db-page-info').textContent =
    total === 0 ? '–' : `${start + 1}–${Math.min(start + _DB_PAGE_SIZE, total)} / ${total}`;
  document.getElementById('db-row-total').textContent =
    _dbAllRows.length !== _dbFiltered.length ? `${_dbFiltered.length} of ${_dbAllRows.length} rows` : `${_dbAllRows.length} rows`;

  if (total === 0) {
    wrap.innerHTML = '<div class="db-empty-msg">No rows found.</div>';
    return;
  }
  let html = '<table><thead><tr>';
  columns.forEach(c => {
    const dir = _dbSortCol === c ? (_dbSortAsc ? ' db-sort-asc' : ' db-sort-desc') : '';
    html += `<th class="${dir}" onclick="dbSortBy('${escHtml(c)}')">${escHtml(c)}</th>`;
  });
  html += '</tr></thead><tbody>';
  slice.forEach(row => {
    html += '<tr>';
    columns.forEach(col => {
      const v = row[col];
      html += (v === null || v === undefined)
        ? '<td class="null">NULL</td>'
        : `<td title="${escHtml(String(v))}">${escHtml(String(v))}</td>`;
    });
    html += '</tr>';
  });
  html += '</tbody></table>';
  wrap.innerHTML = html;
}

function dbSearch(v) {
  const q = v.toLowerCase();
  _dbFiltered = q
    ? _dbAllRows.filter(row =>
        Object.values(row).some(val => val !== null && String(val).toLowerCase().includes(q)))
    : _dbAllRows;
  _dbPage = 0;
  _renderDbTable([], true);
}

function dbSortBy(col) {
  if (_dbSortCol === col) _dbSortAsc = !_dbSortAsc;
  else { _dbSortCol = col; _dbSortAsc = true; }
  const asc = _dbSortAsc;
  _dbFiltered = [..._dbFiltered].sort((a, b) => {
    const va = a[col], vb = b[col];
    if (va === null || va === undefined) return 1;
    if (vb === null || vb === undefined) return -1;
    return (va < vb ? -1 : va > vb ? 1 : 0) * (asc ? 1 : -1);
  });
  _dbPage = 0;
  _renderDbTable([], true);
}

function dbPrevPage() {
  if (_dbPage > 0) { _dbPage--; _renderDbTable([], true); }
}
function dbNextPage() {
  if ((_dbPage + 1) * _DB_PAGE_SIZE < _dbFiltered.length) { _dbPage++; _renderDbTable([], true); }
}

async function loadDbSchema(name) {
  const schemaWrap = document.getElementById('db-schema-wrap');
  const colsEl     = document.getElementById('db-schema-cols');
  const ddlEl      = document.getElementById('db-ddl');
  colsEl.innerHTML = `<div class="text-col-dim">${t('admin.loading')}</div>`;
  ddlEl.textContent = '';
  try {
    const r = await fetch('/web/api/db/schema/' + encodeURIComponent(name));
    const d = await r.json();
    colsEl.innerHTML = '';
    (d.columns || []).forEach(c => {
      const pk = c.pk  ? `<span class="db-col-pk">PK</span>` : '';
      const nn = !c.notnull ? '' : `<span class="db-col-nn">NOT NULL</span>`;
      colsEl.innerHTML +=
        `<div class="db-col-card">` +
        `<div class="db-col-name">${escHtml(c.name)}${pk}${nn}</div>` +
        `<div class="db-col-type">${escHtml(c.type || 'TEXT')}</div>` +
        `</div>`;
    });
    ddlEl.textContent = d.ddl || '';
  } catch (_) {
    colsEl.innerHTML = `<div class="text-col-red">${t('admin.server_error')}</div>`;
  }
}

// ── MAIN: fixtures ────────────────────────────────────────────────────────────

async function loadFixtures() {
  try {
    const r    = await fetch('/web/api/fixtures');
    const list = await r.json();
    const el   = document.getElementById('fixture-list');
    el.innerHTML = '';
    list.forEach(f => {
      const d = document.createElement('div');
      d.className = 'fixture-item';
      d.innerHTML =
        `<div class="fixture-path">${escHtml(f.path)}</div>` +
        `<div class="fixture-size">${f.bytes} bytes</div>`;
      d.onclick = () => loadFixture(f.path);
      el.appendChild(d);
    });
    document.getElementById('fixture-detail').classList.remove('open');
  } catch (_) {}
}

async function loadFixture(path) {
  document.querySelectorAll('.fixture-item').forEach(i => {
    i.style.borderColor = i.querySelector('.fixture-path').textContent === path ? 'var(--color-accent)' : '';
  });
  document.getElementById('fixture-detail-title').textContent = path;
  document.getElementById('fixture-detail').classList.add('open');
  document.getElementById('fixture-content').textContent = t('admin.loading');
  try {
    const r = await fetch('/web/api/fixtures/' + path.split('/').map(s => encodeURIComponent(s)).join('/'));
    document.getElementById('fixture-content').textContent = await r.text();
  } catch (_) {
    document.getElementById('fixture-content').textContent = t('admin.server_error');
  }
}

// ── MAIN: settings ────────────────────────────────────────────────────────────

async function loadSettings() {
  try {
    const [rs, rp] = await Promise.all([
      fetch('/web/api/status'),
      fetch('/web/api/adb/port'),
    ]);
    const d  = await rs.json();
    const dp = await rp.json();
    document.getElementById('toggle-proxy').checked  = !!d.proxy_enabled;
    document.getElementById('set-game-url').value    = d.game_server_url || '';
    document.getElementById('set-data-dir').value    = d.data_dir || '';
    document.getElementById('set-adb-port').value    = dp.port || '';
  } catch (_) {}
}

async function applyProxy(v) {
  await fetch('/web/api/config', {
    method: 'POST', headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ proxy_enabled: v }),
  }).catch(() => {});
  pollStatus();
}

async function applySettings() {
  const adbPort = document.getElementById('set-adb-port').value.trim();
  await Promise.all([
    fetch('/web/api/config', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ game_server_url: document.getElementById('set-game-url').value }),
    }).catch(() => {}),
    adbPort ? fetch('/web/api/adb/port', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ port: adbPort }),
    }).catch(() => {}) : Promise.resolve(),
  ]);
  pollStatus();
}

// ── MAIN: game start button ───────────────────────────────────────────────────

async function startGame() {
  const btn = document.getElementById('btn-game-start');
  const sts = document.getElementById('game-start-status');
  if (btn.disabled) return;

  btn.disabled = true;
  sts.className = 'running';
  sts.textContent = t('admin.game_start_running');

  try {
    const r = await fetch('/web/api/injector/run', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({}),
    });
    const d = await r.json();
    if (d.ok) {
      sts.className = 'ok';
      sts.textContent = t('admin.game_start_game_on');
      setTimeout(pollInjectorStatus, 2000);
    } else {
      sts.className = 'err';
      sts.textContent = d.reason || t('admin.server_error');
      btn.disabled = false;
    }
  } catch (_) {
    sts.className = 'err';
    sts.textContent = t('intro.server_conn_fail');
    btn.disabled = false;
  }
}

// ── MAIN: injector ────────────────────────────────────────────────────────────

let selectedSerial = '';

async function connectAdbDevice() {
  const input  = document.getElementById('adb-connect-input');
  const status = document.getElementById('adb-connect-status');
  const btn    = document.getElementById('btn-adb-connect');
  const target = input.value.trim();
  if (!target) return;
  btn.disabled = true;
  status.textContent = t('admin.connecting');
  status.className = 'text-col-dim';
  try {
    const r = await fetch('/web/api/injector/connect', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ target }),
    });
    const d = await r.json();
    status.textContent = d.output ? d.output.trim() : (d.ok ? t('admin.connected') : t('admin.failed'));
    status.className = d.ok ? 'text-col-green' : 'text-col-red';
    if (d.ok) await loadInjectorDevices();
  } catch (_) {
    status.textContent = t('admin.server_error');
    status.className = 'text-col-red';
  }
  btn.disabled = false;
}

async function loadInjectorDevices() {
  const el = document.getElementById('injector-device-list');
  el.innerHTML = `<span class="text-col-dim">${t('admin.injector_scanning')}</span>`;
  try {
    const r = await fetch('/web/api/injector/devices');
    const d = await r.json();
    if (!d.devices || d.devices.length === 0) {
      el.innerHTML = `<span class="text-col-dim">${t('admin.injector_no_devices')}</span>`;
      return;
    }
    el.innerHTML = d.devices.map(s => {
      const sel = s === selectedSerial;
      return `<div class="device-chip${sel ? ' selected' : ''}" onclick="selectSerial('${escHtml(s)}')">` +
        `<span>${escHtml(s)}</span>` +
        `<span class="injector-chip-icon${sel ? ' sel' : ''}">◈</span></div>`;
    }).join('');
    await loadInjectorCheck();
  } catch (_) {
    el.innerHTML = `<span class="text-col-red">${t('admin.server_error')}</span>`;
  }
}

function selectSerial(s) {
  selectedSerial = selectedSerial === s ? '' : s;
  loadInjectorDevices();
}

async function loadInjectorCheck() {
  const el = document.getElementById('injector-check-result');
  try {
    const url = '/web/api/injector/check' + (selectedSerial ? '?serial=' + encodeURIComponent(selectedSerial) : '');
    const r   = await fetch(url);
    const d   = await r.json();
    const ok  = v => `<span class="${v ? 'text-col-green' : 'text-col-red'}">${v ? '✓' : '✗'}</span>`;
    el.innerHTML =
      `${ok(d.adb_ok)} ADB: <span class="check-lbl-dim">${escHtml(d.adb)}</span><br>` +
      `${ok(!!d.serial)} Device: <span class="text-col-accent">${escHtml(d.serial || 'none')}</span><br>` +
      `${ok(d.eversoul)} com.kakaogames.eversoul`;
  } catch (_) { el.innerHTML = ''; }
}

async function runInjector() {
  const btn = document.getElementById('btn-inject');
  btn.disabled = true;
  document.getElementById('injector-status-text').textContent = t('admin.running');
  try {
    const body = selectedSerial ? { serial: selectedSerial } : {};
    const r    = await fetch('/web/api/injector/run', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
    });
    const d = await r.json();
    document.getElementById('injector-status-text').textContent = d.ok ? t('admin.running') : (d.reason || t('admin.server_error'));
    if (d.ok) setTimeout(pollInjectorStatus, 2000);
  } catch (_) {
    document.getElementById('injector-status-text').textContent = t('admin.server_error');
  }
  btn.disabled = false;
}

async function stopInjector() {
  await fetch('/web/api/injector/stop', { method: 'POST' }).catch(() => {});
  document.getElementById('injector-status-text').textContent = t('admin.stopped');
  document.getElementById('btn-game-start').disabled = false;
  document.getElementById('game-start-status').textContent = '';
  document.getElementById('game-start-status').className = '';
}

async function pollInjectorStatus() {
  try {
    const r = await fetch('/web/api/injector/status');
    const d = await r.json();
    const el = document.getElementById('injector-status-text');
    if (el) el.textContent = d.running ? t('admin.running') : t('admin.idle');
    if (d.running) setTimeout(pollInjectorStatus, 2000);
    else {
      const gs = document.getElementById('btn-game-start');
      if (gs && gs.disabled) {
        gs.disabled = false;
        const sts = document.getElementById('game-start-status');
        sts.className = '';
        sts.textContent = '';
      }
    }
  } catch (_) {}
}

async function sendAdbCmd() {
  const input = document.getElementById('adb-cmd-input');
  const log   = document.getElementById('injector-log');
  const cmd   = input.value.trim();
  if (!cmd) return;
  input.value = '';
  try {
    const r = await fetch('/web/api/injector/adb', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ cmd }),
    });
    const d = await r.json();
    if (log && d.output !== undefined) {
      const div = document.createElement('div');
      div.className = 'log-line';
      div.innerHTML =
        `<span class="log-tag tag-ADB">[ADB]</span>` +
        `<span class="log-text">${escHtml(d.output.trim())}</span>`;
      log.appendChild(div);
      log.scrollTop = log.scrollHeight;
    }
  } catch (_) {}
}

// ── MAIN: game data editor ────────────────────────────────────────────────────

let _gdSection = 'userinfo';
let _gdData    = {};

const _GD_SCHEMA = {
  userinfo: [
    { key: 'nickname', label: 'Nickname', type: 'text' },
    { key: 'level',    label: 'Level',    type: 'readonly' },
    { key: 'gold',     label: 'Gold',     type: 'readonly' },
    { key: 'crystal',  label: 'Crystal',  type: 'readonly' },
  ],
  settings: [
    { key: 'proxy_enabled',   label: 'Proxy Enabled',    type: 'checkbox' },
    { key: 'game_server_url', label: 'Game Server URL',  type: 'text' },
  ],
};

async function loadGameData() {
  const form = document.getElementById('gamedata-form');
  form.innerHTML = `<div class="list-msg">${t('admin.loading')}</div>`;
  try {
    const r = await fetch('/web/api/gamedata/' + _gdSection);
    _gdData = await r.json();
  } catch (_) { _gdData = {}; }
  _renderGameDataForm();
}

function switchGameData(section) {
  _gdSection = section;
  document.querySelectorAll('.gamedata-nav-item').forEach(el =>
    el.classList.toggle('active', el.textContent.toLowerCase().replace(/\s+/g, '') === section));
  loadGameData();
}

function _renderGameDataForm() {
  const form = document.getElementById('gamedata-form');
  form.innerHTML = '';

  if (_gdSection === 'currencies') {
    const rows = Array.isArray(_gdData) ? _gdData : [];
    if (!rows.length) {
      form.innerHTML = `<div class="list-msg">${t('admin.gamedata_no_currency')}</div>`;
      return;
    }
    form.style.gridTemplateColumns = '1fr 1fr';
    rows.forEach(c => {
      const typeClass = c.type === 1 ? 'type-gold' : c.type === 2 ? 'type-gem' : '';
      form.innerHTML +=
        `<div class="gamedata-field">` +
        `<label class="gamedata-label">Type ${c.type}</label>` +
        `<div class="gd-currency-val${typeClass ? ' ' + typeClass : ''}">` +
        `${Number(c.value).toLocaleString()}</div></div>`;
    });
    return;
  }

  if (_gdSection === 'heroes') {
    const rows = Array.isArray(_gdData) ? _gdData : [];
    if (!rows.length) {
      form.innerHTML = `<div class="list-msg">${t('admin.gamedata_no_heroes')}</div>`;
      return;
    }
    form.style.gridTemplateColumns = '1fr 1fr 1fr';
    rows.forEach(h => {
      form.innerHTML +=
        `<div class="gamedata-field gd-hero-card">` +
        `<div class="gd-hero-idx">${escHtml(h.idx)}</div>` +
        `<div class="gd-hero-stats">` +
        `<span>No. <b class="text-col-base">${h.heroNo}</b></span>` +
        `<span>Lv. <b class="text-col-green">${h.level}</b></span>` +
        `<span>Grade <b class="text-col-yellow">${h.gradeSno}</b></span>` +
        `</div></div>`;
    });
    return;
  }

  const schema = _GD_SCHEMA[_gdSection] || [];
  form.style.gridTemplateColumns = '1fr 1fr';
  schema.forEach(f => {
    const val = _gdData[f.key] ?? '';
    let input = '';
    if (f.type === 'readonly') {
      input = `<div class="gamedata-input gd-readonly">${escHtml(String(val))}</div>`;
    } else if (f.type === 'checkbox') {
      input = `<label class="gd-checkbox-wrap">` +
        `<input class="gamedata-input gd-checkbox-native" type="checkbox" id="gd-${f.key}"${val ? ' checked' : ''}>` +
        `<span class="check-lbl-dim">${val ? 'ON' : 'OFF'}</span></label>`;
    } else {
      const numAttrs = f.min !== undefined ? ` min="${f.min}"` : '';
      const maxAttr  = f.max !== undefined ? ` max="${f.max}"` : '';
      input = `<input class="gamedata-input gd-number-input" type="${f.type}" id="gd-${f.key}" value="${escHtml(String(val))}"${numAttrs}${maxAttr}/>`;
    }
    form.innerHTML +=
      `<div class="gamedata-field">` +
      `<label class="gamedata-label" for="gd-${f.key}">${f.label}</label>` +
      input + `</div>`;
  });
  form.innerHTML +=
    `<div class="gamedata-save-bar">` +
    `<button class="btn btn-primary" onclick="saveGameData()">Apply</button>` +
    `<span class="gamedata-status" id="gd-status"></span></div>`;
}

async function saveGameData() {
  const schema  = _GD_SCHEMA[_gdSection] || [];
  const payload = {};
  schema.forEach(f => {
    if (f.type === 'readonly') return;
    const el = document.getElementById('gd-' + f.key);
    if (!el) return;
    payload[f.key] = f.type === 'checkbox' ? el.checked :
                     f.type === 'number'   ? Number(el.value) : el.value;
  });
  const statusEl = document.getElementById('gd-status');
  try {
    const r = await fetch('/web/api/gamedata/' + _gdSection, {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload),
    });
    const d = await r.json();
    statusEl.className = 'gamedata-status ' + (d.ok ? 'ok' : 'err');
    statusEl.textContent = d.ok ? t('admin.save_ok') : '✗ ' + (d.reason || t('admin.server_error'));
  } catch (_) {
    statusEl.className = 'gamedata-status err';
    statusEl.textContent = t('admin.x_server_error');
  }
  setTimeout(() => { statusEl.textContent = ''; statusEl.className = 'gamedata-status'; }, 3000);
}

// ── MAIN: accounts ───────────────────────────────────────────────────────────

let _acctEditId = null;

async function loadAdminAccounts() {
  const el = document.getElementById('admin-acct-list');
  el.innerHTML = `<div class="list-msg">${t('admin.loading')}</div>`;
  try {
    const r    = await fetch('/web/api/accounts');
    const list = await r.json();
    if (!Array.isArray(list) || list.length === 0) {
      el.innerHTML = `<div class="list-msg">${t('admin.acct_empty')}</div>`;
      return;
    }
    el.innerHTML = list.map(a => {
      const isActive = a.active;
      return `<div class="acct-row${isActive ? ' active' : ''}">` +
        `<div class="acct-info">` +
          `<div class="acct-name">${escHtml(a.nickname)}` +
            (isActive ? `<span class="badge badge-ok badge-acct-current">${t('admin.acct_badge_current')}</span>` : '') +
          `</div>` +
          `<div class="acct-meta">${escHtml(a.idp_label || a.idp_code)} · ${escHtml(a.player_id)}` +
            (a.hero_count !== undefined ? ` · 정령 ${a.hero_count}명` : '') +
          `</div>` +
        `</div>` +
        `<div class="acct-actions">` +
          (isActive ? '' : `<button class="btn btn-primary" onclick="adminSelectAccount('${escHtml(a.id)}')">${t('admin.acct_select_btn')}</button>`) +
          `<button class="btn" onclick="openAdminAccountEdit('${escHtml(a.id)}')">${t('admin.acct_edit_btn')}</button>` +
          `<button class="btn btn-danger" onclick="adminDeleteAccount('${escHtml(a.id)}')">${t('admin.acct_delete_btn')}</button>` +
        `</div>` +
      `</div>`;
    }).join('');
  } catch(_) {
    el.innerHTML = `<div class="list-msg err">${t('admin.load_fail')}</div>`;
  }
}

async function adminSelectAccount(id) {
  await fetch(`/web/api/accounts/${id}/select`, { method: 'POST' }).catch(() => {});
  loadAdminAccounts();
  pollStatus();
}

async function adminDeleteAccount(id) {
  if (!confirm(t('admin.acct_delete_confirm'))) return;
  await fetch(`/web/api/accounts/${id}`, { method: 'DELETE' }).catch(() => {});
  closeAdminAccountEdit();
  loadAdminAccounts();
}

async function adminCreateAccount() {
  const nick = document.getElementById('admin-acct-nick').value.trim();
  const idp  = document.getElementById('admin-acct-idp').value;
  const sts  = document.getElementById('admin-acct-create-status');
  if (!nick) { sts.className = 'text-col-red'; sts.textContent = t('admin.acct_nick_required'); return; }
  sts.className = 'text-col-dim'; sts.textContent = t('admin.acct_creating');
  try {
    const r = await fetch('/web/api/accounts', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ nickname: nick, idpCode: idp }),
    });
    const d = await r.json();
    if (!r.ok || !d.id) { sts.className = 'text-col-red'; sts.textContent = t('admin.acct_create_fail') + ' (' + r.status + ')'; return; }
    sts.className = 'text-col-green'; sts.textContent = t('admin.acct_created');
    document.getElementById('admin-acct-nick').value = '';
    setTimeout(() => { sts.textContent = ''; }, 2000);
    loadAdminAccounts();
  } catch(_) {
    sts.className = 'text-col-red'; sts.textContent = t('admin.server_error');
  }
}

async function openAdminAccountEdit(id) {
  _acctEditId = id;
  const card = document.getElementById('admin-acct-edit-card');
  const body = document.getElementById('admin-acct-edit-body');
  card.style.display = '';
  body.innerHTML = `<div class="list-msg">${t('admin.loading')}</div>`;
  try {
    const r = await fetch(`/web/api/accounts/${id}`);
    const a = await r.json();
    body.innerHTML =
      `<div class="setting-row"><label class="label-dim">${t('admin.acct_nick_label')}</label>` +
      `<input type="text" id="edit-acct-nick" value="${escHtml(a.nickname)}" class="acct-nick-input"/></div>` +
      `<div class="setting-row"><label class="label-dim">${t('admin.acct_pid_label')}</label>` +
      `<input type="text" id="edit-acct-pid" value="${escHtml(a.player_id)}" class="acct-nick-input"/></div>` +
      `<div class="edit-form-actions">` +
        `<button class="btn btn-primary" onclick="saveAdminAccountEdit()">${t('admin.save')}</button>` +
        `<button class="btn" onclick="openImportModal('${escHtml(id)}')">${t('admin.import_title')}</button>` +
        `<span id="edit-acct-status" class="edit-form-sts"></span>` +
      `</div>`;
  } catch(_) {
    body.innerHTML = `<div class="list-msg err">${t('admin.load_fail')}</div>`;
  }
}

function closeAdminAccountEdit() {
  document.getElementById('admin-acct-edit-card').style.display = 'none';
  _acctEditId = null;
}

async function saveAdminAccountEdit() {
  if (!_acctEditId) return;
  const nick = document.getElementById('edit-acct-nick')?.value.trim() || '';
  const pid  = document.getElementById('edit-acct-pid')?.value.trim()  || '';
  const sts  = document.getElementById('edit-acct-status');
  try {
    const r = await fetch(`/web/api/accounts/${_acctEditId}`, {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ nickname: nick, player_id: pid }),
    });
    const d = await r.json();
    if (sts) { sts.className = d.ok ? 'edit-form-sts text-col-green' : 'edit-form-sts text-col-red'; sts.textContent = d.ok ? t('admin.save_ok') : t('admin.save_fail'); }
    if (d.ok) { loadAdminAccounts(); setTimeout(() => { if(sts) sts.textContent=''; }, 2000); }
  } catch(_) {
    if (sts) { sts.className = 'edit-form-sts text-col-red'; sts.textContent = t('admin.x_server_error'); }
  }
}

function openImportModal(id) {
  const dlg = document.getElementById('modal-import');
  if (!dlg) return;
  dlg.dataset.acctId = id;
  document.getElementById('import-status').textContent = '';
  document.getElementById('import-file').value = '';
  dlg.showModal();
}

function closeImportModal() {
  const dlg = document.getElementById('modal-import');
  if (dlg) dlg.close();
}

async function doImport() {
  const dlg  = document.getElementById('modal-import');
  const id   = dlg?.dataset.acctId;
  const file = document.getElementById('import-file')?.files?.[0];
  const sts  = document.getElementById('import-status');
  if (!id || !file) { if(sts) { sts.className='import-status text-col-red'; sts.textContent=t('admin.import_file_required'); } return; }
  if(sts) { sts.className='import-status text-col-dim'; sts.textContent=t('admin.import_ing'); }
  try {
    const text = await file.text();
    const r = await fetch(`/web/api/accounts/${id}/import`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: text,
    });
    const d = await r.json();
    if(sts) { sts.className = d.ok ? 'import-status text-col-green' : 'import-status text-col-red'; sts.textContent = d.ok ? t('admin.import_ok') : t('admin.x_fail') + ' ' + (d.reason || ''); }
    if (d.ok) { setTimeout(closeImportModal, 1500); loadAdminAccounts(); }
  } catch(_) {
    if(sts) { sts.className='import-status text-col-red'; sts.textContent=t('admin.server_error'); }
  }
}

// ── MAIN: files ───────────────────────────────────────────────────────────────

let _filePath = '';

async function listFiles(prefix) {
  const el = document.getElementById('file-list');
  el.textContent = t('admin.loading');
  try {
    const r    = await fetch('/web/api/files/list?prefix=' + encodeURIComponent(prefix));
    const list = await r.json();
    if (!Array.isArray(list) || list.length === 0) {
      el.innerHTML = `<span class="text-col-muted">${t('admin.file_none')}</span>`; return;
    }
    el.innerHTML = list.map(f =>
      `<div class="fixture-item" onclick="openFileEdit('${escHtml(f.path)}')">` +
        `<div class="fixture-path">${escHtml(f.path)}</div>` +
        `<div class="fixture-size">${f.bytes} bytes</div>` +
      `</div>`
    ).join('');
  } catch(_) {
    el.innerHTML = `<span class="text-col-red">${t('admin.load_fail')}</span>`;
  }
}

async function openFileEdit(path) {
  _filePath = path;
  document.getElementById('file-edit-card').style.display = '';
  document.getElementById('file-edit-title').textContent = path;
  document.getElementById('file-save-status').textContent = '';
  const ta = document.getElementById('file-editor');
  ta.value = t('admin.loading');
  try {
    const r = await fetch('/web/api/files?path=' + encodeURIComponent(path));
    ta.value = await r.text();
  } catch(_) {
    ta.value = t('admin.load_fail');
  }
}

function closeFileEdit() {
  document.getElementById('file-edit-card').style.display = 'none';
  _filePath = '';
}

async function saveFileEdit() {
  if (!_filePath) return;
  const content = document.getElementById('file-editor').value;
  const sts     = document.getElementById('file-save-status');
  sts.className = 'file-save-sts text-col-dim'; sts.textContent = t('admin.save_ing');
  try {
    const r = await fetch('/web/api/files?path=' + encodeURIComponent(_filePath), {
      method: 'POST',
      headers: { 'Content-Type': 'text/plain; charset=UTF-8' },
      body: content,
    });
    const d = await r.json();
    sts.className = d.ok ? 'file-save-sts text-col-green' : 'file-save-sts text-col-red';
    sts.textContent = d.ok ? t('admin.save_ok') : t('admin.save_fail') + (d.reason ? ' — ' + d.reason : '');
    if (d.ok) setTimeout(() => { sts.textContent = ''; }, 2500);
  } catch(_) {
    sts.className = 'file-save-sts text-col-red'; sts.textContent = t('admin.x_server_error');
  }
}

// ── MAIN: about modal ─────────────────────────────────────────────────────────

function openAbout()  { document.getElementById('modal-about').style.display = 'flex'; }
function closeAbout() { document.getElementById('modal-about').style.display = 'none'; }

// ── MAIN: init ────────────────────────────────────────────────────────────────

function initMain() {
  loadStrings();
  loadRecentLogs();
  initSSEServer();
  initSSEAdb();
  loadSettings();
  pollStatus();
  setInterval(pollStatus, 4000);
  setInterval(() => {
    if (document.getElementById('page-health').classList.contains('active')) loadHealth();
  }, 6000);
}

// ── BOOT ──────────────────────────────────────────────────────────────────────

(async () => {
  let savedLang = null;
  try {
    const cr = await fetch('/web/api/config');
    const cd = await cr.json();
    if (cd.lang) { savedLang = cd.lang; LANG = cd.lang; }
  } catch (_) {}

  await loadStrings();

  const proceedBoot = async () => {
    try {
      const r = await fetch('/web/api/setup/status');
      const d = await r.json();
      if (d.complete) {
        const saved = await fetch('/web/api/adb/port').then(rp => rp.json()).catch(() => ({}));
        if (saved.port) {
          const pr = await fetch('/web/api/adb/probe', {
            method: 'POST', headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ target: '127.0.0.1:' + saved.port }),
          }).then(rp => rp.json()).catch(() => ({ connected: false }));
          if (pr.connected) {
            _portVerified = true;
            enterMain();
            return;
          }
        }
      }
    } catch (_) {}
    runIntro();
  };

  if (savedLang) {
    await proceedBoot();
  } else {
    const dlg = document.getElementById('lang-select-overlay');
    if (dlg && dlg.showModal) {
      dlg.showModal();
    }
    await new Promise(resolve => {
      _bootAfterLang = resolve;
    });
    _bootAfterLang = () => {};
    await proceedBoot();
  }
})();
