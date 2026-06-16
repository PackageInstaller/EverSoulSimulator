#include "agent_http_server.hpp"

#include <android/log.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <pthread.h>
#include <sys/socket.h>
#include <unistd.h>

#include <cerrno>
#include <cstdio>
#include <cstring>
#include <string_view>

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO,  "eversoul_agent", __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, "eversoul_agent", __VA_ARGS__)

namespace eversoul::agent::http_server {
namespace {

// ── 응답 JSON 상수 (HAR 실측값) ───────────────────────────────────────────

static constexpr const char* kKrV2App = R"EVRAW({"status":200,"desc":"OK","content":{"supportedFeatures":["urgentNotice","maintenance","push","delivery","promotion","coupon","notice","leaderboard","community"],"marketUrl":"market://details?id=com.kakaogames.eversoul","publicKeyMap":{},"secondaryPwOption":null,"capriAppOption":{"ageLimit":0,"lazyAgeAuth":null,"appType":"kakaogame","appCategory":"role","ageAuthLevel":"NONE"},"isTubeApp":false,"verRecent":"1.34.101","appOption":{"rttCheckUrls":"{\"urls\":[\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://gc-infodesk-zinny3.kakaogames.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\",\"https://infodesk-zinny3.game.kakao.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\"]}","cdnAddr":"https://patch.esoul.kakaogames.com/Live","agreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/agreement/index.html?tid=13","useGoogleGame":"false","CUSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","isMaintenance":"0","privacyPolicyUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0018&type=T003&country=kr&lang=ko","rttSampleRate":"50","manualRequestReview":"1","termsOfUseUrl":"https://web-data-game.kakaocdn.net/real/www/html/terms/index.html?service=S0001&type=T001&country=kr&lang=ko","ShowGachaOddsView":"https://cafe.daum.net/Eversoul/aCeo/20","gameServerAddr":"https://live-kr.esoul.kakaogames.com:1739","modTime":1661830306343,"daumCafeUrl":"https://m.cafe.daum.net/Eversoul/_boards?type=notice","RefundWebUrl":"https://kakaogames.oqupie.com/portals/1801/articles/41135"},"notices":[],"traceSampleRate":0,"isWhitelist":false,"svcStatus":"open","supportedIdpCodes":["kakaocapri","facebook","google","siwa","zd3"],"serverConnectionType":"wss","appVerStatus":"noNeedToUpdate","publisher":{"privacyUrl":"https://www.kakao.com/ko/privacy","privacySummaryUrl":"https://gameevent.kakao.com/supports/terms/3?tabbar=false","noticeUrl2":"https://cus-zinny3.kakaogames.com/view/notice","agreementUrl":"https://web-data-game.kakaocdn.net/real/www/html/agreement/index.html?tid=13","servicePolicyUrl":"https://gameevent.kakao.com/terms/operation","termsUrl":"https://gameevent.kakao.com/supports/terms/1","kakaogameCommunityUrl":"https://playgame.kakao.com/bridge/auth/zinny","termsSummaryUrl":"https://gameevent.kakao.com/supports/terms/1?tabbar=false","eventWallUrl":"https://cus-zinny3.kakaogames.com/view/event","noticeUrl":"https://cus-zinny3.kakaogames.com/notice","customerServiceUrl":"https://cus-zinny3.kakaogames.com/support/list","eventWinnerUrl":"http://event-winner.kakaogames.com/event","policyVer":"1.0","publisherId":"kakao","modTime":1651813742832},"sdk":{"heartbeatInterval":120000,"PercentOfSendingAPICallLog":0,"stopSendGeoDNS":"y","snsShareUrl":"https://invite.kakaogame.com","zrtiOSError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9]}","aesEncryptKey":"djfdskj12328438djdgjcjeejhdew15","aesEncryptIV":"7gnfn7f96rnanmt1s5iaa3kdruhuneu","zrtAOSError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9],\"google\":[8]}","zrtWindowsError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9]}","snsShareHostUrl":"https://invite.kakaogame.com/host/main","invitationUrl":"https://webinvite.nzincorp.com","csUrl":"http://customer.kakaogames.com:18080","platformVersion":3,"sessionTimeout":10000,"registerDeviceUrl":"https://device-enrollment.kakaogames.com/main","customDialogModels":["SM-T976N"],"unregisterAgreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0001&type=T016","snsShareGuestUrl":"https://invite.kakaogame.com/guest/reward"},"deviceSecurityOption":null,"onlineNotifications":[],"timestamp":1780808063796}})EVRAW";

static constexpr const char* kKrV2AppInit = R"EVRAW({"status":200,"desc":"OK","content":{"supportedFeatures":["urgentNotice","maintenance","push","delivery","promotion","coupon","notice","leaderboard","community"],"marketUrl":"market://details?id=com.kakaogames.eversoul","publicKeyMap":{},"secondaryPwOption":null,"capriAppOption":{"ageLimit":0,"lazyAgeAuth":null,"appType":"kakaogame","appCategory":"role","ageAuthLevel":"NONE"},"isTubeApp":false,"verRecent":"1.34.101","appOption":{"rttCheckUrls":"{\"urls\":[\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://gc-infodesk-zinny3.kakaogames.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\",\"https://infodesk-zinny3.game.kakao.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\"]}","cdnAddr":"https://patch.esoul.kakaogames.com/Live","agreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/agreement/index.html?tid=13","useGoogleGame":"false","CUSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","isMaintenance":"0","privacyPolicyUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0018&type=T003&country=kr&lang=ko","rttSampleRate":"50","manualRequestReview":"1","termsOfUseUrl":"https://web-data-game.kakaocdn.net/real/www/html/terms/index.html?service=S0001&type=T001&country=kr&lang=ko","ShowGachaOddsView":"https://cafe.daum.net/Eversoul/aCeo/20","gameServerAddr":"https://live-kr.esoul.kakaogames.com:1739","modTime":1661830306343,"daumCafeUrl":"https://m.cafe.daum.net/Eversoul/_boards?type=notice","RefundWebUrl":"https://kakaogames.oqupie.com/portals/1801/articles/41135"},"notices":[],"traceSampleRate":100,"isWhitelist":false,"svcStatus":"open","supportedIdpCodes":["kakaocapri","facebook","google","siwa","zd3"],"serverConnectionType":"wss","appVerStatus":"noNeedToUpdate","publisher":{"privacyUrl":"https://www.kakao.com/ko/privacy","privacySummaryUrl":"https://gameevent.kakao.com/supports/terms/3?tabbar=false","noticeUrl2":"https://cus-zinny3.kakaogames.com/view/notice","agreementUrl":"https://web-data-game.kakaocdn.net/real/www/html/agreement/index.html?tid=13","servicePolicyUrl":"https://gameevent.kakao.com/terms/operation","termsUrl":"https://gameevent.kakao.com/supports/terms/1","kakaogameCommunityUrl":"https://playgame.kakao.com/bridge/auth/zinny","termsSummaryUrl":"https://gameevent.kakao.com/supports/terms/1?tabbar=false","eventWallUrl":"https://cus-zinny3.kakaogames.com/view/event","noticeUrl":"https://cus-zinny3.kakaogames.com/notice","customerServiceUrl":"https://cus-zinny3.kakaogames.com/support/list","eventWinnerUrl":"http://event-winner.kakaogames.com/event","policyVer":"1.0","publisherId":"kakao","modTime":1651813742832},"sdk":{"heartbeatInterval":120000,"PercentOfSendingAPICallLog":0,"stopSendGeoDNS":"y","snsShareUrl":"https://invite.kakaogame.com","zrtiOSError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9]}","aesEncryptKey":"djfdskj12328438djdgjcjeejhdew15","aesEncryptIV":"7gnfn7f96rnanmt1s5iaa3kdruhuneu","zrtAOSError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9],\"google\":[8]}","zrtWindowsError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9]}","snsShareHostUrl":"https://invite.kakaogame.com/host/main","invitationUrl":"https://webinvite.nzincorp.com","csUrl":"http://customer.kakaogames.com:18080","platformVersion":3,"sessionTimeout":10000,"registerDeviceUrl":"https://device-enrollment.kakaogames.com/main","customDialogModels":["SM-T976N"],"unregisterAgreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0001&type=T016","snsShareGuestUrl":"https://invite.kakaogame.com/guest/reward"},"deviceSecurityOption":null,"onlineNotifications":[],"timestamp":1780807992096}})EVRAW";

static constexpr const char* kHkV2App = R"EVRAW({"status":200,"desc":"OK","content":{"supportedFeatures":["urgentNotice","maintenance","push","delivery","promotion","coupon","notice","leaderboard","community"],"marketUrl":"market://details?id=com.kakaogames.eversoul","publicKeyMap":{},"secondaryPwOption":null,"capriAppOption":{"ageLimit":0,"lazyAgeAuth":null,"appType":"kakaogame","appCategory":"role","ageAuthLevel":"NONE"},"isTubeApp":false,"verRecent":"1.34.101","appOption":{"gispPaymentUrl":"https://gisp-payment-api.kakaogames.com","rttCheckUrls":"{\"urls\":[\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://gc-infodesk-zinny3.kakaogames.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\",\"https://infodesk-zinny3.game.kakao.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\"]}","cdnAddr":"https://patch.esoul.kakaogames.com/Live","CSURL_TW":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","agreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/agreement/index.html?tid=13","CUSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","kbsHost":"https://gp-api.kakaogames.com","isMaintenance":"0","privacyPolicyUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0018&type=T003&country=kr&lang=en","rttSampleRate":"50","userAgeCheck_appStore":"13","manualRequestReview":"1","userAgeCheck_googleplay":"13","CUSURL_TW":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","termsOfUseUrl":"https://web-data-game.kakaocdn.net/real/www/html/terms/index.html?service=S0001&type=T001&country=us&lang=en","ShowGachaOddsView":"https://kakaogames.oqupie.com/portals/2152/articles/59105","gameServerAddr":"https://live-sea.esoul.kakaogames.com:1739","modTime":1716191579042,"NoticeView":"https://kakaogames.oqupie.com/portals/2152/customer-news/2546","RefundWebUrl":"https://kakaogames.oqupie.com/portals/2152/categories/4660"},"notices":[],"traceSampleRate":0,"isWhitelist":false,"svcStatus":"open","supportedIdpCodes":["kakaocapri","facebook","google","siwa","zd3"],"serverConnectionType":"wss","appVerStatus":"noNeedToUpdate","publisher":{"privacyUrl":"https://www.kakao.com/ko/privacy","privacySummaryUrl":"https://gameevent.kakao.com/supports/terms/3?tabbar=false","noticeUrl2":"https://cus-zinny3.kakaogames.com/view/notice","agreementUrl":"https://web-data-game.kakaocdn.net/real/www/html/agreement/index.html?tid=13","servicePolicyUrl":"https://gameevent.kakao.com/terms/operation","termsUrl":"https://gameevent.kakao.com/supports/terms/1","kakaogameCommunityUrl":"https://playgame.kakao.com/bridge/auth/zinny","termsSummaryUrl":"https://gameevent.kakao.com/supports/terms/1?tabbar=false","eventWallUrl":"https://cus-zinny3.kakaogames.com/view/event","noticeUrl":"https://cus-zinny3.kakaogames.com/notice","customerServiceUrl":"https://cus-zinny3.kakaogames.com/support/list","eventWinnerUrl":"http://event-winner.kakaogames.com/event","policyVer":"1.0","publisherId":"kakao","modTime":1651813742832},"sdk":{"heartbeatInterval":120000,"PercentOfSendingAPICallLog":0,"stopSendGeoDNS":"y","snsShareUrl":"https://invite.kakaogame.com","zrtiOSError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9]}","aesEncryptKey":"djfdskj12328438djdgjcjeejhdew15","aesEncryptIV":"7gnfn7f96rnanmt1s5iaa3kdruhuneu","zrtAOSError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9],\"google\":[8]}","zrtWindowsError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9]}","snsShareHostUrl":"https://invite.kakaogame.com/host/main","invitationUrl":"https://webinvite.nzincorp.com","csUrl":"http://customer.kakaogames.com:18080","platformVersion":3,"sessionTimeout":10000,"registerDeviceUrl":"https://device-enrollment.kakaogames.com/main","customDialogModels":["SM-T976N"],"unregisterAgreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0001&type=T016","snsShareGuestUrl":"https://invite.kakaogame.com/guest/reward"},"deviceSecurityOption":null,"onlineNotifications":[],"timestamp":1780878817751}})EVRAW";

static constexpr const char* kHkV2AppInit = R"EVRAW({"status":200,"desc":"OK","content":{"supportedFeatures":["urgentNotice","maintenance","push","delivery","promotion","coupon","notice","leaderboard","community"],"marketUrl":"market://details?id=com.kakaogames.eversoul","publicKeyMap":{},"secondaryPwOption":null,"capriAppOption":{"ageLimit":0,"lazyAgeAuth":null,"appType":"kakaogame","appCategory":"role","ageAuthLevel":"NONE"},"isTubeApp":false,"verRecent":"1.34.101","appOption":{"gispPaymentUrl":"https://gisp-payment-api.kakaogames.com","rttCheckUrls":"{\"urls\":[\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-northeast-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-southeast-1.kakaogames.io?type=v3\",\"https://rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-east-1.kakaogames.io?type=v3\",\"https://rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-us-west-1.kakaogames.io?type=v3\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-ap-east-1.kakaogames.io?type=v3\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v1\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v2\",\"https://ga-rttcheck-eu-central-1.kakaogames.io?type=v3\",\"https://gc-infodesk-zinny3.kakaogames.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\",\"https://infodesk-zinny3.game.kakao.com/v2/app?appId=103815&appVer=1.0.0&market=googlePlay&sdkVer=3.18.0&os=android&lang=en\"]}","cdnAddr":"https://patch.esoul.kakaogames.com/Live","CSURL_TW":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","agreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/agreement/index.html?tid=13","CUSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","CSURL":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","kbsHost":"https://gp-api.kakaogames.com","isMaintenance":"0","privacyPolicyUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0018&type=T003&country=kr&lang=en","rttSampleRate":"50","userAgeCheck_appStore":"13","manualRequestReview":"1","userAgeCheck_googleplay":"13","CUSURL_TW":"https://kakaogames.oqupie.com/portals/finder?jwt={0}","termsOfUseUrl":"https://web-data-game.kakaocdn.net/real/www/html/terms/index.html?service=S0001&type=T001&country=us&lang=en","ShowGachaOddsView":"https://kakaogames.oqupie.com/portals/2152/articles/59105","gameServerAddr":"https://live-sea.esoul.kakaogames.com:1739","modTime":1716191579042,"NoticeView":"https://kakaogames.oqupie.com/portals/2152/customer-news/2546","RefundWebUrl":"https://kakaogames.oqupie.com/portals/2152/categories/4660"},"notices":[],"traceSampleRate":100,"isWhitelist":false,"svcStatus":"open","supportedIdpCodes":["kakaocapri","facebook","google","siwa","zd3"],"serverConnectionType":"wss","appVerStatus":"noNeedToUpdate","publisher":{"privacyUrl":"https://www.kakao.com/ko/privacy","privacySummaryUrl":"https://gameevent.kakao.com/supports/terms/3?tabbar=false","noticeUrl2":"https://cus-zinny3.kakaogames.com/view/notice","agreementUrl":"https://web-data-game.kakaocdn.net/real/www/html/agreement/index.html?tid=13","servicePolicyUrl":"https://gameevent.kakao.com/terms/operation","termsUrl":"https://gameevent.kakao.com/supports/terms/1","kakaogameCommunityUrl":"https://playgame.kakao.com/bridge/auth/zinny","termsSummaryUrl":"https://gameevent.kakao.com/supports/terms/1?tabbar=false","eventWallUrl":"https://cus-zinny3.kakaogames.com/view/event","noticeUrl":"https://cus-zinny3.kakaogames.com/notice","customerServiceUrl":"https://cus-zinny3.kakaogames.com/support/list","eventWinnerUrl":"http://event-winner.kakaogames.com/event","policyVer":"1.0","publisherId":"kakao","modTime":1651813742832},"sdk":{"heartbeatInterval":120000,"PercentOfSendingAPICallLog":0,"stopSendGeoDNS":"y","snsShareUrl":"https://invite.kakaogame.com","zrtiOSError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9]}","aesEncryptKey":"djfdskj12328438djdgjcjeejhdew15","aesEncryptIV":"7gnfn7f96rnanmt1s5iaa3kdruhuneu","zrtAOSError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9],\"google\":[8]}","zrtWindowsError":"{\"kakaocapri\":[500, 502, 503, -1, -7, -9]}","snsShareHostUrl":"https://invite.kakaogame.com/host/main","invitationUrl":"https://webinvite.nzincorp.com","csUrl":"http://customer.kakaogames.com:18080","platformVersion":3,"sessionTimeout":10000,"registerDeviceUrl":"https://device-enrollment.kakaogames.com/main","customDialogModels":["SM-T976N"],"unregisterAgreementUrl":"https://web-data-cdn.kakaogames.com/real/www/html/terms/index.html?service=S0001&type=T016","snsShareGuestUrl":"https://invite.kakaogame.com/guest/reward"},"deviceSecurityOption":null,"onlineNotifications":[],"timestamp":1780878517227}})EVRAW";

static constexpr const char* kAppGroupKr = R"EVRAW({"status":200,"desc":"OK","content":{"timestamp":1780807990232,"apps":[{"notices":[],"appId":"743487","dataMap":{"region":"kr","countryCodeList":"kr"}},{"notices":[],"appId":"743491","dataMap":{"region":"asia","countryCodeList":"aq,tw,mo,kp,jp,cn,hk,af,as,au,bd,bn,bt,cc,ck,cx,fj,fm,gu,hm,id,in,io,kg,kh,ki,kz,la,lk,mh,mm,mn,mp,mv,my,nc,nf,np,nr,nu,nz,pf,pg,ph,pk,pn,pw,sb,sg,th,tj,tk,tl,tm,to,tv,vn,vu,wf,ws"}},{"notices":[],"appId":"750066","dataMap":{"region":"us","countryCodeList":"ag,ai,an,ar,aw,bb,bl,bm,bo,bq,br,bs,bz,ca,cl,co,cr,cu,cw,dm,do,ec,fk,gd,gf,gp,gs,gt,gy,hn,ht,jm,kn,ky,lc,mf,mq,ms,mx,ni,pa,pe,pm,pr,py,sr,sv,sx,tc,tt,um,us,uy,vc,ve,vg,vi,ad,ae,al,am,ao,at,ax,az,ba,be,bf,bg,bh,bi,bj,bv,bw,by,cd,cf,cg,ch,ci,cm,cv,cy,cz,de,dj,dk,dz,ee,eg,eh,er,es,et,fi,fo,fr,ga,gb,ge,gg,gh,gi,gl,gm,gn,gq,gr,gw,hr,hu,ie,il,im,iq,ir,is,it,je,jo,ke,km,kw,lb,li,lr,ls,lt,lu,lv,ly,ma,mc,md,me,mg,mk,ml,mr,mt,mu,mw,mz,na,ne,ng,nl,no,om,pl,ps,pt,qa,re,ro,rs,ru,rw,sa,sc,sd,se,sh,si,sj,sk,sl,sm,sn,so,ss,st,sy,sz,td,tf,tg,tn,tr,tz,ua,ug,uz,va,ye,yt,za,zm,zw"}}]}})EVRAW";

static constexpr const char* kAppGroupHk = R"EVRAW({"status":200,"desc":"OK","content":{"timestamp":1780878515302,"apps":[{"notices":[],"appId":"743487","dataMap":{"region":"kr","countryCodeList":"kr"}},{"notices":[],"appId":"743491","dataMap":{"region":"asia","countryCodeList":"aq,tw,mo,kp,jp,cn,hk,af,as,au,bd,bn,bt,cc,ck,cx,fj,fm,gu,hm,id,in,io,kg,kh,ki,kz,la,lk,mh,mm,mn,mp,mv,my,nc,nf,np,nr,nu,nz,pf,pg,ph,pk,pn,pw,sb,sg,th,tj,tk,tl,tm,to,tv,vn,vu,wf,ws"}},{"notices":[],"appId":"750066","dataMap":{"region":"us","countryCodeList":"ag,ai,an,ar,aw,bb,bl,bm,bo,bq,br,bs,bz,ca,cl,co,cr,cu,cw,dm,do,ec,fk,gd,gf,gp,gs,gt,gy,hn,ht,jm,kn,ky,lc,mf,mq,ms,mx,ni,pa,pe,pm,pr,py,sr,sv,sx,tc,tt,um,us,uy,vc,ve,vg,vi,ad,ae,al,am,ao,at,ax,az,ba,be,bf,bg,bh,bi,bj,bv,bw,by,cd,cf,cg,ch,ci,cm,cv,cy,cz,de,dj,dk,dz,ee,eg,eh,er,es,et,fi,fo,fr,ga,gb,ge,gg,gh,gi,gl,gm,gn,gq,gr,gw,hr,hu,ie,il,im,iq,ir,is,it,je,jo,ke,km,kw,lb,li,lr,ls,lt,lu,lv,ly,ma,mc,md,me,mg,mk,ml,mr,mt,mu,mw,mz,na,ne,ng,nl,no,om,pl,ps,pt,qa,re,ro,rs,ru,rw,sa,sc,sd,se,sh,si,sj,sk,sl,sm,sn,so,ss,st,sy,sz,td,tf,tg,tn,tr,tz,ua,ug,uz,va,ye,yt,za,zm,zw"}}]}})EVRAW";

static constexpr const char* kMaintenance =
    R"EVRAW({"status":200,"desc":"OK","content":{"notices":[],"isWhitelist":false,"timestamp":1780878835815}})EVRAW";

static constexpr const char* kKrWriteSdkLog =
    R"EVRAW({"logId":"fc5d6be0-622c-11f1-8025-018e4828e10a"})EVRAW";

static constexpr const char* kKrGetForLogin =
    R"EVRAW({"country":"kr","agreement":null,"partnerName":"ì£¼ìíì\xAC ì\x9B\x90ì\x9D\x80\xEF\xBF\xBDê\xB2\x8Cì\x9E\x84ì\x8A\xA4","idpId":"378fa3e0-3455-4fb2-8050-894cea2d8daa","appName":"ì\x97\x90ë\xB2\x84ì\x86\x8Cì\x9A\xB8","adAgreementStatus":"n","policyApplyTime":null,"agreementPopup":"y","kakaoSyncAgreementGetSet":"n","firstAgreement":"y","platform":"mobile","informationSecurityCountry":null,"kakaoSyncStatus":"off","plusFriendStatusInfo":null,"appId":"743487","context":"login","partnerId":825,"lang":"zh-hans","idpCode":"zd3","kakaogameSdkVer":"3.0"})EVRAW";

static constexpr const char* kKrAccessToken =
    R"EVRAW({"expiryTime":1780811655795,"accessToken":"fwPla7fQ8ty9+DZT/lD//kfb3qv48r871Rt6cTazo8i5o2WgU0oWAoK3/Vdq53cUamLaqXjFbK3AsTvqfV5J7Ie74QNYq/cyyh/ed4HyZxqyeNhlY7UYzSDQWRegzlySteluFnOCWfxUlsZdRCCjpSpVwZvm2ov5y50kab0LLgTnzqLYJPdDrx8/D+B3gbnxXewhXyzZ/PoeKd41lf3wP7WFhzkW4SpFCGlzQMx0V3k="})EVRAW";

static constexpr const char* kCountryKr =
    R"EVRAW({"country":"kr"})EVRAW";

static constexpr const char* kHkWriteSdkLog =
    R"EVRAW({"logId":"0ddb5180-62d1-11f1-8f39-0bc9457b20ee"})EVRAW";

static constexpr const char* kHkGetForLogin =
    R"EVRAW({"country":"hk","agreement":{"N002":"y","E006":"y","N003":"y","E001":"y","AN001":"y","E002":"y","AN002":"y"},"partnerName":"ì\x A3\xBCì\x8B\x9Dí\x9A\x8Cì\x82\xAC ì\xB9\xB4ì\xB9\xB4ì\x98\xA4ê\xB2\x8Cì\x9E\x84ì\x8A\xA4","idpId":"102305402181706331695","appName":"Eversoul_Asia","adAgreementStatus":"n","policyApplyTime":null,"agreementPopup":"n","kakaoSyncAgreementGetSet":"n","firstAgreement":"n","platform":"mobile","informationSecurityCountry":null,"kakaoSyncStatus":"off","plusFriendStatusInfo":null,"appId":"743491","context":"login","partnerId":825,"lang":"zh-hans","idpCode":"google","kakaogameSdkVer":"3.0"})EVRAW";

static constexpr const char* kGetGoogleIdpId =
    R"EVRAW({"idpId":"102305402181706331695"})EVRAW";

static constexpr const char* kHkAccessToken =
    R"EVRAW({"expiryTime":1781105031496,"accessToken":"fwPla7fQ8ty9+DZT/lD//kXgP6HwJ7GHrye+msktBle2T2g0zJY960qR+lkBibrWNXsSUYSsgbWFWdCbo+Xgyar3Masd6c6UOViMOzeXoe5rb6gjsk115VrJGWJldY3uR73UufqGunJYrSN7FTH5WEthq2UWSgXGLBq64K+rdFfit/VLAzEW0EO2OtTwnt65cpIvyBY8/mV9bCDMFz4N7hpGHzdB93aJR+xDZ4wpnRI="})EVRAW";

static constexpr const char* kGetForConnect =
    R"EVRAW({"agreementPopup":"n","context":"connect","kakaoGameSdkVer":"3.0"})EVRAW";

static constexpr const char* kLockincomp =
    R"EVRAW({"fdbd8507":"c6c4389e","fdbd8508":"208276372","fdbd8509":"5c6e481f27d101a560ea8d507c9c4dd0a3cddcaefabaf1f986dd93f38c749664137d29245aed0cf1ec8130b7cd9dac6f395d8efc84e3e51a7d1fa9e2e91c789cb2f9ddc14bf10d94a6cacad62decc3b8952f89b18c2105377dff98fa4c2a9f15389da042a63312e6fe92f3395f63f20db03b112bb3db4b10","fdbd850f":"208276372"})EVRAW";

static constexpr const char* kGpApiContent =
    R"EVRAW({"status":200,"desc":"OK","content":[]})EVRAW";

static constexpr const char* kEmpty = "{}";

// ── 쿼리 파라미터 추출 ────────────────────────────────────────────────────

static std::string_view query_param(std::string_view query, std::string_view name)
{
    size_t pos = 0;
    while (pos < query.size()) {
        auto amp = query.find('&', pos);
        auto pair = (amp != std::string_view::npos)
                    ? query.substr(pos, amp - pos)
                    : query.substr(pos);
        auto eq = pair.find('=');
        if (eq != std::string_view::npos && pair.substr(0, eq) == name)
            return pair.substr(eq + 1);
        pos = (amp != std::string_view::npos) ? amp + 1 : query.size();
    }
    return {};
}

// ── 라우터 ────────────────────────────────────────────────────────────────

static const char* route(std::string_view path, std::string_view query)
{
    bool is_init = (query_param(query, "sdkState") == "INIT");
    bool is_kr   = (query_param(query, "country")  == "kr");

    if (path.starts_with("/__lockincomp"))  return kLockincomp;
    if (path.starts_with("/__rttcheck"))    return kEmpty;

    if (path.starts_with("/__kr_infodesk")) {
        auto sub = path.substr(sizeof("/__kr_infodesk") - 1);
        if (sub == "/v2/app")                              return is_init ? kKrV2AppInit : kKrV2App;
        if (sub.starts_with("/v2/app/server/maintenance")) return kMaintenance;
        return kEmpty;
    }

    if (path.starts_with("/__hk_infodesk")) {
        auto sub = path.substr(sizeof("/__hk_infodesk") - 1);
        if (sub == "/v2/app")                              return is_init ? kHkV2AppInit : kHkV2App;
        if (sub.starts_with("/v2/app/server/maintenance")) return kMaintenance;
        if (sub.starts_with("/v2/appGroup"))               return is_kr ? kAppGroupKr : kAppGroupHk;
        return kEmpty;
    }

    if (path.starts_with("/__kr_openapi")) {
        auto sub = path.substr(sizeof("/__kr_openapi") - 1);
        if (sub.starts_with("/service/v3/log/writeSdkBasicLog"))   return kKrWriteSdkLog;
        if (sub.starts_with("/service/v3/agreement/getForLogin"))   return kKrGetForLogin;
        if (sub.starts_with("/service/v4/device/accessToken"))      return kKrAccessToken;
        if (sub.starts_with("/service/v3/util/country/get"))        return kCountryKr;
        return kEmpty;
    }

    if (path.starts_with("/__hk_openapi")) {
        auto sub = path.substr(sizeof("/__hk_openapi") - 1);
        if (sub.starts_with("/service/v3/log/writeSdkBasicLog"))   return kHkWriteSdkLog;
        if (sub.starts_with("/service/v3/agreement/getForLogin"))   return kHkGetForLogin;
        if (sub.starts_with("/service/v3/agreement/getForConnect")) return kGetForConnect;
        if (sub.starts_with("/service/v4/device/accessToken"))      return kHkAccessToken;
        if (sub.starts_with("/service/v3/util/country/get"))        return kCountryKr;
        if (sub.starts_with("/service/v3/auth/getGoogleIdpId"))     return kGetGoogleIdpId;
        return kEmpty;
    }

    if (path.starts_with("/__gp_api"))  return kGpApiContent;
    if (path.starts_with("/__kakao"))   return kEmpty;

    return kEmpty;
}

// ── HTTP 연결 처리 ────────────────────────────────────────────────────────

struct ConnArg { int fd; };

static void* conn_thread(void* arg)
{
    auto* a = static_cast<ConnArg*>(arg);
    int fd = a->fd;
    delete a;

    struct timeval tv{2, 0};
    setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));

