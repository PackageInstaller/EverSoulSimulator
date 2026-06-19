'use strict';

var AGREE = 'zinny://AgreementOk?E001=y&E002=y&E006=y&AN001=y&AN002=y&N002=y&N003=y&joinMemberShip=n&setAdAgreement=n';
var currentLang = 'ko';
var selectedAcctId = null;

function t(key) {
  var dict = I18N[currentLang] || I18N['ko'];
  return dict[key] !== undefined ? dict[key] : (I18N['ko'][key] || key);
}

function applyI18n() {
  document.querySelectorAll('[data-i18n]').forEach(function(el) {
    el.textContent = t(el.getAttribute('data-i18n'));
  });
  document.querySelectorAll('[data-i18n-placeholder]').forEach(function(el) {
    el.placeholder = t(el.getAttribute('data-i18n-placeholder'));
  });
}

function esc(s) {
  return String(s).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
}

function idpLabel(code) {
  if (code === 'kakaocapri') return t('idp.kakao');
  if (code === 'google')     return 'Google';
  return t('idp.guest');
}

function fmtDate(ts) {
  if (!ts) return '';
  var localeMap = { ko: 'ko-KR', en: 'en-US', zh: 'zh-CN', ru: 'ru-RU', de: 'de-DE', fr: 'fr-FR', vi: 'vi-VN' };
  var locale = localeMap[currentLang] || 'en-US';
  return new Date(Number(ts)).toLocaleDateString(locale);
}

function _updatePlayBar() {
  var btn  = document.getElementById('btn-play');
  var hint = document.getElementById('play-hint');
  if (!btn) return;
  if (selectedAcctId) {
    btn.disabled = false;
    btn.classList.add('play-ready');
    if (hint) hint.style.display = 'none';
  } else {
    btn.disabled = true;
    btn.classList.remove('play-ready');
    if (hint) hint.style.display = '';
  }
}

function pickAcct(id) {
  selectedAcctId = id;
  document.querySelectorAll('.acct-row').forEach(function(row) {
    row.classList.toggle('selected', row.dataset.id === id);
  });
  _updatePlayBar();
}

async function playSelected() {
  if (!selectedAcctId) return;
  var btn = document.getElementById('btn-play');
  if (btn) btn.disabled = true;
  await fetch('/web/api/accounts/' + encodeURIComponent(selectedAcctId) + '/select', {
    method: 'POST'
  }).catch(function() {});
  location.replace(AGREE);
}

async function load() {
  var el = document.getElementById('acct-list');
  el.innerHTML = '<div class="acct-empty"><span class="t-spinner"></span> ' + t('acct.loading') + '</div>';
  selectedAcctId = null;
  _updatePlayBar();
  try {
    var res  = await fetch('/web/api/accounts');
    var list = await res.json();
    if (!Array.isArray(list) || list.length === 0) {
      el.innerHTML = '<div class="acct-empty">' + t('acct.empty') + '</div>';
      return;
    }
    el.innerHTML = list.map(function(a) {
      return '<div class="acct-row" data-id="' + esc(a.id) + '" onclick="pickAcct(\'' + esc(a.id) + '\')">' +
        '<div class="acct-pick-indicator">◈</div>' +
        '<div class="acct-info">' +
          '<div class="acct-name">' + esc(a.nickname) +
            (a.active ? '<span class="badge badge-ok" style="margin-left:6px;font-size:9px;letter-spacing:.5px">' + esc(t('acct.current_badge')) + '</span>' : '') +
          '</div>' +
          '<div class="acct-meta">' + esc(idpLabel(a.idp_code)) + ' · ' + esc(a.player_id) +
            ' · ' + esc(t('acct.hero_count')) + ' ' + esc(String(a.hero_count || 0)) +
            (a.last_login ? ' · ' + esc(fmtDate(a.last_login)) : '') +
          '</div>' +
        '</div>' +
        '<div class="acct-actions">' +
          '<button class="btn btn-danger acct-del-btn" onclick="event.stopPropagation();delAcct(\'' + esc(a.id) + '\')">' + esc(t('acct.delete_btn')) + '</button>' +
        '</div>' +
      '</div>';
    }).join('');
    var active = list.find(function(a) { return a.active; });
    if (active) { pickAcct(active.id); }
  } catch (e) {
    el.innerHTML = '<div class="acct-empty" style="color:var(--color-red)">' + esc(t('acct.error')) + '</div>';
  }
}

async function delAcct(id) {
  if (!confirm(t('acct.delete_confirm'))) return;
  await fetch('/web/api/accounts/' + encodeURIComponent(id), { method: 'DELETE' }).catch(function() {});
  if (selectedAcctId === id) { selectedAcctId = null; _updatePlayBar(); }
  load();
}

async function createAccount() {
  var nick = document.getElementById('new-nick').value.trim();
  var sts  = document.getElementById('create-status');
  if (!nick) {
    sts.className = 'acct-status err';
    sts.textContent = t('new_acct.nick_required');
    return;
  }
  sts.className = 'acct-status';
  sts.textContent = t('new_acct.creating');
  try {
    var profile = document.getElementById('new-profile').value;
    var idp     = document.getElementById('new-idp').value;
    var pid     = (document.getElementById('new-playerid').value || '').trim();
    var payload = { nickname: nick, idp_code: idp, profile_source: profile };
    if (pid) payload.player_id = pid;
    var res  = await fetch('/web/api/accounts', {
      method:  'POST',
      headers: { 'Content-Type': 'application/json' },
      body:    JSON.stringify(payload)
    });
    var data = await res.json();
    if (!res.ok || !data.id) {
      sts.className = 'acct-status err';
      sts.textContent = t('new_acct.create_fail') + ' (' + res.status + ')';
      return;
    }
    sts.textContent = '';
    selectedAcctId = data.id;
    await playSelected();
  } catch (e) {
    sts.className = 'acct-status err';
    sts.textContent = t('new_acct.server_error');
  }
}

(async function init() {
  try {
    var cr = await fetch('/web/api/config');
    var cd = await cr.json();
    if (cd.lang && I18N[cd.lang]) {
      currentLang = cd.lang;
      document.documentElement.lang = cd.lang;
    }
  } catch (_) {}
  applyI18n();
  _updatePlayBar();
  load();
})();
