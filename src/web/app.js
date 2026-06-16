'use strict';

// ── i18n ─────────────────────────────────────────────────────────────────────

let LANG = 'ko';

const _I = {
  'intro.adb_path_placeholder': {
    ko: '예: D:\\MuMuPlayer\\nx_device\\12.0\\shell  (또는 adb.exe 전체 경로)',
    en: 'e.g. D:\\MuMuPlayer\\nx_device\\12.0\\shell  (or full path to adb.exe)',
    zh: '例：D:\\MuMuPlayer\\nx_device\\12.0\\shell  （或 adb.exe 完整路径）',
  },
  'intro.port_placeholder': {
    ko: '예: 16384  (MuMu 설정 → 멀티 인스턴스 → ADB 포트)',
    en: 'e.g. 16384  (MuMu Settings → Multi-Instance → ADB Port)',
    zh: '例：16384  （MuMu 设置 → 多开 → ADB 端口）',
  },
  'intro.status_init':       { ko:'시스템 초기화 중…',            en:'Initializing system…',              zh:'系统初始化中…' },
  'intro.status_server':     { ko:'게임 서버 연결 확인 중…',      en:'Checking game server connection…',  zh:'检查游戏服务器连接中…' },
  'intro.status_adb':        { ko:'ADB 설정 로드 중…',            en:'Loading ADB configuration…',       zh:'加载 ADB 配置中…' },
  'intro.status_adb_input':  { ko:'ADB 경로를 입력하세요…',       en:'Enter ADB path…',                  zh:'请输入 ADB 路径…' },
  'intro.status_device':     { ko:'에뮬레이터 연결 확인 중…',    en:'Scanning connected devices…',       zh:'扫描设备中…' },
  'intro.status_ready':      { ko:'시스템 준비 완료',             en:'System ready',                     zh:'系统就绪' },
  'intro.init_ok':           { ko:'EverSoul 오프라인 시스템 초기화', en:'EverSoul Offline System initializing', zh:'EverSoul 离线系统初始化' },
  'intro.connecting_server': { ko:'게임 서버 연결 중 (127.0.0.1:9999)…', en:'Connecting to game server (127.0.0.1:9999)…', zh:'连接游戏服务器中…' },
  'intro.server_ok':         { ko:'게임 서버 — 포트 {port} [{mode}]', en:'Game server — port {port} [{mode}]', zh:'游戏服务器 — 端口 {port} [{mode}]' },
  'intro.server_fail':       { ko:'게임 서버 — 연결 불가',        en:'Game server — unreachable',        zh:'游戏服务器 — 连接失败' },
  'intro.loading_adb':       { ko:'ADB 구성 로드 중…',            en:'Loading ADB configuration…',       zh:'加载 ADB 配置中…' },
  'intro.adb_need':          { ko:'ADB 미설정 — 입력 필요',       en:'ADB not configured — input required', zh:'ADB 未配置 — 需要输入' },
  'intro.adb_saved_path':    { ko:'ADB 경로 저장됨: {path}',      en:'ADB path saved: {path}',            zh:'ADB 路径已保存：{path}' },
  'intro.adb_loaded':        { ko:'ADB 구성 로드됨: {path}',      en:'ADB config loaded: {path}',         zh:'ADB 配置已加载：{path}' },
  'intro.scanning_devices':  { ko:'ADB 기기 스캔 중…',            en:'Scanning connected ADB devices…',   zh:'扫描 ADB 设备中…' },
  'intro.device_found':      { ko:'기기 발견: {serial}',          en:'Device found: {serial}',            zh:'已发现设备：{serial}' },
  'intro.device_none':       { ko:'기기 없음 (나중에 연결 가능)', en:'No device connected (can connect later)', zh:'未连接设备（稍后可连接）' },
  'intro.device_fail':       { ko:'기기 스캔 실패',               en:'Device scan failed',                zh:'设备扫描失败' },
  'intro.ready_banner':      { ko:'─── 시스템 준비 완료 ───',     en:'─── SYSTEM READY ───',              zh:'─── 系统就绪 ───' },
  'intro.enter_hint':        { ko:'ENTER DUNGEON 클릭 또는 3초 후 자동 진입', en:'Click ENTER DUNGEON or auto-entering in 3s', zh:'点击 ENTER DUNGEON 或 3 秒后自动进入' },
  'intro.proxy_mode':        { ko:'프록시', en:'proxy', zh:'代理' },
  'intro.offline_mode':      { ko:'오프라인', en:'offline', zh:'离线' },
  'intro.adb_empty_err':        { ko:'경로를 입력하세요', en:'Please enter a path', zh:'请输入路径' },
  'intro.adb_validating':       { ko:'검증 중…', en:'Validating…', zh:'验证中…' },
  'intro.adb_not_found':        { ko:'adb.exe를 찾을 수 없습니다', en:'adb.exe not found at path', zh:'找不到 adb.exe' },
  'intro.server_conn_fail':     { ko:'서버 연결 실패', en:'Server connection failed', zh:'服务器连接失败' },
  'intro.loading_port':         { ko:'저장된 ADB 포트 로드 중…', en:'Loading saved ADB port…', zh:'加载已保存的 ADB 端口中…' },
  'intro.port_need':            { ko:'ADB 포트 미설정 — 입력 필요', en:'ADB port not set — input required', zh:'ADB 端口未设置 — 需要输入' },
  'intro.port_loaded':          { ko:'저장된 포트: {port}', en:'Saved port: {port}', zh:'已保存端口：{port}' },
  'intro.port_saved':           { ko:'포트 저장됨: {port}', en:'Port saved: {port}', zh:'端口已保存：{port}' },
  'intro.status_port':          { ko:'기기 포트 확인 중…', en:'Checking device port…', zh:'检查设备端口中…' },
  'intro.status_port_input':    { ko:'기기 ADB 포트를 입력하세요…', en:'Enter device ADB port…', zh:'请输入设备 ADB 端口…' },
  'intro.status_probe':         { ko:'기기 상태 조사 중…', en:'Probing device status…', zh:'探测设备状态中…' },
  'intro.probe_connecting':     { ko:'기기 연결 시도: {target}', en:'Connecting to device: {target}', zh:'正在连接设备：{target}' },
  'intro.probe_fail':           { ko:'기기 연결 실패 — 포트를 확인하세요', en:'Device connection failed — check port', zh:'设备连接失败 — 请检查端口' },
  'intro.probe_eversoul_ok':    { ko:'EverSoul 패키지 확인됨', en:'EverSoul package found', zh:'EverSoul 包已确认' },
  'intro.probe_eversoul_fail':  { ko:'EverSoul 미설치', en:'EverSoul not installed', zh:'EverSoul 未安装' },
  'intro.probe_rooted':         { ko:'루팅 확인됨 (su OK)', en:'Root verified (su OK)', zh:'已确认 Root (su OK)' },
  'intro.probe_not_rooted':     { ko:'루팅 미확인 (su root 없음)', en:'Root not available (no su)', zh:'未确认 Root（无 su）' },
  'intro.probe_adb_root':       { ko:'adb root 사용 가능', en:'adb root available', zh:'adb root 可用' },
  'intro.probe_no_adb_root':    { ko:'adb root 불가 (su root 사용)', en:'adb root unavailable (using su)', zh:'adb root 不可用（使用 su）' },
  'intro.port_empty_err':       { ko:'포트 번호를 입력하세요', en:'Please enter a port number', zh:'请输入端口号' },
  'intro.port_probing':         { ko:'연결 확인 중…', en:'Probing…', zh:'探测中…' },
  'admin.dashboard':         { ko:'대시보드', en:'Dashboard', zh:'仪表板' },
  'admin.health':            { ko:'헬스체크', en:'Health', zh:'健康检查' },
  'admin.logs':              { ko:'요청 로그', en:'Request Log', zh:'请求日志' },
  'admin.db':                { ko:'데이터베이스', en:'Database', zh:'数据库' },
  'admin.fixtures':          { ko:'픽스처', en:'Fixtures', zh:'Fixture' },
  'admin.settings':          { ko:'설정', en:'Settings', zh:'设置' },
  'admin.injector':          { ko:'인젝터', en:'Injector', zh:'注入器' },
  'admin.gamedata':          { ko:'게임 데이터', en:'Game Data', zh:'游戏数据' },
  'admin.accounts':          { ko:'계정 관리',   en:'Accounts',  zh:'账户管理' },
  'admin.files':             { ko:'파일',         en:'Files',     zh:'文件' },
  'admin.uptime':            { ko:'업타임', en:'Uptime', zh:'运行时间' },
  'admin.requests':          { ko:'처리 요청', en:'Requests', zh:'已处理请求' },
  'admin.proxy_on':          { ko:'프록시 활성화', en:'Enable Proxy', zh:'启用代理' },
  'server.port':             { ko:'포트', en:'Port', zh:'端口' },
  'admin.game_start_title':  { ko:'게임 시작', en:'Start Game', zh:'开始游戏' },
  'admin.game_start_btn':    { ko:'▶ 게임 시작', en:'▶ START GAME', zh:'▶ 开始游戏' },
  'admin.db_select_table':   { ko:'테이블을 선택하세요.', en:'Select a table.', zh:'请选择表。' },
  'admin.acct_new':          { ko:'신규 계정', en:'New Account', zh:'新建账户' },
  'admin.acct_nick':         { ko:'닉네임', en:'Nickname', zh:'昵称' },
  'admin.acct_nick_placeholder': { ko:'닉네임', en:'Nickname', zh:'昵称' },
  'admin.acct_login':        { ko:'로그인', en:'Login Type', zh:'登录类型' },
  'admin.acct_idp_guest':    { ko:'게스트', en:'Guest', zh:'游客' },
  'admin.acct_idp_kakao':    { ko:'카카오', en:'Kakao', zh:'Kakao' },
  'admin.acct_create':       { ko:'생성', en:'Create', zh:'创建' },
  'admin.acct_edit':         { ko:'계정 편집', en:'Edit Account', zh:'编辑账户' },
  'admin.files_select_dir':  { ko:'디렉토리를 선택하세요.', en:'Select a directory.', zh:'请选择目录。' },
  'admin.save':              { ko:'저장', en:'Save', zh:'保存' },
  'admin.cancel':            { ko:'취소', en:'Cancel', zh:'取消' },
  'about.orig_author':       { ko:'원제작자', en:'Original Author', zh:'原制作者' },
  'about.co_dev':            { ko:'보조 개발', en:'Co-Developer', zh:'协同开发' },
  'about.tech':              { ko:'기술', en:'Technology', zh:'技术' },
  'admin.import_title':      { ko:'UserInfo 가져오기', en:'Import UserInfo', zh:'导入 UserInfo' },
  'admin.import_desc1':      { ko:'HAR에서 캡처한 UserInfo.json 파일을 선택하면', en:'Select a UserInfo.json captured from HAR,', zh:'选择从 HAR 捕获的 UserInfo.json，' },
  'admin.import_desc2':      { ko:'해당 계정 DB에 데이터를 가져옵니다.', en:'and import data into the account DB.', zh:'将数据导入对应账户数据库。' },
  'admin.import_btn':        { ko:'가져오기', en:'Import', zh:'导入' },
  'admin.injector_connect':  { ko:'ADB 연결', en:'ADB Connect', zh:'ADB 连接' },
  'admin.injector_connect_btn': { ko:'연결', en:'Connect', zh:'连接' },
  'admin.injector_devices':  { ko:'연결된 기기', en:'Connected Devices', zh:'已连接设备' },
};

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
  document.querySelectorAll('.lang-btn').forEach(b => {
    const map = { ko: '한국어', en: 'EN', zh: '中文' };
    b.classList.toggle('active', b.textContent.trim() === map[LANG]);
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
  localStorage.setItem('eversoul_lang', lang);
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

  setTimeout(() => {
    if (document.getElementById('intro') && !document.getElementById('intro').classList.contains('hidden')) {
      enterMain();
    }
  }, 3000);
}

function skipIntro() {
  enterMain();
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
    document.getElementById('srv-label').textContent = 'Online';
    if (!_startTime && d.started_at) { _startTime = d.started_at; startUptimeTick(); }
    _updateReqChart(d.request_count || 0);
  } catch (_) {
    document.getElementById('srv-dot').className = 'srv-dot fail';
    document.getElementById('srv-label').textContent = 'Offline';
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

let logPaused = false;
let logFilter = '';
const MAX_LOG = 1000;

function tagClass(tag) { return 'tag-' + tag.replace(/[^A-Z0-9_]/gi, ''); }

function appendLogLine(entry, panel) {
  const div = document.createElement('div');
  div.className = 'log-line';
  const ts  = entry.timestamp || '';
  const tag = entry.tag || '';
  const txt = entry.text || '';
  div.innerHTML =
    `<span class="log-ts">${escHtml(ts.slice(11, 19) || ts)}</span>` +
    `<span class="log-id">#${entry.id}</span>` +
    `<span class="log-tag ${tagClass(tag)}">[${escHtml(tag)}]</span>` +
    `<span class="log-text">${escHtml(txt)}</span>`;
  if (logFilter && !txt.toLowerCase().includes(logFilter) && !tag.toLowerCase().includes(logFilter))
    div.classList.add('filtered');
  panel.appendChild(div);
  while (panel.children.length > MAX_LOG) panel.removeChild(panel.firstChild);
  return div;
}

function initSSE() {
  const src      = new EventSource('/web/api/logs/stream');
  const logPanel = document.getElementById('log-panel');
  const dashLog  = document.getElementById('dash-log');
  src.onmessage = e => {
    const entry = JSON.parse(e.data);
    if (!logPaused) {
      appendLogLine(entry, logPanel);
      logPanel.scrollTop = logPanel.scrollHeight;
    }
    appendLogLine(entry, dashLog);
    dashLog.scrollTop = dashLog.scrollHeight;
    while (dashLog.children.length > 80) dashLog.removeChild(dashLog.firstChild);
    if (entry.tag === 'INJECTOR' || entry.tag === 'ADB') {
      const inj = document.getElementById('injector-log');
      if (inj) { appendLogLine(entry, inj); inj.scrollTop = inj.scrollHeight; }
    }
  };
  src.onerror = () => { setTimeout(initSSE, 3000); src.close(); };
}

async function loadRecentLogs() {
  try {
    const r    = await fetch('/web/api/logs/recent?n=200');
    const logs = await r.json();
    const panel = document.getElementById('log-panel');
    const dash  = document.getElementById('dash-log');
    logs.forEach(e => { appendLogLine(e, panel); appendLogLine(e, dash); });
    panel.scrollTop = panel.scrollHeight;
    dash.scrollTop  = dash.scrollHeight;
  } catch (_) {}
}

function toggleLogPause() {
  logPaused = !logPaused;
  const btn = document.getElementById('btn-pause');
  btn.textContent = logPaused ? 'Resume' : 'Pause';
  btn.style.color = logPaused ? 'var(--color-yellow)' : '';
}

function clearLog() {
  document.getElementById('log-panel').innerHTML = '';
  fetch('/web/api/logs/clear', { method: 'POST' }).catch(() => {});
}

function filterLog(v) {
  logFilter = v.toLowerCase();
  document.querySelectorAll('#log-panel .log-line').forEach(el => {
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
    grid.innerHTML = '<div style="color:var(--color-red);padding:16px">Failed to load health checks.</div>';
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
  } catch (_) { wrap.innerHTML = '<div class="db-empty-msg" style="color:var(--color-red)">Load error</div>'; }
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
  colsEl.innerHTML = '<div style="color:var(--color-text-dim)">Loading…</div>';
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
    colsEl.innerHTML = '<div style="color:var(--color-red)">Error</div>';
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
  document.getElementById('fixture-content').textContent = 'Loading…';
  try {
    const r = await fetch('/web/api/fixtures/' + path.split('/').map(s => encodeURIComponent(s)).join('/'));
    document.getElementById('fixture-content').textContent = await r.text();
  } catch (_) {
    document.getElementById('fixture-content').textContent = 'Error';
  }
}

// ── MAIN: settings ────────────────────────────────────────────────────────────

async function loadSettings() {
  try {
    const r = await fetch('/web/api/status');
    const d = await r.json();
    document.getElementById('toggle-proxy').checked = !!d.proxy_enabled;
    document.getElementById('set-game-url').value   = d.game_server_url || '';
    document.getElementById('set-data-dir').value   = d.data_dir || '';
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
  await fetch('/web/api/config', {
    method: 'POST', headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      game_server_url: document.getElementById('set-game-url').value,
    }),
  }).catch(() => {});
  pollStatus();
}

// ── MAIN: game start button ───────────────────────────────────────────────────

async function startGame() {
  const btn = document.getElementById('btn-game-start');
  const sts = document.getElementById('game-start-status');
  if (btn.disabled) return;

  btn.disabled = true;
  sts.className = 'running';
  sts.textContent = '인젝터 실행 중…';

  try {
    const r = await fetch('/web/api/injector/run', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({}),
    });
    const d = await r.json();
    if (d.ok) {
      sts.className = 'ok';
      sts.textContent = '게임 시작 중… (로그 탭 확인)';
      setTimeout(pollInjectorStatus, 2000);
    } else {
      sts.className = 'err';
      sts.textContent = d.reason || 'Error';
      btn.disabled = false;
    }
  } catch (_) {
    sts.className = 'err';
    sts.textContent = '서버 연결 실패';
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
  status.textContent = 'Connecting…';
  status.style.color = 'var(--color-text-dim)';
  try {
    const r = await fetch('/web/api/injector/connect', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ target }),
    });
    const d = await r.json();
    status.textContent = d.output ? d.output.trim() : (d.ok ? 'Connected' : 'Failed');
    status.style.color = d.ok ? 'var(--color-green)' : 'var(--color-red)';
    if (d.ok) await loadInjectorDevices();
  } catch (_) {
    status.textContent = 'Error';
    status.style.color = 'var(--color-red)';
  }
  btn.disabled = false;
}