    char buf[8192];
    ssize_t n = recv(fd, buf, sizeof(buf) - 1, 0);
    if (n <= 0) { close(fd); return nullptr; }
    buf[n] = '\0';

    std::string_view req{buf, static_cast<size_t>(n)};

    auto line_end = req.find("\r\n");
    if (line_end == std::string_view::npos) { close(fd); return nullptr; }
    auto line = req.substr(0, line_end);

    auto sp1 = line.find(' ');
    if (sp1 == std::string_view::npos) { close(fd); return nullptr; }
    auto sp2 = line.find(' ', sp1 + 1);
    auto path_query = (sp2 != std::string_view::npos)
                      ? line.substr(sp1 + 1, sp2 - sp1 - 1)
                      : line.substr(sp1 + 1);

    std::string_view path, query;
    auto qmark = path_query.find('?');
    if (qmark != std::string_view::npos) {
        path  = path_query.substr(0, qmark);
        query = path_query.substr(qmark + 1);
    } else {
        path = path_query;
    }

    const char* body     = route(path, query);
    size_t      body_len = strlen(body);

    char hdr[256];
    int hdr_len = snprintf(hdr, sizeof(hdr),
        "HTTP/1.0 200 OK\r\n"
        "Content-Type: application/json; charset=utf-8\r\n"
        "Content-Length: %zu\r\n"
        "Connection: close\r\n"
        "\r\n",
        body_len);

