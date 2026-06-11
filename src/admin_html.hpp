#pragma once

namespace eversoul::admin
{

inline constexpr const char* kAdminHtml = R"HTMLEOF(<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>EverSoul Admin</title>
<style>
:root{
  --bg:#0d0f14;--bg2:#141720;--bg3:#1c2030;--bg4:#242840;
  --border:#2a2f45;--border2:#3a4060;
  --cyan:#00d4ff;--cyan2:#00a8cc;--cyan3:#006688;
  --green:#00ff88;--green2:#00cc66;
  --yellow:#ffd700;--yellow2:#cc9900;
  --red:#ff4466;--red2:#cc2244;
  --purple:#aa66ff;--purple2:#7744cc;
  --text:#e0e8ff;--text2:#8899bb;--text3:#445566;
  --font:'Consolas','SF Mono','Fira Mono',monospace;
  --fs-base:clamp(16px,1.2vw,20px);
  --fs-sm:clamp(14px,1vw,18px);
  --fs-xs:clamp(13px,0.9vw,16px);
  --fs-lg:clamp(18px,1.5vw,24px);
  --fs-xl:clamp(22px,2vw,32px);
  --fs-2xl:clamp(28px,3vw,48px);
}
*{box-sizing:border-box;margin:0;padding:0}
html,body{height:100%;background:var(--bg);color:var(--text);font-family:var(--font);font-size:var(--fs-base);overflow:hidden}

/* ── LAYOUT ── */
#app{display:flex;height:100vh}
#sidebar{width:clamp(180px,16vw,260px);min-width:180px;background:var(--bg2);border-right:1px solid var(--border);display:flex;flex-direction:column;user-select:none}
#main{flex:1;display:flex;flex-direction:column;overflow:hidden}

/* ── SIDEBAR ── */
#logo{padding:clamp(12px,1.5vw,20px) clamp(10px,1.2vw,16px) clamp(8px,1vw,12px);border-bottom:1px solid var(--border);display:flex;flex-direction:column;align-items:flex-start;gap:6px}
#logo .logo-img{width:clamp(36px,3vw,52px);height:clamp(36px,3vw,52px);object-fit:contain}
#logo .brand{font-size:var(--fs-lg);font-weight:700;color:var(--cyan);letter-spacing:2px;text-transform:uppercase}
#logo .sub{font-size:var(--fs-xs);color:var(--text2);letter-spacing:1px}
#logo .badge{display:inline-block;padding:2px 8px;background:var(--cyan3);color:var(--cyan);border-radius:3px;font-size:var(--fs-xs);letter-spacing:1px}

nav{flex:1;padding:6px 0;overflow-y:auto}
.nav-section{padding:8px 14px 4px;font-size:var(--fs-xs);color:var(--text3);letter-spacing:2px;text-transform:uppercase}
.nav-item{display:flex;align-items:center;gap:10px;padding:clamp(7px,0.8vh,11px) 16px;cursor:pointer;color:var(--text2);border-left:3px solid transparent;transition:all .15s;font-size:var(--fs-base)}
.nav-item:hover{background:var(--bg3);color:var(--text)}
.nav-item.active{background:var(--bg3);color:var(--cyan);border-left-color:var(--cyan)}
.nav-icon{font-size:var(--fs-base);width:20px;text-align:center}

#sidebar-footer{padding:clamp(8px,1vw,14px) 16px;border-top:1px solid var(--border);font-size:var(--fs-xs);color:var(--text3)}
#lang-selector{display:flex;gap:6px;margin-top:8px}
.lang-btn{padding:3px 10px;background:var(--bg3);border:1px solid var(--border2);color:var(--text2);border-radius:3px;cursor:pointer;font-family:var(--font);font-size:var(--fs-xs);transition:all .15s}
.lang-btn:hover{border-color:var(--cyan2);color:var(--cyan)}
.lang-btn.active{background:var(--cyan3);border-color:var(--cyan);color:var(--cyan)}

/* ── TOPBAR ── */
#topbar{height:clamp(40px,5vh,56px);background:var(--bg2);border-bottom:1px solid var(--border);display:flex;align-items:center;padding:0 clamp(12px,1.5vw,24px);gap:16px;flex-shrink:0}
#topbar .page-title{font-size:var(--fs-lg);color:var(--text);font-weight:600;flex:1}
#status-indicator{display:flex;align-items:center;gap:6px;font-size:var(--fs-xs);color:var(--text2)}
.dot{width:clamp(7px,0.7vw,10px);height:clamp(7px,0.7vw,10px);border-radius:50%;background:var(--green);box-shadow:0 0 6px var(--green);animation:pulse 2s infinite}
@keyframes pulse{0%,100%{opacity:1}50%{opacity:.5}}
.dot.warn{background:var(--yellow);box-shadow:0 0 6px var(--yellow)}
.dot.fail{background:var(--red);box-shadow:0 0 6px var(--red);animation:none}
#uptime-display{font-size:var(--fs-xs);color:var(--text2)}

/* ── CONTENT ── */
#content{flex:1;overflow-y:auto;padding:20px}
.page{display:none}
.page.active{display:block}

/* ── CARDS ── */
.card{background:var(--bg2);border:1px solid var(--border);border-radius:6px;margin-bottom:16px}
.card-header{padding:12px 16px;border-bottom:1px solid var(--border);display:flex;align-items:center;gap:8px}
.card-title{font-size:12px;font-weight:600;color:var(--text2);letter-spacing:1px;text-transform:uppercase}
.card-body{padding:16px}

/* ── STAT GRID ── */
.stat-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(clamp(140px,14vw,200px),1fr));gap:clamp(8px,1vw,14px);margin-bottom:clamp(10px,1.2vh,18px)}
.stat-card{background:var(--bg2);border:1px solid var(--border);border-radius:6px;padding:clamp(12px,1.4vw,20px);position:relative;overflow:hidden}
.stat-card::before{content:'';position:absolute;top:0;left:0;right:0;height:2px}
.stat-card.cyan::before{background:linear-gradient(90deg,var(--cyan),transparent)}
.stat-card.green::before{background:linear-gradient(90deg,var(--green),transparent)}
.stat-card.yellow::before{background:linear-gradient(90deg,var(--yellow),transparent)}
.stat-card.purple::before{background:linear-gradient(90deg,var(--purple),transparent)}
.stat-card.red::before{background:linear-gradient(90deg,var(--red),transparent)}
.stat-label{font-size:var(--fs-xs);color:var(--text3);letter-spacing:1.5px;text-transform:uppercase;margin-bottom:8px}
.stat-value{font-size:var(--fs-2xl);font-weight:700;color:var(--text)}
.stat-sub{font-size:var(--fs-xs);color:var(--text2);margin-top:4px}

