# Eversoul new user registration capture

Capture time: 2026-06-06 10:51:32-10:56:43 UTC in Frida log, 18:51:43-18:56:44 local server log.

Primary artifacts:

- `logs/frida_new_user_registration.log` - full Frida capture, 6024 lines.
- `logs/frida_new_user_full_tutorial.log` - follow-up tutorial capture after registration, 2593 lines.
- `logs/frida_new_user_full_tutorial_relaunch1.log` - short relaunch/follow-up capture, 1261 lines.
- `logs/frida_new_user_full_tutorial_relaunch2.log` - final short capture before manual stop, 264 lines.
- `logs/offline_server.log` - local redirect/proxy log. New-user proxy segment starts at line 456; follow-up runs start at line 623.

Device/session identifiers seen in this run:

- `deviceId`: `49647c0e-d6e8-4b3a-bcff-ce8a9108e74a`
- `adid` / `whiteKey`: `ace2b628-df4e-4f7c-af6f-528430e10701`
- `playerId` observed in SDK error log: `760483623598080`
- App version: `1.34.101`
- Table version: `4725`

## Redirected Kakao / Infodesk HTTP

These requests were redirected to the local C++ backend on `127.0.0.1:9999`, and the backend logged request headers, request body, proxy target, status, and response body where text-sized.

| Time | Method | URL | Body / response evidence |
| --- | --- | --- | --- |
| 18:51:43 | POST | `/service/v3/util/country/get` | Empty body, mocked response `{"country":"cn"}`. See `offline_server.log:456`, `offline_server.log:467`, `offline_server.log:469`. |
| 18:52:14 | POST | `/service/v4/device/accessToken/create` | JSON body contains app/sdk/os/market/deviceId/adid. Response 200, 281 bytes, access token JSON. See `offline_server.log:470`, `offline_server.log:481`, `offline_server.log:503`. |
| 18:52:15 | POST | `/service/v3/agreement/getForLogin` | JSON body contains appId, country, lang, `idpCode=zd3`, idpId/deviceId. Response says `agreement:null`, `agreementPopup:"y"`, `firstAgreement:"y"`, confirming new account path. See `offline_server.log:504`, `offline_server.log:515`, `offline_server.log:537`. |
| 18:52:18 | GET | `/v2/app?...sdkState=BEFORE_LOGIN...` | Infodesk response includes `gameServerAddr=https://live-kr.esoul.kakaogames.com:1739`, CDN `https://patch.esoul.kakaogames.com/Live`, app status open. See `offline_server.log:538`, `offline_server.log:543`, `offline_server.log:554`. |
| 18:52:22 | POST | `/service/v3/log/writeSdkBasicLog` | Body reports `IDPLoginError` / `4010`; response `{"logId":...}`. See `offline_server.log:555`, `offline_server.log:565`, `offline_server.log:593`. |
| 18:52:23 | GET | `/v2/app/server/maintenance?...` | Response 200, `isWhitelist:false`, no notices. See `offline_server.log:567`, `offline_server.log:572`, `offline_server.log:604`. |
| 18:56:44 | GET | `/v2/app?...sdkState=AFTER_LOGIN...` | Post-login Infodesk check. Response mirrors app open config. See `offline_server.log:605`, `offline_server.log:610`, `offline_server.log:621`. |

Frida Kakao hook confirms the same Java-layer requests:

- `country/get`: `frida_new_user_registration.log:602`, `frida_new_user_registration.log:643`
- `device/accessToken/create`: `frida_new_user_registration.log:763`, body at `frida_new_user_registration.log:766`, response at `frida_new_user_registration.log:859`
- `agreement/getForLogin`: `frida_new_user_registration.log:861`, body at `frida_new_user_registration.log:864`, response at `frida_new_user_registration.log:869`
- `writeSdkBasicLog`: `frida_new_user_registration.log:1013`, body at `frida_new_user_registration.log:1016`, response at `frida_new_user_registration.log:1048`

## Patch and addressables GETs

These were not redirected to the local backend in this run, but Frida captured URL and text responses where applicable.

| Method | URL | Evidence |
| --- | --- | --- |
| GET | `https://patch.esoul.kakaogames.com/Live/1.34.101/Table/const_data_version.json` | Response `{"version":4725,"action":1}`. See `frida_new_user_registration.log:655`, `frida_new_user_registration.log:658`. Repeated during lobby refresh at lines 5787-5872. |
| GET | `https://patch.esoul.kakaogames.com/Live/1.34.101/Table/data_4725.zip` | Binary table zip requested. See `frida_new_user_registration.log:659`, `frida_new_user_registration.log:661`. |
| GET | `https://eversoul.com/catalog_eversoul.hash` | Response hash `00e893fbe9f4843b91a37c69613ef5dc`. See `frida_new_user_registration.log:666`, `frida_new_user_registration.log:668`. |
| GET | local APK `assets/aa/settings.json` | Addressables settings JSON contains remote catalog URL. See `frida_new_user_registration.log:663`, `frida_new_user_registration.log:665`. |

## Game server POST flow

Game server base URL from Infodesk:

- `https://live-kr.esoul.kakaogames.com:1739`

Frida captured request URL, POST body bytes through `UploadHandlerRaw`, and binary/text response bytes through `InternalGetByteArray`. Bodies are mostly protobuf-like binary, so the log shows printable fragments plus length.

Initial login/bootstrap:

- `/Login`
- `/ServerTime`
- `/UserInfo`
- `/SignatureList`
- `/OriginTowerList`
- `/CashGrowInfo`
- `/BestScore`
- `/TownLocationList`
- `/FriendTotalList`
- `/DestinyInfoList`
- `/EventStoryInfo`
- `/ArenaMyRank`
- `/EverTalkList`
- `/AutoHuntOpen`
- `/GuildRaidInfo`
- `/IllustList`
- `/DungeonOpenCheck`
- `/EdenUnionInfo`
- `/WorldRaidInfo`
- `/VistaInfo`
- `/SingleRaidInfo`
- `/SpiritTreeList`
- `/DungeonLevelScaling`
- `/ArbeitList`
- `/NewMailCnt`
- `/LobbyRefresh`
- `/GachaInfo`

New user / first tutorial and account setup:

- `/TutorialActive`
- `/UserNicknameChange`
- `/StoryClear`
- `/FormationSave`
- `/StageEnter`
- `/BattleStart`
- `/BattleSave`
- `/StageClear`
- `/ContentClearDeckSave`
- `/GetContentClearDeck`
- `/CashShopList`
- `/BattleConfigSave`
- `/CashShopUserAbleCashItemIdAllList`
- `/AutoHuntReceive`
- `/HeroLevelUp`
- `/HeroPowerUpdate`
- `/HeroEquipMulti`
- `/DungeonEnter`
- `/DungeonInfoUpdate`
- `/DungeonBattle`
- `/DungeonClear`
- `/Log` with JSON fragment `{"tutorial_no":"17"}` and later `{"tutorial_no":"18"}`

Late capture confirmed the tutorial chain cleared a dungeon:

- `/StoryClear`: `frida_new_user_registration.log:5645`
- `/DungeonClear`: `frida_new_user_registration.log:5651`
- Post-login Infodesk `AFTER_LOGIN`: `frida_new_user_registration.log:6023`

## Follow-up tutorial capture

The 18:59-19:02 local-time captures were started after the account already existed. They are useful for the post-registration tutorial state machine, but they are not a fresh `firstAgreement:"y"` registration path anymore. The Kakao agreement response changed to `agreementPopup:"n"` and `firstAgreement:"n"` at `offline_server.log:740` and `offline_server.log:872`.

Additional identifiers confirmed:

- `zinnyUuid`: `900cf1fd-2347-4299-a8f9-ffa06c76e62b`, from `profile://v2/player/getUUID` at `frida_new_user_full_tutorial.log:584` and `frida_new_user_full_tutorial_relaunch1.log:480`.
- `playerId`: `760483623598080`, repeated in follow-up Kakao headers at `offline_server.log:714` and `offline_server.log:846`.

New or better-confirmed game-server POSTs after the first dungeon/tutorial segment:

- `/SaveIllust`: `frida_new_user_full_tutorial.log:982`, repeated at `frida_new_user_full_tutorial_relaunch1.log:895`.
- `/Log` with unlocked illustration list: body contains `illust_id_list` at `frida_new_user_full_tutorial.log:987`; relaunch captured a smaller `["161"]` list at `frida_new_user_full_tutorial_relaunch1.log:900`.
- `/GachaMileageDelete`: `frida_new_user_full_tutorial.log:1312`, repeated at `frida_new_user_full_tutorial_relaunch1.log:1169`.
- `/StoryClear`: follow-up clear at `frida_new_user_full_tutorial.log:1362`.
- `/GachaHeroTutorial`: captured in the follow-up endpoint sequence.
- `/BuffList`: captured after tutorial gacha flow.
- `/GachaHeroTutorialFix`: captured after tutorial gacha flow.
- `/ChangeLobbyBackground`: captured after tutorial gacha flow.
- `/HeroPowerUpdate`: follow-up updates at `frida_new_user_full_tutorial.log:1124`, `frida_new_user_full_tutorial.log:2194`, and `frida_new_user_full_tutorial_relaunch1.log:1037`.
- `/HeroUpgrade`: `frida_new_user_full_tutorial.log:2203`.
- Singular analytics events around the same flow: `ES_First Soul Summon x10`, `ES_First Soul Summon x10 Complete`, and `ES_Soul Upgrade` at `frida_new_user_full_tutorial.log:1902`, `frida_new_user_full_tutorial.log:1985`, and `frida_new_user_full_tutorial.log:2265`.

Follow-up lobby refresh groups repeatedly include `/NewMailCnt`, `/LobbyRefresh`, `/AutoHuntOpen`, `/AchievementList`, `/GuideQuestList`, `/TaskList`, and `/TutorialActive`. These are likely needed for an offline backend to keep tutorial UI state synchronized after each guided step.

## Notes for offline backend

1. The new-account discriminator is currently `agreementPopup:"y"` and `firstAgreement:"y"` from `/service/v3/agreement/getForLogin`.
2. `device/accessToken/create` response must provide `expiryTime` and `accessToken`; later Kakao calls use SDK headers derived from it.
3. `/v2/app` must expose at least `appOption.cdnAddr`, `appOption.gameServerAddr`, `svcStatus:"open"`, `appVerStatus:"noNeedToUpdate"`, supported IDPs, and SDK crypto fields.
4. The live game server uses protobuf-like binary request/response bodies over UnityWebRequest POSTs. Frida captured enough endpoint ordering and body lengths for a replay/mock plan, but schema extraction will need il2cpp/protobuf analysis before a faithful C++ offline implementation.
5. Repeated lobby refresh groups are important for first playable state: `/NewMailCnt`, `/LobbyRefresh`, patch version GET, `/AutoHuntOpen`, `/AchievementList`, `/GuideQuestList`, `/TaskList`.
6. After the first successful registration, subsequent captures should be treated as continuation state. The same device/account no longer returns `firstAgreement:"y"`, so fresh-account behavior must come from the 18:51-18:56 segment.