async function loadInjectorDevices() {
  const el = document.getElementById('injector-device-list');
  el.innerHTML = '<span style="color:var(--color-text-dim)">Scanning…</span>';
  try {
    const r = await fetch('/web/api/injector/devices');
    const d = await r.json();
    if (!d.devices || d.devices.length === 0) {
      el.innerHTML = '<span style="color:var(--color-text-dim)">No devices found.</span>';
      return;
    }
    el.innerHTML = d.devices.map(s => {
      const sel = s === selectedSerial;
      return `<div class="device-chip${sel ? ' selected' : ''}" onclick="selectSerial('${escHtml(s)}')">` +
        `<span>${escHtml(s)}</span>` +
        `<span style="font-size:10px;color:${sel ? 'var(--color-accent)' : 'var(--color-text-dim)'}">◈</span></div>`;
    }).join('');
    await loadInjectorCheck();
  } catch (_) {
    el.innerHTML = '<span style="color:var(--color-red)">Error</span>';
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
    const ok  = v => `<span style="color:${v ? 'var(--color-green)' : 'var(--color-red)'}">${v ? '✓' : '✗'}</span>`;
    el.innerHTML =
      `${ok(d.adb_ok)} ADB: <span style="color:var(--color-text-dim);font-size:10px">${escHtml(d.adb)}</span><br>` +
      `${ok(!!d.serial)} Device: <span style="color:var(--color-accent)">${escHtml(d.serial || 'none')}</span><br>` +
      `${ok(d.eversoul)} com.kakaogames.eversoul`;
  } catch (_) { el.innerHTML = ''; }
}