/* ── HEALTH ── */
.health-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(clamp(220px,22vw,320px),1fr));gap:clamp(7px,0.8vw,12px)}
.health-item{display:flex;align-items:center;justify-content:space-between;padding:clamp(8px,0.9vw,12px) 14px;background:var(--bg3);border:1px solid var(--border);border-radius:5px}
.health-label{font-size:var(--fs-base);color:var(--text)}
.health-badge{padding:3px 10px;border-radius:3px;font-size:var(--fs-xs);font-weight:600;letter-spacing:1px}
.badge-ok{background:rgba(0,255,136,.15);color:var(--green);border:1px solid rgba(0,255,136,.3)}
.badge-fail{background:rgba(255,68,102,.15);color:var(--red);border:1px solid rgba(255,68,102,.3)}
.badge-warn{background:rgba(255,215,0,.15);color:var(--yellow);border:1px solid rgba(255,215,0,.3)}
.badge-loading{background:rgba(136,153,187,.1);color:var(--text2);border:1px solid var(--border)}

/* ── LOG PANEL ── */
#log-controls{display:flex;gap:8px;margin-bottom:10px;align-items:center;flex-wrap:wrap}
#log-filter{flex:1;min-width:120px;background:var(--bg3);border:1px solid var(--border2);color:var(--text);padding:clamp(4px,0.5vh,8px) 10px;border-radius:4px;font-family:var(--font);font-size:var(--fs-base);outline:none}
#log-filter:focus{border-color:var(--cyan2)}
.btn{padding:clamp(4px,0.5vh,7px) clamp(10px,1vw,16px);background:var(--bg3);border:1px solid var(--border2);color:var(--text2);border-radius:4px;cursor:pointer;font-family:var(--font);font-size:var(--fs-xs);letter-spacing:.5px;transition:all .15s}
.btn:hover{border-color:var(--cyan2);color:var(--cyan)}
.btn.danger:hover{border-color:var(--red2);color:var(--red)}
#log-panel{height:calc(100vh - 240px);overflow-y:auto;background:var(--bg);border:1px solid var(--border);border-radius:5px;padding:8px;font-size:var(--fs-sm);line-height:1.6}
#log-panel::-webkit-scrollbar{width:6px}
#log-panel::-webkit-scrollbar-track{background:transparent}
#log-panel::-webkit-scrollbar-thumb{background:var(--border2);border-radius:3px}
.log-line{display:flex;gap:8px;padding:2px 0;border-bottom:1px solid rgba(42,47,69,.5)}
.log-line:hover{background:var(--bg2)}
.log-ts{color:var(--text3);white-space:nowrap;min-width:clamp(60px,6vw,80px)}
.log-id{color:var(--purple2);min-width:38px}
.log-tag{min-width:clamp(70px,7vw,100px);font-weight:600}
.log-text{color:var(--text);word-break:break-all}
.tag-START,.tag-STOP{color:var(--green)}
.tag-REQUEST{color:var(--cyan)}
.tag-RESPONSE{color:var(--cyan2)}
.tag-ERROR{color:var(--red)}
.tag-FIXTURE,.tag-OFFLINE_DATA{color:var(--yellow)}
.tag-WS{color:var(--purple)}
.tag-INJECTOR,.tag-ADB{color:var(--yellow)}
.log-line.filtered{display:none}