    send(fd, hdr,  static_cast<size_t>(hdr_len), 0);
    send(fd, body, body_len, 0);
    close(fd);

    LOGI("HTTP/8080 %.*s -> %zu B", (int)path.size(), path.data(), body_len);
    return nullptr;
}

// ── 서버 루프 ─────────────────────────────────────────────────────────────

static void* server_thread(void*)
{
    int srv = socket(AF_INET, SOCK_STREAM, 0);
    if (srv < 0) { LOGE("socket: %s", strerror(errno)); return nullptr; }

    int one = 1;
    setsockopt(srv, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one));

    struct sockaddr_in addr{};
    addr.sin_family      = AF_INET;
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    addr.sin_port        = htons(8080);

    if (bind(srv, reinterpret_cast<struct sockaddr*>(&addr), sizeof(addr)) < 0) {
        LOGE("bind 8080: %s", strerror(errno));
        close(srv);
        return nullptr;
    }
    if (listen(srv, 32) < 0) {
        LOGE("listen: %s", strerror(errno));
        close(srv);
        return nullptr;
    }
    LOGI("HTTP server listening on 127.0.0.1:8080");

    while (true) {
        int client = accept(srv, nullptr, nullptr);
        if (client < 0) continue;

        auto* arg = new ConnArg{client};
        pthread_t thr;
        if (pthread_create(&thr, nullptr, conn_thread, arg) != 0) {
            delete arg;
            close(client);
        } else {
            pthread_detach(thr);
        }
    }

    return nullptr;
}

} // namespace

// ── 공개 진입점 ───────────────────────────────────────────────────────────

void start()
{
    pthread_t thr;
    if (pthread_create(&thr, nullptr, server_thread, nullptr) != 0)
        LOGE("HTTP server thread create failed");
    else
        pthread_detach(thr);
}

} // namespace eversoul::agent::http_server