async function runInjector() {
  const btn = document.getElementById('btn-inject');
  btn.disabled = true;
  document.getElementById('injector-status-text').textContent = 'Running…';
  try {
    const body = selectedSerial ? { serial: selectedSerial } : {};
    const r    = await fetch('/web/api/injector/run', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(body),
    });
    const d = await r.json();
    document.getElementById('injector-status-text').textContent = d.ok ? 'Running…' : (d.reason || 'Error');
    if (d.ok) setTimeout(pollInjectorStatus, 2000);
  } catch (_) {
    document.getElementById('injector-status-text').textContent = 'Error';
  }
  btn.disabled = false;
}

async function stopInjector() {
  await fetch('/web/api/injector/stop', { method: 'POST' }).catch(() => {});
  document.getElementById('injector-status-text').textContent = 'Stopped';
  document.getElementById('btn-game-start').disabled = false;
  document.getElementById('game-start-status').textContent = '';
  document.getElementById('game-start-status').className = '';
}

async function pollInjectorStatus() {
  try {
    const r = await fetch('/web/api/injector/status');
    const d = await r.json();
    const el = document.getElementById('injector-status-text');
    if (el) el.textContent = d.running ? 'Running…' : 'Idle';
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
  form.innerHTML = '<div style="color:var(--color-text-dim);font-size:12px;padding:12px">Loading…</div>';
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
      form.innerHTML = '<div style="color:var(--color-text-dim);padding:16px">No currency data.</div>';
      return;
    }
    form.style.gridTemplateColumns = '1fr 1fr';
    rows.forEach(c => {
      form.innerHTML +=
        `<div class="gamedata-field">` +
        `<label class="gamedata-label">Type ${c.type}</label>` +
        `<div style="font-size:18px;font-weight:700;color:${c.type===1?'var(--color-yellow)':c.type===2?'var(--color-accent)':'var(--color-text)'}">` +
        `${Number(c.value).toLocaleString()}</div></div>`;
    });
    return;
  }

  if (_gdSection === 'heroes') {
    const rows = Array.isArray(_gdData) ? _gdData : [];
    if (!rows.length) {
      form.innerHTML = '<div style="color:var(--color-text-dim);padding:16px">No heroes.</div>';
      return;
    }
    form.style.gridTemplateColumns = '1fr 1fr 1fr';
    rows.forEach(h => {
      form.innerHTML +=
        `<div class="gamedata-field" style="background:rgba(0,50,100,.2);border:1px solid var(--glass-border-lo);border-radius:5px;padding:10px">` +
        `<div style="font-size:12px;color:var(--color-accent);font-weight:600;margin-bottom:6px">${escHtml(h.idx)}</div>` +
        `<div style="display:flex;gap:12px;font-size:11px;color:var(--color-text-dim)">` +
        `<span>No. <b style="color:var(--color-text)">${h.heroNo}</b></span>` +
        `<span>Lv. <b style="color:var(--color-green)">${h.level}</b></span>` +
        `<span>Grade <b style="color:var(--color-yellow)">${h.gradeSno}</b></span>` +
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
      input = `<div class="gamedata-input" style="opacity:.6;cursor:default;padding:5px 8px;border:1px solid var(--glass-border-lo);border-radius:5px;background:rgba(0,0,0,.2);font-size:12px">${escHtml(String(val))}</div>`;
    } else if (f.type === 'checkbox') {
      input = `<label style="display:flex;align-items:center;gap:8px">` +
        `<input class="gamedata-input" type="checkbox" id="gd-${f.key}"${val ? ' checked' : ''} style="width:auto;accent-color:var(--color-accent)">` +
        `<span style="font-size:12px;color:var(--color-text-dim)">${val ? 'ON' : 'OFF'}</span></label>`;
    } else {
      const numAttrs = f.min !== undefined ? ` min="${f.min}"` : '';
      const maxAttr  = f.max !== undefined ? ` max="${f.max}"` : '';
      input = `<input class="gamedata-input" type="${f.type}" id="gd-${f.key}" value="${escHtml(String(val))}"${numAttrs}${maxAttr} style="width:100%"/>`;
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
    statusEl.textContent = d.ok ? '✓ Saved' : '✗ ' + (d.reason || 'Error');
  } catch (_) {
    statusEl.className = 'gamedata-status err';
    statusEl.textContent = '✗ Server error';
  }
  setTimeout(() => { statusEl.textContent = ''; statusEl.className = 'gamedata-status'; }, 3000);
}

// ── MAIN: accounts ───────────────────────────────────────────────────────────

let _acctEditId = null;

async function loadAdminAccounts() {
  const el = document.getElementById('admin-acct-list');
  el.innerHTML = '<div style="color:var(--color-text-dim);font-size:12px;padding:8px">로딩 중…</div>';
  try {
    const r    = await fetch('/web/api/accounts');
    const list = await r.json();
    if (!Array.isArray(list) || list.length === 0) {
      el.innerHTML = '<div style="color:var(--color-text-dim);font-size:12px;padding:8px">등록된 계정 없음</div>';
      return;
    }
    el.innerHTML = list.map(a => {
      const isActive = a.active;
      return `<div class="acct-row${isActive ? ' active' : ''}" style="margin-bottom:6px">` +
        `<div class="acct-info">` +
          `<div class="acct-name">${escHtml(a.nickname)}` +
            (isActive ? `<span class="badge badge-ok" style="margin-left:6px;font-size:9px">현재</span>` : '') +
          `</div>` +
          `<div class="acct-meta">${escHtml(a.idp_label || a.idp_code)} · ${escHtml(a.player_id)}` +
            (a.hero_count !== undefined ? ` · 영웅 ${a.hero_count}명` : '') +
          `</div>` +
        `</div>` +
        `<div class="acct-actions">` +
          (isActive ? '' : `<button class="btn btn-primary" onclick="adminSelectAccount('${escHtml(a.id)}')">선택</button>`) +
          `<button class="btn" onclick="openAdminAccountEdit('${escHtml(a.id)}')">편집</button>` +
          `<button class="btn btn-danger" onclick="adminDeleteAccount('${escHtml(a.id)}')">삭제</button>` +
        `</div>` +
      `</div>`;
    }).join('');
  } catch(_) {
    el.innerHTML = '<div style="color:var(--color-red);font-size:12px;padding:8px">로드 실패</div>';
  }
}

async function adminSelectAccount(id) {
  await fetch(`/web/api/accounts/${id}/select`, { method: 'POST' }).catch(() => {});
  loadAdminAccounts();
  pollStatus();
}

async function adminDeleteAccount(id) {
  if (!confirm('이 계정을 삭제하시겠습니까?')) return;
  await fetch(`/web/api/accounts/${id}`, { method: 'DELETE' }).catch(() => {});
  closeAdminAccountEdit();
  loadAdminAccounts();
}

async function adminCreateAccount() {
  const nick = document.getElementById('admin-acct-nick').value.trim();
  const idp  = document.getElementById('admin-acct-idp').value;
  const sts  = document.getElementById('admin-acct-create-status');
  if (!nick) { sts.style.color = 'var(--color-red)'; sts.textContent = '닉네임을 입력하세요.'; return; }
  sts.style.color = 'var(--color-text-dim)'; sts.textContent = '생성 중…';
  try {
    const r = await fetch('/web/api/accounts', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ nickname: nick, idpCode: idp }),
    });
    const d = await r.json();
    if (!r.ok || !d.id) { sts.style.color = 'var(--color-red)'; sts.textContent = '생성 실패 (' + r.status + ')'; return; }
    sts.style.color = 'var(--color-green)'; sts.textContent = '생성 완료';
    document.getElementById('admin-acct-nick').value = '';
    setTimeout(() => { sts.textContent = ''; }, 2000);
    loadAdminAccounts();
  } catch(_) {
    sts.style.color = 'var(--color-red)'; sts.textContent = '서버 오류';
  }
}

