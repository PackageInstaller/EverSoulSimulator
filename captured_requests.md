# Eversoul startup/login capture

Capture time: 2026-06-06 18:43-18:47 Asia/Shanghai.

Full logs:

- `logs/offline_server.log`: requests redirected to local `127.0.0.1:9999`, including headers, request body, response headers and response body.
- `logs/frida_capture.log`: Java/IL2CPP/native capture with UnityWebRequest URL/method sequence.
- `logs/frida_capture_body.log`: follow-up capture with UnityWebRequest upload/download body hooks enabled.

## Kakao OpenAPI / Infodesk

These were redirected through the C++ proxy backend and have full request/response bodies in `logs/offline_server.log`.

| Order | Method | Upstream URL | Local path | Notes |
| --- | --- | --- | --- | --- |
| 1 | POST | `https://gc-openapi-zinny3.kakaogames.com/service/v3/util/country/get` | `/service/v3/util/country/get` | Mocked locally as `{"country":"cn"}`. |
| 2 | GET | `https://gc-infodesk-zinny3.kakaogames.com/v2/appGroup` | `/v2/appGroup?appGroupId=esoul_service&appVer=1.34.101&market=googlePlay&sdkVer=3.20.0&os=android&lang=zh-hans&deviceId=...&osVer=15&country=kr&whiteKey=...` | Returns appId/region mapping. |
| 3 | GET | `https://gc-infodesk-zinny3.kakaogames.com/v2/app` | `/v2/app?appId=743487&appVer=1.34.101&market=googlePlay&sdkVer=3.20.0&os=android&lang=zh-hans&deviceId=...&osVer=15&country=kr&sdkState=INIT&whiteKey=...` | Returns app config, `cdnAddr`, `gameServerAddr=https://live-kr.esoul.kakaogames.com:1739`, SDK keys and policy URLs. |
| 4 | POST | `https://gc-openapi-zinny3.kakaogames.com/service/v4/device/accessToken/create` | `/service/v4/device/accessToken/create` | Body contains app version, SDK version, deviceId, serialNo, adid. Response returns `expiryTime` and `accessToken`. |
| 5 | POST | `https://gc-openapi-zinny3.kakaogames.com/service/v3/agreement/getForLogin` | `/service/v3/agreement/getForLogin` | Body contains appId, country, lang, idpCode/idpId, deviceId. Response returns agreement flags and login context. |
| 6 | POST | `https://gc-openapi-zinny3.kakaogames.com/service/v3/util/country/get` | `/service/v3/util/country/get` | Repeated country lookup, mocked locally. |

## Unity / Game Server

These were captured by IL2CPP UnityWebRequest hooks in `logs/frida_capture_body.log`. Request/response payloads are mostly binary/protobuf-like data, now logged through `UploadHandlerRaw` and `DownloadHandler.InternalGetByteArray`.

| Phase | Method | URL |
| --- | --- | --- |
| Asset config | GET | `jar:file://.../assets/UnityServicesProjectConfiguration.json` |
| Asset config | GET | `jar:file://.../assets/aa/settings.json` |
| Patch/catalog | GET | `https://eversoul.com/catalog_eversoul.hash` |
| Patch/table | GET | `https://patch.esoul.kakaogames.com/Live/1.34.101/Table/const_data_version.json` |
| Login | POST | `https://live-kr.esoul.kakaogames.com:1739/Login` |
| Login follow-up | POST | `https://live-kr.esoul.kakaogames.com:1739/ServerTime` |
| Login follow-up | POST | `https://live-kr.esoul.kakaogames.com:1739/UserInfo` |
| Login follow-up | POST | `https://live-kr.esoul.kakaogames.com:1739/SignatureList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/OriginTowerList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/CashGrowInfo` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/BestScore` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/TownLocationList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/CashShopList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/CashShopUserAbleCashItemIdAllList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/FriendTotalList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/DestinyInfoList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/AutoHuntOpen` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/EventStoryInfo` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/ArenaMyRank` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/EverTalkList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/GuildRaidInfo` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/IllustList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/DungeonOpenCheck` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/EdenUnionInfo` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/WorldRaidInfo` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/VistaInfo` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/SingleRaidInfo` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/ArbeitList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/NewMailCnt` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/LobbyRefresh` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/GachaInfo` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/AchievementList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/GuideQuestList` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/GachaMileageDelete` |
| Lobby/bootstrap | POST | `https://live-kr.esoul.kakaogames.com:1739/TaskList` |

## Third-party startup traffic

Captured by native SSL hooks:

- Facebook Graph API: `/v16.0/app`, `/v16.0/app/mobile_sdk_gk`, `/v16.0/app/model_asset`, `/v16.0/{appId}/activities`.
- Lockincomp endpoint: `https://v5xtqhwslrakzbcouzehmhqzlxphxixt.lockincomp.com/sbaa479o`.
- Singular SDK: `https://sdk-api-v1.singular.net/api/v1/resolve`, `/api/v1/config`.
- Firebase logging: `https://firebaselogging-pa.googleapis.com/v1/firelog/legacy/batchlog`.