/* ── DB VIEWER ── */
#table-list{display:flex;flex-wrap:wrap;gap:8px;margin-bottom:16px}
.table-chip{padding:5px 14px;background:var(--bg3);border:1px solid var(--border2);color:var(--text2);border-radius:20px;cursor:pointer;font-size:12px;transition:all .15s}
.table-chip:hover{border-color:var(--cyan2);color:var(--cyan)}
.table-chip.active{background:var(--cyan3);border-color:var(--cyan);color:var(--cyan)}
#db-table-wrap{overflow-x:auto}
table{width:100%;border-collapse:collapse;font-size:12px}
thead th{background:var(--bg3);color:var(--text2);padding:8px 10px;text-align:left;border-bottom:2px solid var(--border2);white-space:nowrap;letter-spacing:.5px;font-size:11px;text-transform:uppercase}
tbody tr{border-bottom:1px solid var(--border)}
tbody tr:hover{background:var(--bg3)}
tbody td{padding:7px 10px;color:var(--text);max-width:280px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
td.null{color:var(--text3);font-style:italic}

/* ── FIXTURES ── */
#fixture-list{display:grid;grid-template-columns:repeat(auto-fill,minmax(280px,1fr));gap:8px}
.fixture-item{padding:10px 14px;background:var(--bg3);border:1px solid var(--border);border-radius:5px;cursor:pointer;transition:all .15s}
.fixture-item:hover{border-color:var(--cyan2);background:var(--bg4)}
.fixture-path{color:var(--cyan);font-size:12px;font-weight:600}
.fixture-size{color:var(--text3);font-size:10px;margin-top:3px}
.fixture-detail{margin-top:14px;display:none}
.fixture-detail.open{display:block}
#fixture-content{background:var(--bg);border:1px solid var(--border);border-radius:4px;padding:12px;max-height:400px;overflow-y:auto;white-space:pre;font-size:11px;color:var(--text2);line-height:1.6}

/* ── SETTINGS ── */
.setting-row{display:flex;align-items:center;justify-content:space-between;padding:clamp(8px,1vh,14px) 0;border-bottom:1px solid var(--border)}
.setting-label{font-size:var(--fs-base);color:var(--text)}
.setting-desc{font-size:var(--fs-xs);color:var(--text3);margin-top:2px}
.toggle{position:relative;display:inline-block;width:clamp(36px,3vw,44px);height:clamp(20px,2vh,24px)}
.toggle input{opacity:0;width:0;height:0}
.slider{position:absolute;inset:0;background:var(--bg4);border-radius:22px;cursor:pointer;transition:.3s;border:1px solid var(--border2)}
.toggle input:checked+.slider{background:var(--cyan3);border-color:var(--cyan)}
.slider:before{content:'';position:absolute;width:clamp(14px,1.3vw,18px);height:clamp(14px,1.3vw,18px);left:2px;top:2px;background:var(--text2);border-radius:50%;transition:.3s}
.toggle input:checked+.slider:before{transform:translateX(clamp(14px,1.3vw,18px));background:var(--cyan)}
input[type=text],input[type=number]{background:var(--bg3);border:1px solid var(--border2);color:var(--text);padding:clamp(4px,0.5vh,7px) 10px;border-radius:4px;font-family:var(--font);font-size:var(--fs-base);outline:none;width:clamp(180px,18vw,280px)}
input:focus{border-color:var(--cyan2)}
.btn-primary{background:var(--cyan3);border-color:var(--cyan2);color:var(--cyan);padding:clamp(5px,0.6vh,8px) clamp(14px,1.5vw,22px)}
.btn-primary:hover{background:rgba(0,212,255,.2)}
/* ── INJECTOR ── */
.device-chip{padding:clamp(5px,0.6vh,8px) clamp(10px,1vw,14px);background:var(--bg3);border:1px solid var(--border2);color:var(--text2);border-radius:4px;cursor:pointer;font-size:var(--fs-sm);margin-bottom:5px;transition:all .15s;display:flex;align-items:center;justify-content:space-between}
.device-chip:hover{border-color:var(--cyan2);color:var(--text)}
.device-chip.selected{background:var(--cyan3);border-color:var(--cyan);color:var(--cyan)}
#adb-cmd-input{flex:1;background:var(--bg);border:1px solid var(--border2);color:var(--text);padding:clamp(5px,0.6vh,8px) 10px;border-radius:4px;font-family:var(--font);font-size:var(--fs-sm);outline:none}
#adb-cmd-input:focus{border-color:var(--cyan2)}
#injector-log{height:clamp(160px,25vh,380px);overflow-y:auto;background:var(--bg);border:1px solid var(--border);border-radius:5px;padding:8px;font-size:var(--fs-sm);line-height:1.6}

/* ── SCROLLBAR GLOBAL ── */
::-webkit-scrollbar{width:6px;height:6px}
::-webkit-scrollbar-track{background:transparent}
::-webkit-scrollbar-thumb{background:var(--border2);border-radius:3px}

/* ── GLOW TEXT ── */
.glow-cyan{text-shadow:0 0 10px var(--cyan),0 0 20px var(--cyan2)}
.glow-green{text-shadow:0 0 10px var(--green),0 0 20px var(--green2)}

/* ── ABOUT MODAL ── */
#modal-about{position:fixed;inset:0;background:rgba(0,0,0,.72);display:flex;align-items:center;justify-content:center;z-index:9999}
#modal-box{background:var(--bg2);border:1px solid var(--border2);border-radius:8px;width:340px;overflow:hidden;box-shadow:0 0 50px rgba(0,212,255,.12)}
.modal-header{display:flex;align-items:center;justify-content:space-between;padding:13px 18px;border-bottom:1px solid var(--border);background:var(--bg3)}
.modal-header-title{font-size:12px;font-weight:600;color:var(--text);letter-spacing:1.5px;text-transform:uppercase}
.modal-close{background:none;border:none;color:var(--text2);cursor:pointer;font-size:16px;padding:2px 8px;border-radius:3px;font-family:var(--font);line-height:1;transition:all .15s}
.modal-close:hover{color:var(--text);background:var(--border2)}
.modal-body{padding:24px 20px}
.about-brand{font-size:19px;font-weight:700;color:var(--cyan);letter-spacing:3px;text-align:center;margin-bottom:6px}
.about-sub{font-size:10px;color:var(--text3);text-align:center;letter-spacing:2px;margin-bottom:20px;text-transform:uppercase}
.about-row{display:flex;align-items:center;justify-content:space-between;padding:10px 0;border-bottom:1px solid var(--border)}
.about-row:last-child{border-bottom:none}
.about-label{font-size:10px;color:var(--text3);letter-spacing:1.5px;text-transform:uppercase}
.about-value{font-size:15px;font-weight:700;color:var(--text)}
.about-value.lead{color:var(--cyan);text-shadow:0 0 8px var(--cyan)}
.about-btn{width:100%;padding:5px 0;background:var(--bg3);border:1px solid var(--border2);color:var(--text3);border-radius:4px;cursor:pointer;font-family:var(--font);font-size:11px;letter-spacing:.5px;transition:all .15s;margin-top:8px}
.about-btn:hover{border-color:var(--cyan2);color:var(--cyan)}
</style>
</head>
<body>
<div id="app">

<!-- SIDEBAR -->
<div id="sidebar">
  <div id="logo">
    <img class="logo-img" src="/admin/api/logo" alt="logo" onerror="this.style.display='none'"/>
    <div class="brand glow-cyan">EverSoul</div>
    <div class="sub" data-i18n="server.title">Offline Server</div>
    <div class="badge">ADMIN v1</div>
  </div>
  <nav>
    <div class="nav-section">MENU</div>
    <div class="nav-item active" data-page="dashboard">
      <span class="nav-icon">◈</span><span data-i18n="admin.dashboard">Dashboard</span>
    </div>
    <div class="nav-item" data-page="health">
      <span class="nav-icon">♥</span><span data-i18n="admin.health">Health</span>
    </div>
    <div class="nav-item" data-page="logs">
      <span class="nav-icon">▤</span><span data-i18n="admin.logs">Request Log</span>
    </div>
    <div class="nav-item" data-page="db">
      <span class="nav-icon">◉</span><span data-i18n="admin.db">Database</span>
    </div>
    <div class="nav-item" data-page="fixtures">
      <span class="nav-icon">◧</span><span data-i18n="admin.fixtures">Fixtures</span>
    </div>
    <div class="nav-item" data-page="settings">
      <span class="nav-icon">⚙</span><span data-i18n="admin.settings">Settings</span>
    </div>
    <div class="nav-item" data-page="injector">
      <span class="nav-icon">▶</span><span data-i18n="admin.injector">Injector</span>
    </div>
  </nav>
  <div id="sidebar-footer">
    <div id="lang-selector">
      <button class="lang-btn active" onclick="setLang('ko')">한국어</button>
      <button class="lang-btn" onclick="setLang('en')">EN</button>
      <button class="lang-btn" onclick="setLang('zh')">中文</button>
    </div>
    <button class="about-btn" onclick="openAbout()">ⓘ <span data-i18n="about.title">About</span></button>
  </div>
</div>

<!-- ABOUT MODAL -->
<div id="modal-about" style="display:none" onclick="if(event.target===this)closeAbout()">
  <div id="modal-box">
    <div class="modal-header">
      <span class="modal-header-title" data-i18n="about.title">About</span>
      <button class="modal-close" onclick="closeAbout()">✕</button>
    </div>
    <div class="modal-body">
      <div class="about-brand glow-cyan">EverSoul</div>
      <div class="about-sub" data-i18n="admin.title">Offline Admin Panel</div>
      <div class="about-row">
        <span class="about-label" data-i18n="about.original_creator">원제작자</span>
        <span class="about-value lead">少姜</span>
      </div>
      <div class="about-row">
        <span class="about-label" data-i18n="about.assistant">보조</span>
        <span class="about-value">nekoi</span>
      </div>
    </div>
  </div>
</div>

<!-- MAIN -->
<div id="main">
  <div id="topbar">
    <span class="page-title" id="topbar-title">Dashboard</span>
    <span id="status-indicator"><span class="dot" id="srv-dot"></span><span id="srv-label">Connecting...</span></span>
    <span id="uptime-display"></span>
  </div>

  <div id="content">

    <!-- DASHBOARD -->
    <div class="page active" id="page-dashboard">
      <div class="stat-grid" id="stat-grid">
        <div class="stat-card cyan">
          <div class="stat-label" data-i18n="server.port">Port</div>
          <div class="stat-value" id="s-port">–</div>
          <div class="stat-sub" data-i18n="server.mode">Mode</div>
        </div>
        <div class="stat-card green">
          <div class="stat-label" data-i18n="admin.requests">Requests</div>
          <div class="stat-value" id="s-reqs">0</div>
          <div class="stat-sub" id="s-reqs-sub">total</div>
        </div>
        <div class="stat-card yellow">
          <div class="stat-label" data-i18n="admin.uptime">Uptime</div>
          <div class="stat-value" id="s-uptime">0s</div>
          <div class="stat-sub" id="s-started">–</div>
        </div>
        <div class="stat-card purple">
          <div class="stat-label" data-i18n="admin.fixtures">Fixtures</div>
          <div class="stat-value" id="s-fix">–</div>
          <div class="stat-sub" id="s-fix-err"></div>
        </div>
        <div class="stat-card cyan">
          <div class="stat-label">DB</div>
          <div class="stat-value" id="s-db">–</div>
          <div class="stat-sub" id="s-db-path" style="font-size:9px;word-break:break-all"></div>
        </div>
        <div class="stat-card green">
          <div class="stat-label" data-i18n="admin.dashboard">Lang</div>
          <div class="stat-value" id="s-lang">–</div>
          <div class="stat-sub" data-i18n="ui.lang_prompt"></div>
        </div>
      </div>
      <div class="card">
        <div class="card-header"><span class="nav-icon">▤</span><span class="card-title" data-i18n="admin.logs">Recent Log</span></div>
        <div class="card-body">
          <div id="dash-log" style="height:220px;overflow-y:auto;font-size:12px;line-height:1.7;background:var(--bg);border-radius:4px;padding:8px"></div>
        </div>
      </div>
    </div>

    <!-- HEALTH -->
    <div class="page" id="page-health">
      <div class="card">
        <div class="card-header"><span class="nav-icon">♥</span><span class="card-title" data-i18n="admin.health">Health Check</span></div>
        <div class="card-body">
          <div class="health-grid" id="health-grid"></div>
        </div>
      </div>
    </div>

    <!-- LOGS -->
    <div class="page" id="page-logs">
      <div id="log-controls">
        <input id="log-filter" placeholder="Filter…" oninput="filterLog(this.value)"/>
        <button class="btn" onclick="toggleLogPause()" id="btn-pause" data-i18n="admin.pause_log">Pause</button>
        <button class="btn danger" onclick="clearLog()" data-i18n="admin.clear_log">Clear</button>
      </div>
      <div id="log-panel"></div>
    </div>

    <!-- DB -->
    <div class="page" id="page-db">
      <div class="card">
        <div class="card-header"><span class="nav-icon">◉</span><span class="card-title" data-i18n="admin.db">Database</span></div>
        <div class="card-body">
          <div id="table-list"></div>
          <div id="db-table-wrap"><div style="color:var(--text3)" data-i18n="admin.no_data">No table selected.</div></div>
        </div>
      </div>
    </div>

    <!-- FIXTURES -->
    <div class="page" id="page-fixtures">
      <div class="card">
        <div class="card-header"><span class="nav-icon">◧</span><span class="card-title" data-i18n="admin.fixtures">Fixtures</span></div>
        <div class="card-body">
          <div id="fixture-list"></div>
          <div class="fixture-detail" id="fixture-detail">
            <div id="fixture-detail-title" style="color:var(--cyan);margin-bottom:8px;font-size:12px"></div>
            <pre id="fixture-content"></pre>
          </div>
        </div>
      </div>
    </div>

    <!-- SETTINGS -->
    <div class="page" id="page-settings">
      <div class="card">
        <div class="card-header"><span class="nav-icon">⚙</span><span class="card-title" data-i18n="admin.settings">Settings</span></div>
        <div class="card-body">
          <div class="setting-row">
            <div><div class="setting-label" data-i18n="admin.proxy_on">Proxy</div>
              <div class="setting-desc" data-i18n="server.game_url"></div></div>
            <label class="toggle"><input type="checkbox" id="toggle-proxy" onchange="applyProxy(this.checked)"><span class="slider"></span></label>
          </div>
          <div class="setting-row">
            <div><div class="setting-label" data-i18n="server.game_url">Game Server URL</div></div>
            <input type="text" id="set-game-url"/>
          </div>
          <div class="setting-row">
            <div><div class="setting-label" data-i18n="server.data_dir">Data Dir</div></div>
            <input type="text" id="set-data-dir"/>
          </div>
          <div style="margin-top:14px;display:flex;gap:8px">
            <button class="btn btn-primary" onclick="applySettings()" data-i18n="admin.apply">Apply</button>
          </div>
        </div>
      </div>
      <div class="card" style="margin-top:16px">
        <div class="card-header"><span class="nav-icon">◈</span><span class="card-title" data-i18n="admin.adb_title">ADB Path</span></div>
        <div class="card-body">
          <div class="setting-row" style="margin-bottom:12px">
            <div>
              <div class="setting-label" data-i18n="admin.adb_current">Current Path</div>
              <div id="adb-current-display" style="color:var(--cyan);font-size:11px;margin-top:5px;word-break:break-all"></div>
            </div>
          </div>
          <div style="display:flex;gap:8px;align-items:center">
            <input type="text" id="input-adb-path" style="flex:1" data-i18n-placeholder="admin.adb_input_hint" placeholder="Enter ADB executable path"/>
            <button class="btn btn-primary" onclick="saveAdbPath()" data-i18n="admin.adb_save">Save</button>
            <button class="btn" onclick="clearAdbPath()" data-i18n="admin.adb_clear">Clear</button>
          </div>
          <div id="adb-save-msg" style="font-size:11px;color:var(--green);margin-top:6px;height:16px"></div>
        </div>
      </div>
    </div>

    <!-- INJECTOR -->
    <div class="page" id="page-injector">
      <div class="card">
        <div class="card-header"><span class="nav-icon">▶</span><span class="card-title" data-i18n="admin.injector">Injector</span></div>
        <div class="card-body">
          <!-- 기기 목록 -->
          <div style="margin-bottom:14px">
            <div style="display:flex;gap:8px;align-items:center;margin-bottom:8px">
              <span class="setting-label" data-i18n="admin.injector_devices">Connected Devices</span>
              <button class="btn" onclick="loadInjectorDevices()">↻</button>
            </div>
            <div id="injector-device-list" style="font-size:var(--fs-sm);color:var(--text2)">–</div>
          </div>
          <!-- 에버소울/frida 체크 -->
          <div id="injector-check-result" style="font-size:var(--fs-sm);color:var(--text2);margin-bottom:14px;line-height:2"></div>
          <!-- 실행/중지 -->
          <div style="display:flex;gap:8px;align-items:center;flex-wrap:wrap">
            <button class="btn btn-primary" onclick="runInjector()" id="btn-inject" data-i18n="admin.injector_run">Run Injector</button>
            <button class="btn danger" onclick="stopInjector()" data-i18n="admin.injector_stop">Stop</button>
            <span id="injector-status-text" style="font-size:var(--fs-sm);color:var(--text2)"></span>
          </div>
        </div>
      </div>
      <!-- ADB 직접 명령 + 로그 -->
      <div class="card" style="margin-top:14px">
        <div class="card-header"><span class="nav-icon">▤</span><span class="card-title" data-i18n="admin.injector_log">ADB Log</span></div>
        <div class="card-body">
          <div style="display:flex;gap:8px;margin-bottom:10px">
            <input id="adb-cmd-input" placeholder="adb command (e.g. devices, -s serial shell getprop ro.product.model)" onkeydown="if(event.key==='Enter')sendAdbCmd()"/>
            <button class="btn btn-primary" onclick="sendAdbCmd()" data-i18n="admin.adb_exec">Run</button>
          </div>
          <div id="injector-log" class="injector-log"></div>
        </div>
      </div>
    </div>

  </div><!-- /content -->
</div><!-- /main -->
</div><!-- /app -->

<script>
// ── i18n ─────────────────────────────────────────────────────────────────
let LANG = 'ko';
let STRINGS = {};

async function loadStrings(){
  try{
    const r = await fetch('/admin/api/i18n');
    STRINGS = await r.json();
    applyI18n();
  }catch(e){}
}

function t(key){
  const entry = STRINGS[key];
  if(!entry) return key;
  return entry[LANG] || entry['en'] || key;
}

function applyI18n(){
  document.querySelectorAll('[data-i18n]').forEach(el=>{
    const k = el.getAttribute('data-i18n');
    if(k) el.textContent = t(k);
  });
  document.querySelectorAll('[data-i18n-placeholder]').forEach(el=>{
    const k = el.getAttribute('data-i18n-placeholder');
    if(k) el.placeholder = t(k);
  });
  document.querySelectorAll('.lang-btn').forEach(b=>{
    b.classList.toggle('active', b.textContent.trim()===(LANG==='ko'?'한국어':LANG==='en'?'EN':'中文'));
  });
}

function setLang(l){
  LANG = l;
  fetch('/admin/api/config',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({lang:l})}).catch(()=>{});
  applyI18n();
}