async function openAdminAccountEdit(id) {
  _acctEditId = id;
  const card = document.getElementById('admin-acct-edit-card');
  const body = document.getElementById('admin-acct-edit-body');
  card.style.display = '';
  body.innerHTML = '<div style="color:var(--color-text-dim);font-size:12px;padding:4px">로딩 중…</div>';
  try {
    const r = await fetch(`/web/api/accounts/${id}`);
    const a = await r.json();
    body.innerHTML =
      `<div class="setting-row"><label style="font-size:12px;color:var(--color-text-dim)">닉네임</label>` +
      `<input type="text" id="edit-acct-nick" value="${escHtml(a.nickname)}" style="width:200px"/></div>` +
      `<div class="setting-row"><label style="font-size:12px;color:var(--color-text-dim)">Player ID</label>` +
      `<input type="text" id="edit-acct-pid" value="${escHtml(a.player_id)}" style="width:200px"/></div>` +
      `<div style="margin-top:10px;display:flex;gap:8px;flex-wrap:wrap">` +
        `<button class="btn btn-primary" onclick="saveAdminAccountEdit()">저장</button>` +
        `<button class="btn" onclick="openImportModal('${escHtml(id)}')">UserInfo 가져오기</button>` +
        `<span id="edit-acct-status" style="font-size:11px;color:var(--color-text-dim);margin-top:5px"></span>` +
      `</div>`;
  } catch(_) {
    body.innerHTML = '<div style="color:var(--color-red);font-size:12px">로드 실패</div>';
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
    if (sts) { sts.style.color = d.ok ? 'var(--color-green)' : 'var(--color-red)'; sts.textContent = d.ok ? '✓ 저장됨' : '✗ 저장 실패'; }
    if (d.ok) { loadAdminAccounts(); setTimeout(() => { if(sts) sts.textContent=''; }, 2000); }
  } catch(_) {
    if (sts) { sts.style.color = 'var(--color-red)'; sts.textContent = '✗ 서버 오류'; }
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
  if (!id || !file) { if(sts) { sts.style.color='var(--color-red)'; sts.textContent='파일을 선택하세요.'; } return; }
  if(sts) { sts.style.color='var(--color-text-dim)'; sts.textContent='가져오는 중…'; }
  try {
    const text = await file.text();
    const r = await fetch(`/web/api/accounts/${id}/import`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: text,
    });
    const d = await r.json();
    if(sts) { sts.style.color = d.ok ? 'var(--color-green)' : 'var(--color-red)'; sts.textContent = d.ok ? '✓ 가져오기 완료' : '✗ ' + (d.reason || '실패'); }
    if (d.ok) { setTimeout(closeImportModal, 1500); loadAdminAccounts(); }
  } catch(_) {
    if(sts) { sts.style.color='var(--color-red)'; sts.textContent='서버 오류'; }
  }
}

