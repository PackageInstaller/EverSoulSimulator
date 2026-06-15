'use strict';

var AGREE = 'zinny://AgreementOk?E001=y&E002=y&E006=y&AN001=y&AN002=y&N002=y&N003=y&joinMemberShip=n&setAdAgreement=n';
var LANG_KEY = 'acct_lang';

var I18N = {
  ko: {
    'page.title':                '계정 선택',
    'acct.subtitle':             '계정을 선택하거나 새로 만드세요.',
    'acct.loading':              '로딩 중…',
    'acct.empty':                '등록된 계정이 없습니다.<br>아래에서 새 계정을 만드세요.',
    'acct.error':                '서버 응답 오류',
    'acct.current_badge':        '현재',
    'acct.select_btn':           '선택',
    'acct.delete_btn':           '삭제',
    'acct.delete_confirm':       '이 계정을 삭제하시겠습니까?',
    'idp.guest':                 '게스트',
    'idp.kakao':                 '카카오',
    'new_acct.title':            '새 계정',
    'new_acct.nick_label':       '닉네임',
    'new_acct.nick_placeholder': '닉네임 입력',
    'new_acct.login_label':      '로그인',
    'new_acct.create_btn':       '+ 새 계정 만들기',
    'new_acct.nick_required':    '닉네임을 입력하세요.',
    'new_acct.creating':         '생성 중…',
    'new_acct.create_fail':      '생성 실패',
    'new_acct.server_error':     '서버 오류',
  },
  en: {
    'page.title':                'Account Select',
    'acct.subtitle':             'Select or create an account.',
    'acct.loading':              'Loading…',
    'acct.empty':                'No accounts registered.<br>Create a new account below.',
    'acct.error':                'Server error',
    'acct.current_badge':        'ACTIVE',
    'acct.select_btn':           'Select',
    'acct.delete_btn':           'Delete',
    'acct.delete_confirm':       'Delete this account?',
    'idp.guest':                 'Guest',
    'idp.kakao':                 'Kakao',
    'new_acct.title':            'New Account',
    'new_acct.nick_label':       'Nickname',
    'new_acct.nick_placeholder': 'Enter nickname',
    'new_acct.login_label':      'Login',
    'new_acct.create_btn':       '+ Create Account',
    'new_acct.nick_required':    'Enter a nickname.',
    'new_acct.creating':         'Creating…',
    'new_acct.create_fail':      'Creation failed',
    'new_acct.server_error':     'Server error',
  },
  zh: {
    'page.title':                '账号选择',
    'acct.subtitle':             '选择账号或创建新账号。',
    'acct.loading':              '加载中…',
    'acct.empty':                '暂无账号。<br>请在下方创建新账号。',
    'acct.error':                '服务器响应错误',
    'acct.current_badge':        '当前',
    'acct.select_btn':           '选择',
    'acct.delete_btn':           '删除',
    'acct.delete_confirm':       '确定要删除此账号吗？',
    'idp.guest':                 '访客',
    'idp.kakao':                 'Kakao',
    'new_acct.title':            '新账号',
    'new_acct.nick_label':       '昵称',
    'new_acct.nick_placeholder': '输入昵称',
    'new_acct.login_label':      '登录方式',
    'new_acct.create_btn':       '+ 创建账号',
    'new_acct.nick_required':    '请输入昵称。',
    'new_acct.creating':         '创建中…',
    'new_acct.create_fail':      '创建失败',
    'new_acct.server_error':     '服务器错误',
  }
};

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
  ['ko', 'en', 'zh'].forEach(function(l) {
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
  var locale = currentLang === 'zh' ? 'zh-CN' : currentLang === 'en' ? 'en-US' : 'ko-KR';
  return new Date(Number(ts)).toLocaleDateString(locale);
}

async function load() {
  var el = document.getElementById('acct-list');
  el.innerHTML = '<div class="acct-empty"><span class="t-spinner"></span> ' + t('acct.loading') + '</div>';
  try {
    var res  = await fetch('/admin/api/accounts');
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
  await fetch('/admin/api/accounts/' + encodeURIComponent(id) + '/select', {
    method: 'POST'
  }).catch(function() {});
  location.replace(AGREE);
}

async function delAcct(id) {
  if (!confirm(t('acct.delete_confirm'))) return;
  await fetch('/admin/api/accounts/' + encodeURIComponent(id), { method: 'DELETE' }).catch(function() {});
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
    var res  = await fetch('/admin/api/accounts', {
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
    await fetch('/admin/api/accounts/' + encodeURIComponent(data.id) + '/select', {
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
