.class public final Lcom/kakaogame/game/GameServerProtocol;
.super Ljava/lang/Object;
.source "GameServerProtocol.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008(\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010+\u001a\u00020\u0007H\u0002J\n\u0010,\u001a\u0004\u0018\u00010\u0007H\u0002J\n\u0010-\u001a\u0004\u0018\u00010\u0007H\u0002J\n\u0010.\u001a\u0004\u0018\u00010\u0007H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\tR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\tR\u000e\u0010\u0011\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\t\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\t\"\u0004\u0008\"\u0010\u001fR\u001a\u0010#\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\t\"\u0004\u0008%\u0010\u001fR\u000e\u0010&\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/kakaogame/game/GameServerProtocol;",
        "",
        "<init>",
        "()V",
        "DEPLOY_PHASE",
        "Lcom/kakao/sdk/partner/model/KakaoPhase;",
        "KAGE_API_AUTHORITY",
        "",
        "getKAGE_API_AUTHORITY",
        "()Ljava/lang/String;",
        "KAGE_CDN_AUTHORITY",
        "IMAGE_UPLOAD_PATH",
        "GAME_API_AUTHORITY",
        "API_PROXY_AUTHORITY",
        "getAPI_PROXY_AUTHORITY",
        "REACH_AUTHORITY",
        "getREACH_AUTHORITY",
        "Alpha",
        "Beta",
        "Sandbox",
        "Release",
        "Local",
        "GET_TEMPLATE_PATH",
        "GET_APP_POST_PATH",
        "GET_INVITATION_EVENTS_PATH",
        "GET_INVITATION_SENDER_PATH",
        "GET_INVITATION_SENDER_LIST_PATH",
        "GET_INVITATION_STATES_PATH",
        "KGA_HEADER_KEY",
        "getKGA_HEADER_KEY",
        "setKGA_HEADER_KEY",
        "(Ljava/lang/String;)V",
        "KGA_APP_KEY",
        "getKGA_APP_KEY",
        "setKGA_APP_KEY",
        "KGA_USER_ID",
        "getKGA_USER_ID",
        "setKGA_USER_ID",
        "REACH_API_VERSION",
        "INGAME_STATUS",
        "PLUS_FRIEND_ADD",
        "PUBLIC_ERROR",
        "REACH_WEB_APP_URL_SCHEME",
        "initKageAPIAuthority",
        "initGameAPIAuthority",
        "initAPIProxyAuthority",
        "initReachAuthority",
        "idp_kakao_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final API_PROXY_AUTHORITY:Ljava/lang/String;

.field public static final Alpha:Ljava/lang/String; = "dev"

.field public static final Beta:Ljava/lang/String; = "cbt"

.field private static final DEPLOY_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

.field public static final GAME_API_AUTHORITY:Ljava/lang/String;

.field public static final GET_APP_POST_PATH:Ljava/lang/String; = "/app_post"

.field public static final GET_INVITATION_EVENTS_PATH:Ljava/lang/String; = "/common/v1/invitation_events"

.field public static final GET_INVITATION_SENDER_LIST_PATH:Ljava/lang/String; = "/invitation_sender_list"

.field public static final GET_INVITATION_SENDER_PATH:Ljava/lang/String; = "/invitation_sender"

.field public static final GET_INVITATION_STATES_PATH:Ljava/lang/String; = "/invitation_states"

.field public static final GET_TEMPLATE_PATH:Ljava/lang/String; = "/playgame/v2/story_feed/template/"

.field public static final IMAGE_UPLOAD_PATH:Ljava/lang/String; = "/upload/game-sdk/"

.field public static final INGAME_STATUS:Ljava/lang/String; = "reach/v1/ingame/status"

.field public static final INSTANCE:Lcom/kakaogame/game/GameServerProtocol;

.field private static final KAGE_API_AUTHORITY:Ljava/lang/String;

.field public static final KAGE_CDN_AUTHORITY:Ljava/lang/String; = "http://gc.kakaocdn.net/dn/"

.field private static KGA_APP_KEY:Ljava/lang/String; = null

.field private static KGA_HEADER_KEY:Ljava/lang/String; = null

.field private static KGA_USER_ID:Ljava/lang/String; = null

.field public static final Local:Ljava/lang/String; = "local"

.field public static final PLUS_FRIEND_ADD:Ljava/lang/String; = "/plus_friend/add"

.field public static final PUBLIC_ERROR:Ljava/lang/String; = "/public/error"

.field private static final REACH_API_VERSION:Ljava/lang/String; = "reach/v1"

.field private static final REACH_AUTHORITY:Ljava/lang/String;

.field public static final REACH_WEB_APP_URL_SCHEME:Ljava/lang/String; = "kakaoreach"

.field public static final Release:Ljava/lang/String; = "production"