// ── NAVIGATION ───────────────────────────────────────────────────────────
document.querySelectorAll('.nav-item').forEach(item=>{
  item.addEventListener('click',()=>{
    document.querySelectorAll('.nav-item').forEach(n=>n.classList.remove('active'));
    document.querySelectorAll('.page').forEach(p=>p.classList.remove('active'));
    item.classList.add('active');
    const pg = 'page-'+item.getAttribute('data-page');
    document.getElementById(pg).classList.add('active');
    document.getElementById('topbar-title').textContent = item.querySelector('[data-i18n]')?.textContent || '';
    if(item.getAttribute('data-page')==='db') loadDbTables();
    if(item.getAttribute('data-page')==='fixtures') loadFixtures();
    if(item.getAttribute('data-page')==='health') loadHealth();
    if(item.getAttribute('data-page')==='settings') { loadSettings(); loadAdbCurrent(); }
    if(item.getAttribute('data-page')==='injector') { loadInjectorDevices(); pollInjectorStatus(); }
  });
});

// ── STATUS POLL ──────────────────────────────────────────────────────────
let startTime = null;
let uptimeInterval = null;

async function pollStatus(){
  try{
    const r = await fetch('/admin/api/status');
    const d = await r.json();
    document.getElementById('s-port').textContent = d.port || '–';
    document.getElementById('s-reqs').textContent = d.request_count || '0';
    document.getElementById('s-fix').textContent = d.fixture_count || '0';
    document.getElementById('s-fix-err').textContent = d.fixture_errors > 0 ? d.fixture_errors+' errors' : '';
    document.getElementById('s-db').textContent = d.db_tables || '–';
    document.getElementById('s-db-path').textContent = d.db_path || '';
    document.getElementById('s-lang').textContent = d.lang || '–';
    const dot = document.getElementById('srv-dot');
    const lbl = document.getElementById('srv-label');
    dot.className = 'dot';
    lbl.textContent = t('health.ok');
    if(!startTime && d.started_at){ startTime = d.started_at; startUptimeTick(startTime); }
    const modeEl = document.getElementById('s-reqs-sub');
    modeEl.textContent = d.proxy_enabled ? t('server.mode_proxy') : t('server.mode_offline');
  }catch(e){
    document.getElementById('srv-dot').className='dot fail';
    document.getElementById('srv-label').textContent = t('health.fail');
  }
}

