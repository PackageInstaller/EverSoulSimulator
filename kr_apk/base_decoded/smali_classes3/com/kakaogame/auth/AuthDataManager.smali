.class public final Lcom/kakaogame/auth/AuthDataManager;
.super Ljava/lang/Object;
.source "AuthDataManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthDataManager.kt\ncom/kakaogame/auth/AuthDataManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,469:1\n1#2:470\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u0012\u0010\u001d\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007J\u0012\u0010\u001e\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007J,\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010 \u001a\u0004\u0018\u00010\u00112\u0008\u0010!\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010\"\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010#\u001a\u0004\u0018\u00010\u0013J\u001a\u0010$\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010#\u001a\u0004\u0018\u00010\u0013H\u0007J\u0010\u0010%\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\n\u0010,\u001a\u0004\u0018\u00010\u0013H\u0007J\u0006\u00100\u001a\u00020\u0016J\u000e\u00101\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\"\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u000104032\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u00105\u001a\u0004\u0018\u00010\u0005H\u0007J\u0008\u00106\u001a\u00020\u0018H\u0002J\u000e\u00107\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aJ\u001a\u0010\u0015\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u00108\u001a\u0004\u0018\u00010\u0013H\u0002J\u001a\u00109\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u00108\u001a\u0004\u0018\u00010\u0013H\u0002J\u001a\u0010:\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010 \u001a\u0004\u0018\u00010\u0011H\u0002J\u0012\u0010;\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0012\u0010<\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0012\u0010=\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010 \u001a\u0004\u0018\u00010\u00118FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008&\u0010\u0003\u001a\u0004\u0008\'\u0010(R\u001c\u0010#\u001a\u0004\u0018\u00010\u00138FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008)\u0010\u0003\u001a\u0004\u0008*\u0010+R\u0011\u0010-\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/\u00a8\u0006>"
    }
    d2 = {
        "Lcom/kakaogame/auth/AuthDataManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "ACCOUNT_NAME_PRE",
        "TEMP_ACCOUNT_NAME_PRE",
        "ACCOUNT_NAME",
        "TEMP_ACCOUNT_NAME",
        "LOGINDATA_NAME_PRE",
        "LOGINDATA_NAME",
        "lock",
        "appId",
        "serverType",
        "prefKey",
        "reservedLoginData",
        "Lcom/kakaogame/auth/LoginData;",
        "reservedAccount",
        "Lcom/kakaogame/idp/IdpAccount;",
        "tempAccount",
        "saveAccount",
        "",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lcom/kakaogame/config/Configuration;",
        "clearAuthData",
        "clearTempAccount",
        "setAuthData",
        "loginData",
        "authData",
        "setAccount",
        "account",
        "setTempAccount",
        "updateAccessToken",
        "getLoginData$annotations",
        "getLoginData",
        "()Lcom/kakaogame/auth/LoginData;",
        "getAccount$annotations",
        "getAccount",
        "()Lcom/kakaogame/idp/IdpAccount;",
        "getTempAccount",
        "playerId",
        "getPlayerId",
        "()Ljava/lang/String;",
        "isSaveAccount",
        "requestRefreshZAT",
        "requestIssueZAT",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "cause",
        "refreshTokenWithIdp",
        "getLastPlayerId",
        "idpAccount",
        "saveTempAccount",
        "saveLoginData",
        "loadAccount",
        "loadTempAccount",
        "loadLoginData",
        "gamesdk_release"
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
.field private static final ACCOUNT_NAME:Ljava/lang/String;

.field private static final ACCOUNT_NAME_PRE:Ljava/lang/String;

.field public static final INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

.field private static final LOGINDATA_NAME:Ljava/lang/String;

.field private static final LOGINDATA_NAME_PRE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_ACCOUNT_NAME:Ljava/lang/String;

.field private static final TEMP_ACCOUNT_NAME_PRE:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;

.field private static prefKey:Ljava/lang/String;

.field private static reservedAccount:Lcom/kakaogame/idp/IdpAccount;

.field private static reservedLoginData:Lcom/kakaogame/auth/LoginData;

.field private static saveAccount:Z

.field private static serverType:Ljava/lang/String;

.field private static tempAccount:Lcom/kakaogame/idp/IdpAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/auth/AuthDataManager;

    invoke-direct {v0}, Lcom/kakaogame/auth/AuthDataManager;-><init>()V

    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

    const v0, 0x54391712

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    const v0, 0x3362b2db

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->ACCOUNT_NAME_PRE:Ljava/lang/String;

    const v0, -0x45197977

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->TEMP_ACCOUNT_NAME_PRE:Ljava/lang/String;

    const v0, 0x6d0c0b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->ACCOUNT_NAME:Ljava/lang/String;

    const v0, 0x22551ee6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->TEMP_ACCOUNT_NAME:Ljava/lang/String;

    const v0, 0x7d701775

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->LOGINDATA_NAME_PRE:Ljava/lang/String;

    const v0, 0x543912b2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->LOGINDATA_NAME:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final clearAuthData(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 639
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    const v2, 0x2255197e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 659
    :try_start_0
    sput-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    .line 669
    sput-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    .line 679
    sput-object v1, Lcom/kakaogame/auth/AuthDataManager;->tempAccount:Lcom/kakaogame/idp/IdpAccount;

    const/4 v1, 0x0

    .line 689
    sput-boolean v1, Lcom/kakaogame/auth/AuthDataManager;->saveAccount:Z

    .line 699
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 709
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TEMP_ACCOUNT_NAME:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 719
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->LOGINDATA_NAME:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 729
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->ACCOUNT_NAME_PRE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 739
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TEMP_ACCOUNT_NAME_PRE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 749
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->LOGINDATA_NAME_PRE:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 759
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static final clearTempAccount(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 809
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    const v2, 0x2255197e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 829
    :try_start_0
    sput-object v1, Lcom/kakaogame/auth/AuthDataManager;->tempAccount:Lcom/kakaogame/idp/IdpAccount;

    .line 839
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TEMP_ACCOUNT_NAME:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 849
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static final getAccount()Lcom/kakaogame/idp/IdpAccount;
    .locals 2

    .line 1679
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public static synthetic getAccount$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getLoginData()Lcom/kakaogame/auth/LoginData;
    .locals 2

    .line 1629
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public static synthetic getLoginData$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getTempAccount()Lcom/kakaogame/idp/IdpAccount;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1729
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->tempAccount:Lcom/kakaogame/idp/IdpAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public static final initialize(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3362b5f3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

    invoke-virtual {p1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/auth/AuthDataManager;->appId:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Lcom/kakaogame/config/Configuration;->getServerTypeString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kakaogame/auth/AuthDataManager;->serverType:Ljava/lang/String;

    .line 489
    sget-object p1, Lcom/kakaogame/auth/AuthDataManager;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "appId"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    sput-object p1, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    .line 499
    sget-object p1, Lcom/kakaogame/config/Configuration$KGServerType;->LIVE:Lcom/kakaogame/config/Configuration$KGServerType;

    invoke-virtual {p1}, Lcom/kakaogame/config/Configuration$KGServerType;->getValue()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->serverType:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    if-nez v2, :cond_1

    const v2, 0x7d7011dd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x5f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->serverType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    .line 529
    :cond_2
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x5439133a

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    if-nez v5, :cond_3

    const v5, 0x7d7011dd

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v5

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    sget-object p1, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 549
    :try_start_0
    invoke-direct {v0, p0}, Lcom/kakaogame/auth/AuthDataManager;->loadLoginData(Landroid/content/Context;)Lcom/kakaogame/auth/LoginData;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    .line 559
    invoke-direct {v0, p0}, Lcom/kakaogame/auth/AuthDataManager;->loadAccount(Landroid/content/Context;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    .line 569
    invoke-direct {v0, p0}, Lcom/kakaogame/auth/AuthDataManager;->loadTempAccount(Landroid/content/Context;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p0

    sput-object p0, Lcom/kakaogame/auth/AuthDataManager;->tempAccount:Lcom/kakaogame/idp/IdpAccount;

    .line 579
    sget-object p0, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    sput-boolean v3, Lcom/kakaogame/auth/AuthDataManager;->saveAccount:Z

    .line 589
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final loadAccount(Landroid/content/Context;)Lcom/kakaogame/idp/IdpAccount;
    .locals 10

    const v0, 0x22551bee

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3362b663

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 3549
    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->ACCOUNT_NAME_PRE:Ljava/lang/String;

    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    const v4, 0x7d7011dd

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_0
    invoke-static {p1, v2, v3, v5}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3569
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v8

    :goto_1
    xor-int/2addr v6, v8

    if-eqz v6, :cond_3

    goto :goto_2

    .line 3579
    :cond_3
    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->ACCOUNT_NAME:Ljava/lang/String;

    sget-object v9, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    if-nez v9, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v5

    :cond_4
    invoke-static {p1, v3, v9, v5}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3589
    :goto_2
    sget-object v4, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    sget-object v9, Lcom/kakaogame/auth/AuthDataManager;->appId:Ljava/lang/String;

    if-nez v9, :cond_5

    const v9, 0x7d7197d5

    invoke-static {v9}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v5

    :cond_5
    invoke-virtual {v4, p1, v9, v6}, Lcom/kakaogame/auth/DataKeyManager;->getKeysInKeystore(Landroid/content/Context;Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v3, :cond_d

    .line 3619
    :try_start_0
    invoke-static {v9, v4, v3}, Lcom/kakaogame/util/AES256Cipher;->decodeString([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3629
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v8, v7

    :cond_7
    :goto_3
    if-nez v8, :cond_c

    .line 3639
    new-instance v4, Ljava/io/ByteArrayInputStream;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v8, "getBytes(...)"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3649
    new-instance v3, Landroid/util/Base64InputStream;

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v3, v4, v7}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 3659
    new-instance v4, Ljava/io/ObjectInputStream;

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3669
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 3679
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    if-nez v3, :cond_8

    return-object v5

    .line 3719
    :cond_8
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v7, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    instance-of v1, v3, Ljava/util/Map;

    if-eqz v1, :cond_9

    new-instance v1, Lcom/kakaogame/idp/IdpAccount;

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/kakaogame/idp/IdpAccount;-><init>(Ljava/util/Map;)V

    goto :goto_4

    .line 3749
    :cond_9
    instance-of v1, v3, Lcom/kakaogame/idp/IdpAccount;

    if-eqz v1, :cond_a

    move-object v1, v3

    check-cast v1, Lcom/kakaogame/idp/IdpAccount;

    goto :goto_4

    :cond_a
    move-object v1, v5

    .line 3779
    :goto_4
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_b

    .line 3789
    invoke-static {p1, v2}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return-object v1

    :cond_c
    return-object v5

    :catch_0
    move-exception p1

    .line 3879
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-object v5

    .array-data 1
    .end array-data
.end method

.method private final loadLoginData(Landroid/content/Context;)Lcom/kakaogame/auth/LoginData;
    .locals 9

    const v0, 0x22551a8e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x45197cc7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 4329
    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->LOGINDATA_NAME_PRE:Ljava/lang/String;

    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    const v4, 0x7d7011dd

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_0
    invoke-static {p1, v2, v3, v5}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4349
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v8

    :goto_1
    xor-int/2addr v6, v8

    if-eqz v6, :cond_3

    goto :goto_2

    .line 4359
    :cond_3
    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->LOGINDATA_NAME:Ljava/lang/String;

    sget-object v8, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    if-nez v8, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_4
    invoke-static {p1, v3, v8, v5}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4369
    :goto_2
    sget-object v4, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    sget-object v8, Lcom/kakaogame/auth/AuthDataManager;->appId:Ljava/lang/String;

    if-nez v8, :cond_5

    const v8, 0x7d7197d5

    invoke-static {v8}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_5
    invoke-virtual {v4, p1, v8, v6}, Lcom/kakaogame/auth/DataKeyManager;->getKeysInKeystore(Landroid/content/Context;Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v3, :cond_b

    .line 4399
    :try_start_0
    invoke-static {v8, v4, v3}, Lcom/kakaogame/util/AES256Cipher;->decodeString([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 4419
    new-instance v4, Ljava/io/ByteArrayInputStream;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v8, "getBytes(...)"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4429
    new-instance v3, Landroid/util/Base64InputStream;

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v3, v4, v7}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4439
    new-instance v4, Ljava/io/ObjectInputStream;

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4449
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 4459
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    if-nez v3, :cond_6

    return-object v5

    .line 4499
    :cond_6
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v7, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    instance-of v1, v3, Ljava/util/Map;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/kakaogame/auth/LoginData;

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/kakaogame/auth/LoginData;-><init>(Ljava/util/Map;)V

    goto :goto_3

    .line 4529
    :cond_7
    instance-of v1, v3, Lcom/kakaogame/auth/LoginData;

    if-eqz v1, :cond_8

    move-object v1, v3

    check-cast v1, Lcom/kakaogame/auth/LoginData;

    goto :goto_3

    :cond_8
    move-object v1, v5

    .line 4559
    :goto_3
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_9

    .line 4569
    invoke-static {p1, v2}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object v1

    :cond_a
    return-object v5

    :catch_0
    move-exception p1

    .line 4659
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-object v5

    nop

    .array-data 1
    .end array-data
.end method

.method private final loadTempAccount(Landroid/content/Context;)Lcom/kakaogame/idp/IdpAccount;
    .locals 9

    const v0, 0x3362c84b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d706d8d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 3939
    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->TEMP_ACCOUNT_NAME_PRE:Ljava/lang/String;

    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    const v4, 0x7d7011dd

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_0
    invoke-static {p1, v2, v3, v5}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3959
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v8

    :goto_1
    xor-int/2addr v6, v8

    if-eqz v6, :cond_3

    goto :goto_2

    .line 3969
    :cond_3
    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->TEMP_ACCOUNT_NAME:Ljava/lang/String;

    sget-object v8, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    if-nez v8, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_4
    invoke-static {p1, v3, v8, v5}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3979
    :goto_2
    sget-object v4, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    sget-object v8, Lcom/kakaogame/auth/AuthDataManager;->appId:Ljava/lang/String;

    if-nez v8, :cond_5

    const v8, 0x7d7197d5

    invoke-static {v8}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v5

    :cond_5
    invoke-virtual {v4, p1, v8, v6}, Lcom/kakaogame/auth/DataKeyManager;->getKeysInKeystore(Landroid/content/Context;Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v3, :cond_b

    .line 4009
    :try_start_0
    invoke-static {v8, v4, v3}, Lcom/kakaogame/util/AES256Cipher;->decodeString([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 4029
    new-instance v4, Ljava/io/ByteArrayInputStream;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v8, "getBytes(...)"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4039
    new-instance v3, Landroid/util/Base64InputStream;

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v3, v4, v7}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4049
    new-instance v4, Ljava/io/ObjectInputStream;

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4059
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 4069
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    if-nez v3, :cond_6

    return-object v5

    .line 4109
    :cond_6
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v7, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    instance-of v1, v3, Ljava/util/Map;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/kakaogame/idp/IdpAccount;

    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/kakaogame/idp/IdpAccount;-><init>(Ljava/util/Map;)V

    goto :goto_3

    .line 4139
    :cond_7
    instance-of v1, v3, Lcom/kakaogame/idp/IdpAccount;

    if-eqz v1, :cond_8

    move-object v1, v3

    check-cast v1, Lcom/kakaogame/idp/IdpAccount;

    goto :goto_3

    :cond_8
    move-object v1, v5

    .line 4169
    :goto_3
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_9

    .line 4179
    invoke-static {p1, v2}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-object v1

    :cond_a
    return-object v5

    :catch_0
    move-exception p1

    .line 4269
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-object v5

    nop

    .array-data 1
    .end array-data
.end method

.method private final refreshTokenWithIdp()V
    .locals 5

    .line 2549
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->autoLoginInternalForZatRefresh()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 2559
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, -0x451902df

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2579
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    .line 2589
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kakaogame/core/CoreManager;->onLogout(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final requestIssueZAT(Landroid/content/Context;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2329
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v1

    const/16 v2, 0xfa2

    if-nez v1, :cond_0

    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 2339
    :cond_0
    invoke-virtual {v1}, Lcom/kakaogame/auth/LoginData;->getAccessToken()Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2349
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 2369
    :cond_1
    invoke-static {p0, v1, p1}, Lcom/kakaogame/auth/AuthService;->issueZatWithRefreshToken(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2379
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x54396c22

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2399
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;

    invoke-virtual {v1, p1}, Lcom/kakaogame/auth/LoginData;->setAccessToken(Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;)V

    .line 2409
    sget-object p1, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 2419
    :try_start_0
    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    if-nez v2, :cond_2

    .line 2429
    sput-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    goto :goto_0

    .line 2449
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/kakaogame/auth/LoginData;->update(Lcom/kakaogame/auth/LoginData;)V

    .line 2469
    :goto_0
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    invoke-direct {v0, p0, v1}, Lcom/kakaogame/auth/AuthDataManager;->saveLoginData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;)V

    .line 2479
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2409
    monitor-exit p1

    .line 2489
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2409
    monitor-exit p1

    throw p0

    .line 2509
    :cond_3
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final saveAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V
    .locals 10

    .line 2739
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x6d0c7248

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 2789
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/kakaogame/idp/IdpAccount;->getObject()Ljava/util/Map;

    move-result-object p2

    .line 2799
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2809
    new-instance v1, Ljava/io/ObjectOutputStream;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2819
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2829
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 2839
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 2849
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2859
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2869
    new-instance v1, Landroid/util/Base64OutputStream;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 2879
    invoke-virtual {v1, p2}, Landroid/util/Base64OutputStream;->write([B)V

    .line 2889
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 2899
    sget-object v4, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string p2, "appId"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, p2

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kakaogame/auth/DataKeyManager;->getKeysInKeystore$default(Lcom/kakaogame/auth/DataKeyManager;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 2909
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v3, "toByteArray(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v2, p2, v3}, Lcom/kakaogame/util/AES256Cipher;->encodeString([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2929
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->ACCOUNT_NAME:Ljava/lang/String;

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "prefKey"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-static {p1, v0, v1, p2}, Lcom/kakaogame/util/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2959
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method private final saveLoginData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;)V
    .locals 10

    .line 3279
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7d7068b5

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 3329
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->getObject()Ljava/util/Map;

    move-result-object p2

    .line 3339
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3349
    new-instance v1, Ljava/io/ObjectOutputStream;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3359
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3369
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 3379
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3389
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3399
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3409
    new-instance v1, Landroid/util/Base64OutputStream;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 3419
    invoke-virtual {v1, p2}, Landroid/util/Base64OutputStream;->write([B)V

    .line 3429
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 3439
    sget-object v4, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string p2, "appId"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, p2

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kakaogame/auth/DataKeyManager;->getKeysInKeystore$default(Lcom/kakaogame/auth/DataKeyManager;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 3449
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v3, "toByteArray(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v2, p2, v3}, Lcom/kakaogame/util/AES256Cipher;->encodeString([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3469
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->LOGINDATA_NAME:Ljava/lang/String;

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "prefKey"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-static {p1, v0, v1, p2}, Lcom/kakaogame/util/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3499
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method private final saveTempAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V
    .locals 10

    .line 3009
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x5d1041c7

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 3059
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/kakaogame/idp/IdpAccount;->getObject()Ljava/util/Map;

    move-result-object p2

    .line 3069
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3079
    new-instance v1, Ljava/io/ObjectOutputStream;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3089
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3099
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 3109
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3129
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3139
    new-instance v1, Landroid/util/Base64OutputStream;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 3149
    invoke-virtual {v1, p2}, Landroid/util/Base64OutputStream;->write([B)V

    .line 3159
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 3169
    sget-object v4, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string p2, "appId"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, p2

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kakaogame/auth/DataKeyManager;->getKeysInKeystore$default(Lcom/kakaogame/auth/DataKeyManager;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 3179
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v3, "toByteArray(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v2, p2, v3}, Lcom/kakaogame/util/AES256Cipher;->encodeString([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3199
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->TEMP_ACCOUNT_NAME:Ljava/lang/String;

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->prefKey:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "prefKey"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-static {p1, v0, v1, p2}, Lcom/kakaogame/util/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3229
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final setAuthData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;Lcom/kakaogame/idp/IdpAccount;Z)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x7d706995

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d70696d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x451e0c57

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    const v4, -0x2242a30c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 919
    :try_start_0
    sget-object v4, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    if-nez v4, :cond_0

    .line 929
    sput-object p2, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    goto :goto_0

    .line 949
    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, p2}, Lcom/kakaogame/idp/IdpAccount;->update(Lcom/kakaogame/idp/IdpAccount;)V

    .line 969
    :goto_0
    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    if-nez p2, :cond_1

    .line 979
    sput-object p1, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    goto :goto_1

    .line 999
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/kakaogame/auth/LoginData;->update(Lcom/kakaogame/auth/LoginData;)V

    .line 1019
    :goto_1
    sget-object p1, Lcom/kakaogame/auth/AuthDataManager;->INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

    sput-boolean p3, Lcom/kakaogame/auth/AuthDataManager;->saveAccount:Z

    .line 1029
    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    invoke-direct {p1, p0, p2}, Lcom/kakaogame/auth/AuthDataManager;->saveLoginData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;)V

    if-eqz p3, :cond_2

    .line 1049
    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    invoke-direct {p1, p0, p2}, Lcom/kakaogame/auth/AuthDataManager;->saveAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V

    goto :goto_2

    .line 1069
    :cond_2
    sget-object p1, Lcom/kakaogame/auth/AuthDataManager;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/kakaogame/util/PreferenceUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 1089
    :goto_2
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/kakaogame/idp/IdpAccount;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static final setTempAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1309
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    const v2, 0x54396842

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1349
    :cond_0
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1359
    :try_start_0
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->tempAccount:Lcom/kakaogame/idp/IdpAccount;

    if-nez v1, :cond_1

    .line 1369
    sput-object p1, Lcom/kakaogame/auth/AuthDataManager;->tempAccount:Lcom/kakaogame/idp/IdpAccount;

    goto :goto_0

    .line 1389
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/kakaogame/idp/IdpAccount;->update(Lcom/kakaogame/idp/IdpAccount;)V

    .line 1409
    :goto_0
    sget-object p1, Lcom/kakaogame/auth/AuthDataManager;->INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->tempAccount:Lcom/kakaogame/idp/IdpAccount;

    invoke-direct {p1, p0, v1}, Lcom/kakaogame/auth/AuthDataManager;->saveTempAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V

    .line 1419
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final updateAccessToken(Landroid/content/Context;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1469
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    const v2, 0x6d0c76e8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getAccount()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1489
    :cond_0
    invoke-static {v1}, Lcom/kakaogame/idp/IdpAuthManager;->getIdpAuthHadler(Ljava/lang/String;)Lcom/kakaogame/idp/IdpAuthHandler;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/idp/IdpAuthExHandler;

    if-nez v1, :cond_1

    return-void

    .line 1509
    :cond_1
    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    if-eqz v2, :cond_2

    .line 1519
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/kakaogame/idp/IdpAuthExHandler;->getAccessToken(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "accessToken"

    .line 1539
    invoke-virtual {v2, v4, v1}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1549
    invoke-direct {v0, p0, v2}, Lcom/kakaogame/auth/AuthDataManager;->saveAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V

    .line 1559
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getLastPlayerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const v1, -0x451e0c57

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2649
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kakaogame/auth/AuthDataManager;->loadLoginData(Landroid/content/Context;)Lcom/kakaogame/auth/LoginData;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 2659
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/auth/LoginData;->getPlayerId()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2679
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 2

    .line 1779
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1789
    :try_start_0
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1799
    monitor-exit v0

    return-object v1

    .line 1819
    :cond_0
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/auth/LoginData;->getPlayerId()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final isSaveAccount()Z
    .locals 2

    .line 1869
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/kakaogame/auth/AuthDataManager;->saveAccount:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public final requestRefreshZAT(Landroid/content/Context;)V
    .locals 6

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1909
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1919
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->getAccessToken()Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1949
    :cond_1
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->getAccessToken()Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->needRefresh()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 1979
    :cond_2
    invoke-static {p1, v0}, Lcom/kakaogame/auth/AuthService;->refreshZat(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 1989
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v3, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x6d0c7610

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2009
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;

    invoke-virtual {v0, v1}, Lcom/kakaogame/auth/LoginData;->setAccessToken(Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;)V

    .line 2019
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2029
    :try_start_0
    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    if-nez v2, :cond_3

    .line 2039
    sput-object v0, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    goto :goto_0

    .line 2059
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/kakaogame/auth/LoginData;->update(Lcom/kakaogame/auth/LoginData;)V

    .line 2079
    :goto_0
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

    sget-object v2, Lcom/kakaogame/auth/AuthDataManager;->reservedLoginData:Lcom/kakaogame/auth/LoginData;

    invoke-direct {v0, p1, v2}, Lcom/kakaogame/auth/AuthDataManager;->saveLoginData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;)V

    .line 2089
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 2119
    :cond_4
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x196

    if-ne p1, v0, :cond_5

    .line 2129
    invoke-direct {p0}, Lcom/kakaogame/auth/AuthDataManager;->refreshTokenWithIdp()V

    goto :goto_1

    .line 2139
    :cond_5
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x190

    if-eq p1, v0, :cond_7

    .line 2149
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_7

    .line 2159
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_7

    .line 2169
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_7

    .line 2179
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_7

    .line 2189
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x7d3

    if-eq p1, v0, :cond_7

    .line 2199
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 2249
    :cond_6
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    .line 2259
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kakaogame/core/CoreManager;->onLogout(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public final setAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V
    .locals 3

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1149
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->TAG:Ljava/lang/String;

    const v2, 0x54396842

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 1189
    :cond_0
    sget-object v0, Lcom/kakaogame/auth/AuthDataManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_0
    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    if-nez v1, :cond_1

    .line 1209
    sput-object p2, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    goto :goto_0

    .line 1229
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/kakaogame/idp/IdpAccount;->update(Lcom/kakaogame/idp/IdpAccount;)V

    .line 1249
    :goto_0
    sget-object p2, Lcom/kakaogame/auth/AuthDataManager;->INSTANCE:Lcom/kakaogame/auth/AuthDataManager;

    sget-object v1, Lcom/kakaogame/auth/AuthDataManager;->reservedAccount:Lcom/kakaogame/idp/IdpAccount;

    invoke-direct {p2, p1, v1}, Lcom/kakaogame/auth/AuthDataManager;->saveAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V

    .line 1259
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
