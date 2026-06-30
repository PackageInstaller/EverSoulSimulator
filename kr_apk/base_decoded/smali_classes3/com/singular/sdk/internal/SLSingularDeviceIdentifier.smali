.class public Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;
.super Ljava/lang/Object;
.source "SLSingularDeviceIdentifier.java"


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private sdidValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SLSingularDeviceIdentifier"

    .line 119
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 109
    sget-object v0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public exists()Z
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->sdidValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "singular-pref-session"

    const/4 v2, 0x0

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "custom-sdid"

    .line 279
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->sdidValue:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public loadSdidFromPrefs(Landroid/content/Context;)V
    .locals 2

    const-string v0, "singular-pref-session"

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref-singular-device-id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->sdidValue:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public saveSdidToPrefs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 469
    sget-object v0, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saving SDID to prefs : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    const-string v0, "singular-pref-session"

    const/4 v1, 0x0

    .line 479
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref-singular-device-id"

    .line 499
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->loadSdidFromPrefs(Landroid/content/Context;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized sendResolveRequestIfNeeded(Lcom/singular/sdk/internal/DeviceInfo;Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    sget-object p1, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "sdid exists, exiting /resolve request flow"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    monitor-exit p0

    return-void

    .line 679
    :cond_0
    :try_start_1
    new-instance v0, Lcom/singular/sdk/internal/GeneralHttpService;

    invoke-direct {v0}, Lcom/singular/sdk/internal/GeneralHttpService;-><init>()V

    .line 689
    new-instance v1, Lcom/singular/sdk/internal/SingularParamsBase;

    invoke-direct {v1}, Lcom/singular/sdk/internal/SingularParamsBase;-><init>()V

    invoke-virtual {v1, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;

    move-result-object p1

    .line 709
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "resolve"

    invoke-static {v1, v2}, Lcom/singular/sdk/internal/Utils;->getAndIncrementRetryCountForKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    const-string v2, "rc"

    .line 729
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "sdk"

    .line 749
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/resolve"

    .line 769
    new-instance v2, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier$1;

    invoke-direct {v2, p0, p2}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier$1;-><init>(Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/singular/sdk/internal/GeneralHttpService;->sendSynchronousRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