function startUptimeTick(since){
  if(uptimeInterval) clearInterval(uptimeInterval);
  uptimeInterval = setInterval(()=>{
    const sec = Math.floor((Date.now()/1000) - since);
    const h=Math.floor(sec/3600), m=Math.floor((sec%3600)/60), s=sec%60;
    document.getElementById('s-uptime').textContent = h>0?`${h}h ${m}m`:`${m}m ${s}s`;
    document.getElementById('s-started').textContent = new Date(since*1000).toLocaleTimeString();
    document.getElementById('uptime-display').textContent = h>0?`${h}h ${m}m ${s}s`:`${m}m ${s}s`;
  }, 1000);
}

setInterval(pollStatus, 3000);
pollStatus();

// ── SSE LOG ──────────────────────────────────────────────────────────────
let logPaused = false;
let logFilter = '';
const MAX_LOG_LINES = 1000;

function tagClass(tag){ return 'tag-'+tag.replace(/[^A-Z0-9_]/gi,''); }

function appendLogLine(entry, panel){
  const div = document.createElement('div');
  div.className = 'log-line';
  const ts = entry.timestamp||'';
  const id = '#'+entry.id;
  const tag = entry.tag||'';
  const text = entry.text||'';
  div.innerHTML =
    `<span class="log-ts">${ts.slice(11,19)||ts}</span>`+
    `<span class="log-id">${id}</span>`+
    `<span class="log-tag ${tagClass(tag)}">[${tag}]</span>`+
    `<span class="log-text">${escHtml(text)}</span>`;
  if(logFilter && !text.toLowerCase().includes(logFilter) && !tag.toLowerCase().includes(logFilter))
    div.classList.add('filtered');
  panel.appendChild(div);
  while(panel.children.length > MAX_LOG_LINES) panel.removeChild(panel.firstChild);
  return div;
}

