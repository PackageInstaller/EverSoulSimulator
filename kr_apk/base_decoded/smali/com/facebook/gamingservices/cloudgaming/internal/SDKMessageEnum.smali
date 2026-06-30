.class public final enum Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;
.super Ljava/lang/Enum;
.source "SDKMessageEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum CANCEL_SUBSCRIPTION:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum CAN_CREATE_SHORTCUT:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum CONSUME_PURCHASE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum CONTEXT_CHOOSE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum CONTEXT_CREATE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum CONTEXT_GET_ID:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum CONTEXT_SWITCH:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum CREATE_SHORTCUT:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum DEBUG_PRINT:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_ACCESS_TOKEN:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_CATALOG:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_CONTEXT_TOKEN:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_COUNTRY_ISO:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_PAYLOAD:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_PLAYER_DATA:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_PURCHASES:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_SUBSCRIBABLE_CATALOG:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_SUBSCRIPTIONS:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum GET_TOURNAMENT_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum IS_ENV_READY:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum LOAD_INTERSTITIAL_AD:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum LOAD_REWARDED_VIDEO:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum MARK_GAME_LOADED:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum ON_READY:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum OPEN_APP_STORE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum OPEN_GAME_REQUESTS_DIALOG:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum OPEN_GAMING_SERVICES_DEEP_LINK:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum OPEN_LINK:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum OPEN_PLAY_STORE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum PERFORM_HAPTIC_FEEDBACK_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum POST_SESSION_SCORE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum POST_SESSION_SCORE_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum PURCHASE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum PURCHASE_SUBSCRIPTION:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum SET_PLAYER_DATA:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum SHARE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum SHOW_INTERSTITIAL_AD:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum SHOW_REWARDED_VIDEO:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum TOURNAMENT_CREATE_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum TOURNAMENT_GET_TOURNAMENTS_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum TOURNAMENT_JOIN_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum TOURNAMENT_POST_SCORE_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

.field public static final enum TOURNAMENT_SHARE_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;


