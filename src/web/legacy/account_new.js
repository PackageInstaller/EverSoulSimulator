'use strict';

var AGREE = 'zinny://AgreementOk?E001=y&E002=y&E006=y&AN001=y&AN002=y&N002=y&N003=y&joinMemberShip=n&setAdAgreement=n';
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
    var res = await fetch('/web/api/accounts', {
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
    await fetch('/web/api/accounts/' + encodeURIComponent(data.id) + '/select', {
      method: 'POST'
    }).catch(function() {});
    location.replace(AGREE);
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
})();