function escHtml(s){
  return s.replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
}

function initSSE(){
  const src = new EventSource('/admin/api/logs/stream');
  const logPanel = document.getElementById('log-panel');
  const dashLog  = document.getElementById('dash-log');
  src.onmessage = e=>{
    const entry = JSON.parse(e.data);
    if(!logPaused){
      appendLogLine(entry, logPanel);
      logPanel.scrollTop = logPanel.scrollHeight;
    }
    appendLogLine(entry, dashLog);
    dashLog.scrollTop = dashLog.scrollHeight;
    while(dashLog.children.length > 80) dashLog.removeChild(dashLog.firstChild);
    if(entry.tag==='INJECTOR'||entry.tag==='ADB'){
      const inj = document.getElementById('injector-log');
      if(inj){ appendLogLine(entry, inj); inj.scrollTop = inj.scrollHeight;
        while(inj.children.length > 500) inj.removeChild(inj.firstChild); }
    }
  };
  src.onerror = ()=>{ setTimeout(initSSE, 3000); src.close(); };
}

async function loadRecentLogs(){
  try{
    const r = await fetch('/admin/api/logs/recent?n=200');
    const logs = await r.json();
    const panel = document.getElementById('log-panel');
    const dashLog = document.getElementById('dash-log');
    logs.forEach(e=>{ appendLogLine(e, panel); appendLogLine(e, dashLog); });
    panel.scrollTop = panel.scrollHeight;
    dashLog.scrollTop = dashLog.scrollHeight;
  }catch(e){}
}