# instance fields
.field private final mStringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 46

    .line 14
    new-instance v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v1, "openPlayStore"

    const-string v2, "OPEN_PLAY_STORE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->OPEN_PLAY_STORE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 15
    new-instance v1, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v2, "openAppStore"

    const-string v4, "OPEN_APP_STORE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->OPEN_APP_STORE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 16
    new-instance v2, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v4, "markGameLoaded"

    const-string v6, "MARK_GAME_LOADED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->MARK_GAME_LOADED:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 17
    new-instance v4, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v6, "getPlayerData"

    const-string v8, "GET_PLAYER_DATA"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_PLAYER_DATA:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 18
    new-instance v6, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v8, "setPlayerData"

    const-string v10, "SET_PLAYER_DATA"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->SET_PLAYER_DATA:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 19
    new-instance v8, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v10, "getCatalog"

    const-string v12, "GET_CATALOG"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_CATALOG:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 20
    new-instance v10, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v12, "getPurchases"

    const-string v14, "GET_PURCHASES"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_PURCHASES:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 21
    new-instance v12, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v14, "purchase"

    const-string v15, "PURCHASE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->PURCHASE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 22
    new-instance v14, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "consumePurchase"

    const-string v13, "CONSUME_PURCHASE"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CONSUME_PURCHASE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 23
    new-instance v13, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "onReady"

    const-string v11, "ON_READY"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->ON_READY:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 24
    new-instance v11, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "getSubscribableCatalog"

    const-string v9, "GET_SUBSCRIBABLE_CATALOG"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_SUBSCRIBABLE_CATALOG:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 25
    new-instance v9, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "purchaseSubscription"

    const-string v7, "PURCHASE_SUBSCRIPTION"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->PURCHASE_SUBSCRIPTION:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 26
    new-instance v7, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "getSubscriptions"

    const-string v5, "GET_SUBSCRIPTIONS"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_SUBSCRIPTIONS:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 27
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "cancelSubscription"

    const-string v3, "CANCEL_SUBSCRIPTION"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CANCEL_SUBSCRIPTION:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 28
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "loadInterstitialAd"

    const-string v7, "LOAD_INTERSTITIAL_AD"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->LOAD_INTERSTITIAL_AD:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 29
    new-instance v7, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "loadRewardedVideo"

    const-string v5, "LOAD_REWARDED_VIDEO"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->LOAD_REWARDED_VIDEO:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 30
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "showInterstitialAd"

    const-string v3, "SHOW_INTERSTITIAL_AD"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->SHOW_INTERSTITIAL_AD:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 31
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "showRewardedVideo"

    const-string v7, "SHOW_REWARDED_VIDEO"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->SHOW_REWARDED_VIDEO:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 32
    new-instance v7, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "getAccessToken"

    const-string v5, "GET_ACCESS_TOKEN"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_ACCESS_TOKEN:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 33
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "getContextToken"

    const-string v3, "GET_CONTEXT_TOKEN"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_CONTEXT_TOKEN:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 34
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "getPayload"

    const-string v7, "GET_PAYLOAD"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_PAYLOAD:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 35
    new-instance v7, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const-string v15, "isEnvReady"

    const-string v5, "IS_ENV_READY"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->IS_ENV_READY:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 36
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v15, 0x16

    const-string v3, "share"

    move-object/from16 v25, v7

    const-string v7, "SHARE"

    invoke-direct {v5, v7, v15, v3}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->SHARE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 37
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x17

    const-string v15, "canCreateShortcut"

    move-object/from16 v26, v5

    const-string v5, "CAN_CREATE_SHORTCUT"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CAN_CREATE_SHORTCUT:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 38
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x18

    const-string v15, "createShortcut"

    move-object/from16 v27, v3

    const-string v3, "CREATE_SHORTCUT"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CREATE_SHORTCUT:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 39
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x19

    const-string v15, "openGamingServicesDeepLink"

    move-object/from16 v28, v5

    const-string v5, "OPEN_GAMING_SERVICES_DEEP_LINK"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->OPEN_GAMING_SERVICES_DEEP_LINK:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 40
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x1a

    const-string v15, "openGameRequestsDialog"

    move-object/from16 v29, v3

    const-string v3, "OPEN_GAME_REQUESTS_DIALOG"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->OPEN_GAME_REQUESTS_DIALOG:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 41
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x1b

    const-string v15, "postSessionScore"

    move-object/from16 v30, v5

    const-string v5, "POST_SESSION_SCORE"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->POST_SESSION_SCORE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 42
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x1c

    const-string v15, "postSessionScoreAsync"

    move-object/from16 v31, v3

    const-string v3, "POST_SESSION_SCORE_ASYNC"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->POST_SESSION_SCORE_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 43
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x1d

    const-string v15, "getTournamentAsync"

    move-object/from16 v32, v5

    const-string v5, "GET_TOURNAMENT_ASYNC"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_TOURNAMENT_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 44
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x1e

    const-string v15, "tournamentCreateAsync"

    move-object/from16 v33, v3

    const-string v3, "TOURNAMENT_CREATE_ASYNC"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->TOURNAMENT_CREATE_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 45
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x1f

    const-string v15, "tournamentShareAsync"

    move-object/from16 v34, v5

    const-string v5, "TOURNAMENT_SHARE_ASYNC"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->TOURNAMENT_SHARE_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 46
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x20

    const-string v15, "tournamentPostScoreAsync"

    move-object/from16 v35, v3

    const-string v3, "TOURNAMENT_POST_SCORE_ASYNC"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->TOURNAMENT_POST_SCORE_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 47
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x21

    const-string v15, "getTournaments"

    move-object/from16 v36, v5

    const-string v5, "TOURNAMENT_GET_TOURNAMENTS_ASYNC"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->TOURNAMENT_GET_TOURNAMENTS_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 48
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x22

    const-string v15, "joinTournament"

    move-object/from16 v37, v3

    const-string v3, "TOURNAMENT_JOIN_ASYNC"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->TOURNAMENT_JOIN_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 49
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x23

    const-string v15, "openExternalLink"

    move-object/from16 v38, v5

    const-string v5, "OPEN_LINK"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->OPEN_LINK:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 50
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x24

    const-string v15, "performHapticFeedbackAsync"

    move-object/from16 v39, v3

    const-string v3, "PERFORM_HAPTIC_FEEDBACK_ASYNC"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->PERFORM_HAPTIC_FEEDBACK_ASYNC:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 51
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x25

    const-string v15, "contextSwitch"

    move-object/from16 v40, v5

    const-string v5, "CONTEXT_SWITCH"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CONTEXT_SWITCH:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 52
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x26

    const-string v15, "contextChoose"

    move-object/from16 v41, v3

    const-string v3, "CONTEXT_CHOOSE"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CONTEXT_CHOOSE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 53
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x27

    const-string v15, "contextCreate"

    move-object/from16 v42, v5

    const-string v5, "CONTEXT_CREATE"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CONTEXT_CREATE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 54
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x28

    const-string v15, "contextGetID"

    move-object/from16 v43, v3

    const-string v3, "CONTEXT_GET_ID"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CONTEXT_GET_ID:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 55
    new-instance v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x29

    const-string v15, "debugPrint"

    move-object/from16 v44, v5

    const-string v5, "DEBUG_PRINT"

    invoke-direct {v3, v5, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->DEBUG_PRINT:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 56
    new-instance v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v7, 0x2a

    const-string v15, "getCountryISO"

    move-object/from16 v45, v3

    const-string v3, "GET_COUNTRY_ISO"

    invoke-direct {v5, v3, v7, v15}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->GET_COUNTRY_ISO:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/16 v3, 0x2b

    new-array v3, v3, [Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v23, v3, v0

    const/16 v0, 0x14

    aput-object v24, v3, v0

    const/16 v0, 0x15

    aput-object v25, v3, v0

    const/16 v0, 0x16

    aput-object v26, v3, v0

    const/16 v0, 0x17

    aput-object v27, v3, v0

    const/16 v0, 0x18

    aput-object v28, v3, v0

    const/16 v0, 0x19

    aput-object v29, v3, v0

    const/16 v0, 0x1a

    aput-object v30, v3, v0

    const/16 v0, 0x1b

    aput-object v31, v3, v0

    const/16 v0, 0x1c

    aput-object v32, v3, v0

    const/16 v0, 0x1d

    aput-object v33, v3, v0

    const/16 v0, 0x1e

    aput-object v34, v3, v0

    const/16 v0, 0x1f

    aput-object v35, v3, v0

    const/16 v0, 0x20

    aput-object v36, v3, v0

    const/16 v0, 0x21

    aput-object v37, v3, v0

    const/16 v0, 0x22

    aput-object v38, v3, v0

    const/16 v0, 0x23

    aput-object v39, v3, v0

    const/16 v0, 0x24

    aput-object v40, v3, v0

    const/16 v0, 0x25

    aput-object v41, v3, v0

    const/16 v0, 0x26

    aput-object v42, v3, v0

    const/16 v0, 0x27

    aput-object v43, v3, v0

    const/16 v0, 0x28

    aput-object v44, v3, v0

    const/16 v0, 0x29

    aput-object v45, v3, v0

    const/16 v0, 0x2a

    aput-object v5, v3, v0

    .line 13
    sput-object v3, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->$VALUES:[Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "stringValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->mStringValue:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static fromString(Ljava/lang/String;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->values()[Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 71
    invoke-virtual {v3}, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    const-class v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;
    .locals 1

    .line 13
    sget-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->$VALUES:[Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    invoke-virtual {v0}, [Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->mStringValue:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