.field public static final Sandbox:Ljava/lang/String; = "sandbox"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/game/GameServerProtocol;

    invoke-direct {v0}, Lcom/kakaogame/game/GameServerProtocol;-><init>()V

    sput-object v0, Lcom/kakaogame/game/GameServerProtocol;->INSTANCE:Lcom/kakaogame/game/GameServerProtocol;

    .line 99
    sget-object v1, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->getKAKAO_PHASE()Lcom/kakao/sdk/partner/model/KakaoPhase;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/game/GameServerProtocol;->DEPLOY_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    .line 109
    invoke-direct {v0}, Lcom/kakaogame/game/GameServerProtocol;->initKageAPIAuthority()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/game/GameServerProtocol;->KAGE_API_AUTHORITY:Ljava/lang/String;

    .line 149
    invoke-direct {v0}, Lcom/kakaogame/game/GameServerProtocol;->initGameAPIAuthority()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/game/GameServerProtocol;->GAME_API_AUTHORITY:Ljava/lang/String;

    .line 159
    invoke-direct {v0}, Lcom/kakaogame/game/GameServerProtocol;->initAPIProxyAuthority()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/game/GameServerProtocol;->API_PROXY_AUTHORITY:Ljava/lang/String;

    .line 169
    invoke-direct {v0}, Lcom/kakaogame/game/GameServerProtocol;->initReachAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/game/GameServerProtocol;->REACH_AUTHORITY:Ljava/lang/String;

    const v0, 0x2257037e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    sput-object v0, Lcom/kakaogame/game/GameServerProtocol;->KGA_HEADER_KEY:Ljava/lang/String;

    const v0, 0x5d122387

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    sput-object v0, Lcom/kakaogame/game/GameServerProtocol;->KGA_APP_KEY:Ljava/lang/String;

    const v0, 0x7d720ba5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    sput-object v0, Lcom/kakaogame/game/GameServerProtocol;->KGA_USER_ID:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final initAPIProxyAuthority()Ljava/lang/String;
    .locals 2

    .line 659
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->DEPLOY_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/partner/model/KakaoPhase;->getPhaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v1, 0x22565d26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x543b09f2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const v1, 0x3360a093

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7d72041d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const v1, 0x22570c96

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3360a1ab

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const v1, 0x7d720565

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7d7206bd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    const v1, 0x5d122f87

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const v0, -0x2240cf9c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x17ff5 -> :sswitch_4
        0x18415 -> :sswitch_3
        0x625df6b -> :sswitch_2
        0x687cf0b9 -> :sswitch_1
        0x6f2fbec7 -> :sswitch_0
    .end sparse-switch

    .array-data 1
    .end array-data
.end method

.method private final initGameAPIAuthority()Ljava/lang/String;
    .locals 3

    .line 569
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->DEPLOY_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/partner/model/KakaoPhase;->getPhaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x17ff5

    if-eq v1, v2, :cond_4

    const v2, 0x18415

    if-eq v1, v2, :cond_2

    const v2, 0x687cf0b9

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x3360a093

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7d72041d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v1, 0x7d720565

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7d7206bd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const v1, 0x5d122f87

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const v0, -0x2240cf9c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final initKageAPIAuthority()Ljava/lang/String;
    .locals 3

    .line 479
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->DEPLOY_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/partner/model/KakaoPhase;->getPhaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x543b0552

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const v1, 0x22565d26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x543b0252

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_1
    const v1, 0x3360a093

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    const v1, 0x7d720565

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x3360a56b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :sswitch_3
    const v1, 0x5d122f87

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x17ff5 -> :sswitch_3
        0x18415 -> :sswitch_2
        0x687cf0b9 -> :sswitch_1
        0x6f2fbec7 -> :sswitch_0
    .end sparse-switch

    .array-data 1
    .end array-data
.end method

.method private final initReachAuthority()Ljava/lang/String;
    .locals 2

    .line 769
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->DEPLOY_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/partner/model/KakaoPhase;->getPhaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v1, 0x22565d26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x6d0e1f08

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const v1, 0x3360a093

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, -0x2240cafc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const v1, 0x22570c96

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3360a1ab

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const v1, 0x7d720565

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d0e01f8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    const v1, 0x5d122f87

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x6d0e0100

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x17ff5 -> :sswitch_4
        0x18415 -> :sswitch_3
        0x625df6b -> :sswitch_2
        0x687cf0b9 -> :sswitch_1
        0x6f2fbec7 -> :sswitch_0
    .end sparse-switch

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAPI_PROXY_AUTHORITY()Ljava/lang/String;
    .locals 1

    .line 159
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->API_PROXY_AUTHORITY:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKAGE_API_AUTHORITY()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->KAGE_API_AUTHORITY:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKGA_APP_KEY()Ljava/lang/String;
    .locals 1

    .line 319
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->KGA_APP_KEY:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKGA_HEADER_KEY()Ljava/lang/String;
    .locals 1

    .line 309
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->KGA_HEADER_KEY:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKGA_USER_ID()Ljava/lang/String;
    .locals 1

    .line 329
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->KGA_USER_ID:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getREACH_AUTHORITY()Ljava/lang/String;
    .locals 1

    .line 169
    sget-object v0, Lcom/kakaogame/game/GameServerProtocol;->REACH_AUTHORITY:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setKGA_APP_KEY(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    sput-object p1, Lcom/kakaogame/game/GameServerProtocol;->KGA_APP_KEY:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setKGA_HEADER_KEY(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    sput-object p1, Lcom/kakaogame/game/GameServerProtocol;->KGA_HEADER_KEY:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setKGA_USER_ID(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sput-object p1, Lcom/kakaogame/game/GameServerProtocol;->KGA_USER_ID:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