function toggleLogPause(){
  logPaused = !logPaused;
  const btn = document.getElementById('btn-pause');
  btn.textContent = logPaused ? t('admin.resume_log') : t('admin.pause_log');
  btn.style.color = logPaused ? 'var(--yellow)' : '';
}

function clearLog(){
  document.getElementById('log-panel').innerHTML='';
  fetch('/admin/api/logs/clear',{method:'POST'}).catch(()=>{});
}

function filterLog(v){
  logFilter = v.toLowerCase();
  document.querySelectorAll('#log-panel .log-line').forEach(el=>{
    const text = el.querySelector('.log-text')?.textContent.toLowerCase()||'';
    const tag  = el.querySelector('.log-tag')?.textContent.toLowerCase()||'';
    el.classList.toggle('filtered', !!logFilter && !text.includes(logFilter) && !tag.includes(logFilter));
  });
}

// ── HEALTH ───────────────────────────────────────────────────────────────
async function loadHealth(){
  const grid = document.getElementById('health-grid');
  grid.innerHTML = '';
  try{
    const r = await fetch('/admin/api/health');
    const checks = await r.json();
    checks.forEach(c=>{
      const cls = c.status==='ok'?'badge-ok':c.status==='warn'?'badge-warn':'badge-fail';
      const label = c.status==='ok'?t('health.ok'):c.status==='warn'?t('health.warn'):t('health.fail');
      grid.innerHTML +=
        `<div class="health-item"><span class="health-label">${escHtml(c.name)}${c.detail?'<br><span style="font-size:10px;color:var(--text3)">'+escHtml(c.detail)+'</span>':''}</span>`+
        `<span class="health-badge ${cls}">${label}</span></div>`;
    });
  }catch(e){
    grid.innerHTML='<div style="color:var(--red)">'+t('health.fail')+'</div>';
  }
}

// ── DB VIEWER ────────────────────────────────────────────────────────────
let currentTable = null;

async function loadDbTables(){
  try{
    const r = await fetch('/admin/api/db/tables');
    const tables = await r.json();
    const list = document.getElementById('table-list');
    list.innerHTML = '';
    tables.forEach(t2=>{
      const chip = document.createElement('div');
      chip.className='table-chip'+(currentTable===t2.name?' active':'');
      chip.textContent = t2.name+' ('+t2.rows+')';
      chip.onclick = ()=>loadTableData(t2.name);
      list.appendChild(chip);
    });
  }catch(e){}
}

async function loadTableData(name){
  currentTable = name;
  document.querySelectorAll('.table-chip').forEach(c=>c.classList.toggle('active',c.textContent.startsWith(name+' ')));
  const wrap = document.getElementById('db-table-wrap');
  wrap.innerHTML = '<div style="color:var(--text2)">'+t('admin.loading')+'</div>';
  try{
    const r = await fetch('/admin/api/db/table/'+encodeURIComponent(name));
    const d = await r.json();
    if(!d.rows||d.rows.length===0){ wrap.innerHTML='<div style="color:var(--text3)">'+t('admin.no_data')+'</div>'; return; }
    let html='<table><thead><tr>';
    d.columns.forEach(c=>{ html+=`<th>${escHtml(c)}</th>`; });
    html+='</tr></thead><tbody>';
    d.rows.forEach(row=>{
      html+='<tr>';
      d.columns.forEach(col=>{
        const v=row[col];
        html+=(v===null||v===undefined)?'<td class="null">NULL</td>':`<td title="${escHtml(String(v))}">${escHtml(String(v))}</td>`;
      });
      html+='</tr>';
    });
    html+='</tbody></table>';
    wrap.innerHTML=html;
  }catch(e){ wrap.innerHTML='<div style="color:var(--red)">Error</div>'; }
}

// ── FIXTURES ─────────────────────────────────────────────────────────────
async function loadFixtures(){
  try{
    const r = await fetch('/admin/api/fixtures');
    const list = await r.json();
    const el = document.getElementById('fixture-list');
    el.innerHTML='';
    list.forEach(f=>{
      const d=document.createElement('div');
      d.className='fixture-item';
      d.innerHTML=`<div class="fixture-path">${escHtml(f.path)}</div><div class="fixture-size">${f.bytes} bytes</div>`;
      d.onclick=()=>loadFixture(f.path);
      el.appendChild(d);
    });
    document.getElementById('fixture-detail').classList.remove('open');
  }catch(e){}
}

async function loadFixture(path){
  document.querySelectorAll('.fixture-item').forEach(i=>{
    i.style.borderColor = i.querySelector('.fixture-path').textContent===path?'var(--cyan)':'';
  });
  document.getElementById('fixture-detail-title').textContent = path;
  document.getElementById('fixture-detail').classList.add('open');
  document.getElementById('fixture-content').textContent = t('admin.loading');
  try{
    const r = await fetch('/admin/api/fixtures/'+encodeURIComponent(path));
    const text = await r.text();
    document.getElementById('fixture-content').textContent = text;
  }catch(e){
    document.getElementById('fixture-content').textContent = t('health.fail');
  }
}

// ── SETTINGS ─────────────────────────────────────────────────────────────
async function loadSettings(){
  try{
    const r = await fetch('/admin/api/status');
    const d = await r.json();
    document.getElementById('toggle-proxy').checked = !!d.proxy_enabled;
    document.getElementById('set-game-url').value = d.game_server_url||'';
    document.getElementById('set-data-dir').value = d.data_dir||'';
  }catch(e){}
}

async function applyProxy(v){
  await fetch('/admin/api/config',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({proxy_enabled:v})}).catch(()=>{});
  pollStatus();
}

async function applySettings(){
  const body={
    game_server_url: document.getElementById('set-game-url').value,
    data_dir:        document.getElementById('set-data-dir').value,
  };
  await fetch('/admin/api/config',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify(body)}).catch(()=>{});
  pollStatus();
}