// ── MAIN: files ───────────────────────────────────────────────────────────────

let _filePath = '';

async function listFiles(prefix) {
  const el = document.getElementById('file-list');
  el.textContent = '로딩 중…';
  try {
    const r    = await fetch('/web/api/files/list?prefix=' + encodeURIComponent(prefix));
    const list = await r.json();
    if (!Array.isArray(list) || list.length === 0) {
      el.innerHTML = '<span style="color:var(--color-text-muted)">파일 없음</span>'; return;
    }
    el.innerHTML = list.map(f =>
      `<div class="fixture-item" onclick="openFileEdit('${escHtml(f.path)}')">` +
        `<div class="fixture-path">${escHtml(f.path)}</div>` +
        `<div class="fixture-size">${f.bytes} bytes</div>` +
      `</div>`
    ).join('');
  } catch(_) {
    el.innerHTML = '<span style="color:var(--color-red)">로드 실패</span>';
  }
}

async function openFileEdit(path) {
  _filePath = path;
  document.getElementById('file-edit-card').style.display = '';
  document.getElementById('file-edit-title').textContent = path;
  document.getElementById('file-save-status').textContent = '';
  const ta = document.getElementById('file-editor');
  ta.value = '로딩 중…';
  try {
    const r = await fetch('/web/api/files?path=' + encodeURIComponent(path));
    ta.value = await r.text();
  } catch(_) {
    ta.value = '로드 실패';
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
  sts.style.color = 'var(--color-text-dim)'; sts.textContent = '저장 중…';
  try {
    const r = await fetch('/web/api/files?path=' + encodeURIComponent(_filePath), {
      method: 'POST',
      headers: { 'Content-Type': 'text/plain; charset=UTF-8' },
      body: content,
    });
    const d = await r.json();
    sts.style.color = d.ok ? 'var(--color-green)' : 'var(--color-red)';
    sts.textContent = d.ok ? '✓ 저장됨' : '✗ ' + (d.reason || '실패');
    if (d.ok) setTimeout(() => { sts.textContent = ''; }, 2500);
  } catch(_) {
    sts.style.color = 'var(--color-red)'; sts.textContent = '✗ 서버 오류';
  }
}

// ── MAIN: about modal ─────────────────────────────────────────────────────────

function openAbout()  { document.getElementById('modal-about').showModal(); }
function closeAbout() { document.getElementById('modal-about').close(); }
document.getElementById('modal-about').addEventListener('click', e => {
  const dlg = e.currentTarget;
  const rect = dlg.getBoundingClientRect();
  if (e.clientX < rect.left || e.clientX > rect.right ||
      e.clientY < rect.top  || e.clientY > rect.bottom) dlg.close();
});

// ── MAIN: init ────────────────────────────────────────────────────────────────

function initMain() {
  loadStrings();
  loadRecentLogs();
  initSSE();
  loadSettings();
  pollStatus();
  setInterval(pollStatus, 4000);
  setInterval(() => {
    if (document.getElementById('page-health').classList.contains('active')) loadHealth();
  }, 6000);
}

// ── BOOT ──────────────────────────────────────────────────────────────────────

(async () => {
  const savedLang = localStorage.getItem('eversoul_lang');
  if (savedLang) {
    LANG = savedLang;
  }

  await loadStrings();

  const proceedBoot = async () => {
    try {
      const r = await fetch('/web/api/setup/status');
      const d = await r.json();
      if (d.complete) {
        enterMain();
        return;
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
