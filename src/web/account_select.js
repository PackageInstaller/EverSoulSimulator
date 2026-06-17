'use strict';

var AGREE = 'zinny://AgreementOk?E001=y&E002=y&E006=y&AN001=y&AN002=y&N002=y&N003=y&joinMemberShip=n&setAdAgreement=n';
var LANG_KEY = 'acct_lang';


var currentLang = 'ko';

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

function updateLangButtons() {
  ['ko', 'en', 'zh', 'ru', 'de', 'fr', 'vi'].forEach(function(l) {
    var btn = document.getElementById('lbtn-' + l);
    if (!btn) return;
    if (l === currentLang) btn.classList.add('active');
    else btn.classList.remove('active');
  });
}

function setLang(lang) {
  if (!I18N[lang]) return;
  currentLang = lang;
  localStorage.setItem(LANG_KEY, lang);
  document.documentElement.lang = lang;
  applyI18n();
  updateLangButtons();
  load();
}

function initLang(lang) {
  var overlay = document.getElementById('lang-overlay');
  if (overlay && overlay.open) overlay.close();
  setLang(lang);
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

async function load() {
  var el = document.getElementById('acct-list');
  el.innerHTML = '<div class="acct-empty"><span class="t-spinner"></span> ' + t('acct.loading') + '</div>';
  try {
    var res  = await fetch('/web/api/accounts');
    var list = await res.json();
    if (!Array.isArray(list) || list.length === 0) {
      el.innerHTML = '<div class="acct-empty">' + t('acct.empty') + '</div>';
      return;
    }
    el.innerHTML = list.map(function(a) {
      var isActive = a.active;
      return '<div class="acct-row' + (isActive ? ' active' : '') + '">' +
        '<div class="acct-info">' +
          '<div class="acct-name">' + esc(a.nickname) +
            (isActive ? '<span class="badge badge-ok" style="margin-left:6px;font-size:9px;letter-spacing:.5px">' + esc(t('acct.current_badge')) + '</span>' : '') +
          '</div>' +
          '<div class="acct-meta">' + esc(idpLabel(a.idp_code)) + ' · ' + esc(a.player_id) +
            (a.last_login ? ' · ' + esc(fmtDate(a.last_login)) : '') +
          '</div>' +
        '</div>' +
        '<div class="acct-actions">' +
          (isActive ? '' : '<button class="btn btn-primary" onclick="selectAcct(\'' + esc(a.id) + '\')">' + esc(t('acct.select_btn')) + '</button>') +
          '<button class="btn btn-danger" onclick="delAcct(\'' + esc(a.id) + '\')">' + esc(t('acct.delete_btn')) + '</button>' +
        '</div>' +
      '</div>';
    }).join('');
  } catch (e) {
    el.innerHTML = '<div class="acct-empty" style="color:var(--color-red)">' + esc(t('acct.error')) + '</div>';
  }
}

async function selectAcct(id) {
  await fetch('/web/api/accounts/' + encodeURIComponent(id) + '/select', {
    method: 'POST'
  }).catch(function() {});
  location.replace(AGREE);
}

async function delAcct(id) {
  if (!confirm(t('acct.delete_confirm'))) return;
  await fetch('/web/api/accounts/' + encodeURIComponent(id), { method: 'DELETE' }).catch(function() {});
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
    var res  = await fetch('/web/api/accounts', {
      method:  'POST',
      headers: { 'Content-Type': 'application/json' },
      body:    JSON.stringify({ nickname: nick, idpCode: 'zd3' })
    });
    var data = await res.json();
    if (!res.ok || !data.id) {
      sts.className = 'acct-status err';
      sts.textContent = t('new_acct.create_fail') + ' (' + res.status + ')';
      return;
    }
    sts.textContent = '';
    await fetch('/web/api/accounts/' + encodeURIComponent(data.id) + '/select', {
      method: 'POST'
    }).catch(function() {});
    location.replace(AGREE);
  } catch (e) {
    sts.className = 'acct-status err';
    sts.textContent = t('new_acct.server_error');
  }
}

(function init() {
  var saved = localStorage.getItem(LANG_KEY);
  if (saved && I18N[saved]) {
    currentLang = saved;
    document.documentElement.lang = saved;
    applyI18n();
    updateLangButtons();
    load();
  } else {
    var overlay = document.getElementById('lang-overlay');
    if (overlay) overlay.showModal();
  }
})();