// ── ADB PATH ─────────────────────────────────────────────────────────────
async function loadAdbCurrent(){
  try{
    const r = await fetch('/admin/api/adb/current');
    const d = await r.json();
    const display = document.getElementById('adb-current-display');
    const input   = document.getElementById('input-adb-path');
    display.textContent = d.path || t('admin.adb_not_set');
    input.value = d.path || '';
  }catch(e){}
}

async function saveAdbPath(){
  const path = document.getElementById('input-adb-path').value.trim();
  const msg  = document.getElementById('adb-save-msg');
  await fetch('/admin/api/adb/set',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({path})}).catch(()=>{});
  document.getElementById('adb-current-display').textContent = path || t('admin.adb_not_set');
  msg.textContent = t('admin.adb_saved');
  setTimeout(()=>{ msg.textContent=''; }, 2000);
}

async function clearAdbPath(){
  const msg = document.getElementById('adb-save-msg');
  await fetch('/admin/api/adb/set',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({path:''})}).catch(()=>{});
  document.getElementById('input-adb-path').value = '';
  document.getElementById('adb-current-display').textContent = t('admin.adb_not_set');
  msg.textContent = t('admin.adb_saved');
  setTimeout(()=>{ msg.textContent=''; }, 2000);
}

// ── INJECTOR ─────────────────────────────────────────────────────────────
let selectedSerial = '';

async function loadInjectorDevices(){
  const el = document.getElementById('injector-device-list');
  el.innerHTML = '<span style="color:var(--text3)">'+t('admin.loading')+'</span>';
  try{
    const r = await fetch('/admin/api/injector/devices');
    const d = await r.json();
    if(!d.devices||d.devices.length===0){
      el.innerHTML='<span style="color:var(--text3)">'+t('admin.no_data')+'</span>';
      return;
    }
    el.innerHTML = d.devices.map(s=>{
      const sel = s===selectedSerial;
      return `<div class="device-chip${sel?' selected':''}" onclick="selectSerial('${escHtml(s)}')">`+
        `<span>${escHtml(s)}</span>`+
        `<span style="font-size:var(--fs-xs);color:${sel?'var(--cyan)':'var(--text3)'}">◈</span></div>`;
    }).join('');
    await loadInjectorCheck();
  }catch(e){ el.innerHTML='<span style="color:var(--red)">Error</span>'; }
}

function selectSerial(s){
  selectedSerial = selectedSerial===s ? '' : s;
  loadInjectorDevices();
}

async function loadInjectorCheck(){
  const el = document.getElementById('injector-check-result');
  try{
    const url='/admin/api/injector/check'+(selectedSerial?'?serial='+encodeURIComponent(selectedSerial):'');
    const r = await fetch(url);
    const d = await r.json();
    const ok = v=>`<span style="color:${v?'var(--green)':'var(--red)'}">${v?'✓':'✗'}</span>`;
    el.innerHTML=
      `${ok(d.adb_ok)} ADB: <span style="color:var(--text3);font-size:var(--fs-xs)">${escHtml(d.adb)}</span><br>`+
      `${ok(!!d.serial)} Device: <span style="color:var(--cyan)">${escHtml(d.serial||'none')}</span><br>`+
      `${ok(d.eversoul)} com.kakaogames.eversoul<br>`+
      `${ok(d.frida_server)} frida-server`;
  }catch(e){ el.innerHTML=''; }
}

async function runInjector(){
  const btn=document.getElementById('btn-inject');
  btn.disabled=true;
  document.getElementById('injector-status-text').textContent=t('admin.loading');
  try{
    const body=selectedSerial?{serial:selectedSerial}:{};
    const r=await fetch('/admin/api/injector/run',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify(body)});
    const d=await r.json();
    document.getElementById('injector-status-text').textContent=d.ok?'Running…':(d.reason||'Error');
    if(d.ok) setTimeout(pollInjectorStatus,2000);
  }catch(e){ document.getElementById('injector-status-text').textContent='Error'; }
  btn.disabled=false;
}

async function stopInjector(){
  await fetch('/admin/api/injector/stop',{method:'POST'}).catch(()=>{});
  document.getElementById('injector-status-text').textContent='Stopped';
}

async function pollInjectorStatus(){
  try{
    const r=await fetch('/admin/api/injector/status');
    const d=await r.json();
    const el=document.getElementById('injector-status-text');
    if(el) el.textContent=d.running?'Running…':'Idle';
    if(d.running) setTimeout(pollInjectorStatus,2000);
  }catch(e){}
}

async function sendAdbCmd(){
  const input=document.getElementById('adb-cmd-input');
  const cmd=input.value.trim();
  if(!cmd) return;
  const inj=document.getElementById('injector-log');
  try{
    const r=await fetch('/admin/api/injector/adb',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({cmd})});
    const d=await r.json();
    if(inj){ inj.scrollTop=inj.scrollHeight; }
  }catch(e){
    if(inj){ const div=document.createElement('div'); div.style.color='var(--red)'; div.textContent='Error'; inj.appendChild(div); }
  }
  input.value='';
}

// ── ABOUT MODAL ──────────────────────────────────────────────────────────
function openAbout()  { document.getElementById('modal-about').style.display='flex'; }
function closeAbout() { document.getElementById('modal-about').style.display='none'; }
document.addEventListener('keydown', e=>{ if(e.key==='Escape') closeAbout(); });

// ── INIT ─────────────────────────────────────────────────────────────────
(async()=>{
  await loadStrings();
  await loadRecentLogs();
  initSSE();
  loadSettings();
  loadAdbCurrent();
  pollStatus();
  setInterval(()=>{ if(document.getElementById('page-health').classList.contains('active')) loadHealth(); }, 5000);
})();
</script>
</body>
</html>
)HTMLEOF";

} // namespace eversoul::admin
