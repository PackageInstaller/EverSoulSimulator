'use strict';

var AGREE = 'zinny://AgreementOk?E001=y&E002=y&E006=y&AN001=y&AN002=y&N002=y&N003=y&joinMemberShip=n&setAdAgreement=n';

function esc(s) {
  return String(s).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
}
function idpLabel(c) {
  return c === 'kakaocapri' ? '카카오' : c === 'google' ? 'Google' : '게스트';
}
function fmtDate(ts) {
  if (!ts) return '';
  return new Date(Number(ts)).toLocaleDateString('ko-KR');
}

async function load() {
  var el = document.getElementById('acct-list');
  try {
    var res  = await fetch('/api/accounts');
    var list = await res.json();
    if (!Array.isArray(list) || list.length === 0) {
      el.innerHTML = '<div class="acct-empty">등록된 계정이 없습니다.<br>아래에서 새 계정을 만드세요.</div>';
      return;
    }
    el.innerHTML = list.map(function(a) {
      var isActive = a.active;
      return '<div class="acct-row' + (isActive ? ' active' : '') + '">' +
        '<div class="acct-info">' +
          '<div class="acct-name">' + esc(a.nickname) +
            (isActive ? '<span class="badge badge-ok" style="margin-left:6px;font-size:9px;letter-spacing:.5px">현재</span>' : '') +
          '</div>' +
          '<div class="acct-meta">' + esc(idpLabel(a.idp_code)) + ' · ' + esc(a.player_id) +
            (a.last_login ? ' · ' + fmtDate(a.last_login) : '') +
          '</div>' +
        '</div>' +
        '<div class="acct-actions">' +
          (isActive ? '' : '<button class="btn btn-primary" onclick="selectAcct(\'' + esc(a.id) + '\')">선택</button>') +
          '<button class="btn btn-danger" onclick="delAcct(\'' + esc(a.id) + '\')">삭제</button>' +
        '</div>' +
      '</div>';
    }).join('');
  } catch(e) {
    el.innerHTML = '<div class="acct-empty" style="color:var(--color-red)">서버 응답 오류</div>';
  }
}

async function selectAcct(id) {
  await fetch('/api/accounts/select', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ id: id })
  }).catch(function() {});
  location.replace(AGREE);
}

async function delAcct(id) {
  if (!confirm('이 계정을 삭제하시겠습니까?')) return;
  await fetch('/api/accounts/' + id, { method: 'DELETE' }).catch(function() {});
  load();
}

async function createAccount() {
  var nick = document.getElementById('new-nick').value.trim();
  var idp  = document.getElementById('new-idp').value;
  var sts  = document.getElementById('create-status');
  if (!nick) {
    sts.className = 'acct-status err';
    sts.textContent = '닉네임을 입력하세요.';
    return;
  }
  sts.className = 'acct-status';
  sts.textContent = '생성 중…';
  try {
    var res = await fetch('/api/accounts/create', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ nickname: nick, idpCode: idp })
    });
    var data = await res.json();
    if (!res.ok || !data.id) {
      sts.className = 'acct-status err';
      sts.textContent = '생성 실패 (' + res.status + ')';
      return;
    }
    sts.textContent = '';
    await fetch('/api/accounts/select', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: data.id })
    }).catch(function() {});
    location.replace(AGREE);
  } catch(e) {
    sts.className = 'acct-status err';
    sts.textContent = '서버 오류';
  }
}

load();
