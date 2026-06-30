.class public Lcom/singular/sdk/internal/SingularInstance;
.super Ljava/lang/Object;
.source "SingularInstance.java"


# static fields
.field private static final RETRY_DELAY_INTERVAL_MS:I = 0xc8

.field private static instance:Lcom/singular/sdk/internal/SingularInstance;

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;

.field private static retryCounter:I


# instance fields
.field private final apiManager:Lcom/singular/sdk/internal/ApiManager;

.field private config:Lcom/singular/sdk/SingularConfig;

.field private final context:Landroid/content/Context;

.field private deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

.field dtInstallReferrer:Ljava/lang/String;

.field private globalProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field googleInstallReferrer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private installReferrerTimeInterval:D

.field private isFirstInstall:Z

.field metaInstallReferrer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field samsungInstallReferrer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sessionManager:Lcom/singular/sdk/internal/SessionManager;

.field private final worker:Lcom/singular/sdk/internal/SingularWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Instance"

    .line 489
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v0, 0x0

    .line 519
    sput v0, Lcom/singular/sdk/internal/SingularInstance;->retryCounter:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 849
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SingularInstance;->initialized:Z

    .line 869
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    .line 1279
    sget-object v1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/singular/sdk/internal/Constants;->SDK_VERSION:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v4, "SDK version: %s"

    invoke-virtual {v1, v4, v3}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v2, [Ljava/lang/Object;

    .line 1289
    sget-object v4, Lcom/singular/sdk/internal/Constants;->SDK_BUILD_INFO:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v4, "SDK build info: %s"

    invoke-virtual {v1, v4, v3}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string v0, "new SingularInstance() with config: %s"

    .line 1299
    invoke-virtual {v1, v0, v2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1319
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1339
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 1379
    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    .line 1389
    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    .line 1399
    new-instance p2, Lcom/singular/sdk/internal/SingularWorkerThread;

    const-string/jumbo v0, "worker"

    invoke-direct {p2, v0}, Lcom/singular/sdk/internal/SingularWorkerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    .line 1409
    new-instance v0, Lcom/singular/sdk/internal/ApiManager;

    new-instance v1, Lcom/singular/sdk/internal/SingularWorkerThread;

    const-string v2, "api"

    invoke-direct {v1, v2}, Lcom/singular/sdk/internal/SingularWorkerThread;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/singular/sdk/internal/SQLitePersistentQueue;

    invoke-direct {v2, p1}, Lcom/singular/sdk/internal/SQLitePersistentQueue;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/singular/sdk/internal/ApiManager;-><init>(Lcom/singular/sdk/internal/SingularWorkerThread;Landroid/content/Context;Lcom/singular/sdk/internal/Queue;)V

    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->apiManager:Lcom/singular/sdk/internal/ApiManager;

    .line 1429
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isFirstInstall(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    .line 1459
    invoke-virtual {p2}, Lcom/singular/sdk/internal/SingularWorkerThread;->start()V

    .line 1489
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->initGlobalProperties()V

    .line 1519
    new-instance p1, Lcom/singular/sdk/internal/SingularInstance$1;

    invoke-direct {p1, p0, p0}, Lcom/singular/sdk/internal/SingularInstance$1;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void

    .line 1349
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context failed to cast to ApplicationContext"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->init(Lcom/singular/sdk/internal/SingularInstance;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/SingularInstance;)Landroid/content/Context;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 469
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300()Lcom/singular/sdk/internal/SingularInstance;
    .locals 1

    .line 469
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiManager;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/singular/sdk/internal/SingularInstance;->apiManager:Lcom/singular/sdk/internal/ApiManager;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/singular/sdk/internal/SingularInstance;)Z
    .locals 0

    .line 469
    iget-boolean p0, p0, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$602(Lcom/singular/sdk/internal/SingularInstance;D)D
    .locals 0

    .line 469
    iput-wide p1, p0, Lcom/singular/sdk/internal/SingularInstance;->installReferrerTimeInterval:D

    return-wide p1

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/SessionManager;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;Z)V
    .locals 0

    .line 469
    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/SingularInstance;->saveBooleanToPref(Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getInstance()Lcom/singular/sdk/internal/SingularInstance;
    .locals 1

    .line 1239
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getInstance(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/SingularInstance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1019
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    if-nez v0, :cond_1

    .line 1039
    const-class v0, Lcom/singular/sdk/internal/SingularInstance;

    monitor-enter v0

    .line 1049
    :try_start_0
    sget-object v1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    if-nez v1, :cond_0

    .line 1069
    iget-boolean v1, p1, Lcom/singular/sdk/SingularConfig;->enableLogging:Z

    sput-boolean v1, Lcom/singular/sdk/internal/SingularLog;->ENABLE_LOGGING:Z

    .line 1079
    iget v1, p1, Lcom/singular/sdk/SingularConfig;->logLevel:I

    sput v1, Lcom/singular/sdk/internal/SingularLog;->LOG_LEVEL:I

    .line 1109
    new-instance v1, Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {v1, p0, p1}, Lcom/singular/sdk/internal/SingularInstance;-><init>(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)V

    sput-object v1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    .line 1129
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1169
    :cond_1
    :goto_0
    sget-object p0, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 6519
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    const-string v1, "singular-pref-session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private init(Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 5

    const-string v0, "custom-sdid"

    .line 1619
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1629
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Singular is already initialized, please don\'t call init() again."

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return-void

    .line 1699
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->fcmDeviceToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fcm_device_token_key"

    .line 1709
    iget-object v2, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v2, v2, Lcom/singular/sdk/SingularConfig;->fcmDeviceToken:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/singular/sdk/internal/SingularInstance;->saveDeviceToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :cond_1
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->customUserId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1749
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->customUserId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/singular/sdk/internal/SingularInstance;->saveCustomUserId(Ljava/lang/String;)V

    .line 1779
    :cond_2
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->limitDataSharing:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1789
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->limitDataSharing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/singular/sdk/internal/SingularInstance;->limitDataSharing(Z)V

    .line 1819
    :cond_3
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->imei:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1829
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->imei:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/singular/sdk/internal/SingularInstance;->setIMEI(Ljava/lang/String;)V

    .line 1869
    :cond_4
    new-instance v1, Lcom/singular/sdk/internal/DeviceInfo;

    iget-object v2, p1, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-boolean v3, v3, Lcom/singular/sdk/SingularConfig;->collectOAID:Z

    iget-object v4, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v4, v4, Lcom/singular/sdk/SingularConfig;->limitedIdentifiresEnabled:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3, v4}, Lcom/singular/sdk/internal/DeviceInfo;-><init>(Landroid/content/Context;ZLjava/lang/Boolean;)V

    iput-object v1, p1, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    .line 1889
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1899
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->customSdid:Ljava/lang/String;

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->customSdid:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1919
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    const-string v2, "singular-pref-session"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1929
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1939
    iget-object v2, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v2, v2, Lcom/singular/sdk/SingularConfig;->customSdid:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cs"

    const-string v2, "1"

    .line 1949
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1959
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1979
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->sdidAccessorHandler:Lcom/singular/sdk/SDIDAccessorHandler;

    if-eqz v0, :cond_5

    .line 1989
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->sdidAccessorHandler:Lcom/singular/sdk/SDIDAccessorHandler;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->customSdid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/singular/sdk/SDIDAccessorHandler;->didSetSdid(Ljava/lang/String;)V

    .line 2039
    :cond_5
    new-instance v0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

    new-instance v2, Lcom/singular/sdk/internal/GeneralHttpService;

    invoke-direct {v2}, Lcom/singular/sdk/internal/GeneralHttpService;-><init>()V

    invoke-direct {v1, v2}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;-><init>(Lcom/singular/sdk/internal/GeneralHttpServiceBase;)V

    new-instance v2, Lcom/singular/sdk/internal/SingularInstance$2;

    invoke-direct {v2, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$2;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-static {v0, v1, v2}, Lcom/singular/sdk/internal/ConfigManager;->init(Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;)V

    .line 2279
    new-instance v0, Lcom/singular/sdk/internal/SessionManager;

    invoke-direct {v0, p1}, Lcom/singular/sdk/internal/SessionManager;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    iput-object v0, p1, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    const/4 p1, 0x1

    .line 2309
    iput-boolean p1, p0, Lcom/singular/sdk/internal/SingularInstance;->initialized:Z

    .line 2329
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Singular is initialized now."

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->info(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2349
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "error in init()"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private initGlobalProperties()V
    .locals 4

    .line 2399
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->loadGlobalProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    .line 2419
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->globalProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2459
    :cond_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2479
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->globalProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/singular/sdk/internal/SingularGlobalProperty;

    .line 2489
    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularGlobalProperty;->isOverrideExisting()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2499
    :cond_2
    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2549
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_4

    return-void

    .line 2589
    :cond_4
    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    .line 2599
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGlobalProperties()V

    .line 2629
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 2639
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->clearGlobalProperties()V

    :cond_5
    return-void

    .array-data 1
    .end array-data
.end method

.method private isSessionManagerInitialized()Z
    .locals 1

    .line 3019
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSessionManager()Lcom/singular/sdk/internal/SessionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method private persistBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 6559
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/singular/sdk/internal/SingularInstance$16;-><init>(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private putGlobalProperty(Lcom/singular/sdk/internal/SingularGlobalProperty;)Z
    .locals 3

    .line 6859
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6889
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->isOverrideExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6899
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v1

    .line 6969
    :cond_1
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 7009
    :cond_2
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .array-data 1
    .end array-data
.end method

.method private saveBooleanToPref(Ljava/lang/String;Z)V
    .locals 1

    .line 6659
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6669
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6679
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6689
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private saveDeviceToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5689
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5699
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5709
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5719
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private saveGlobalProperties()V
    .locals 3

    .line 7289
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 7299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    .line 7329
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7339
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7349
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getGlobalPropertiesJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "global_properties"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearGlobalProperties()V
    .locals 1

    const/4 v0, 0x0

    .line 7239
    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    .line 7249
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGlobalProperties()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public createReferrerShortLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/singular/sdk/ShortLinkHandler;)V
    .locals 1

    .line 7729
    invoke-static {p1, p2, p3, p4}, Lcom/singular/sdk/internal/ReferrerLinkService;->validateRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Error sending request: could not validate request params"

    .line 7739
    invoke-interface {p5, p1}, Lcom/singular/sdk/ShortLinkHandler;->onError(Ljava/lang/String;)V

    return-void

    .line 7799
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/singular/sdk/internal/ReferrerLinkService;->unifyParamsToUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7899
    invoke-static {p1, p5}, Lcom/singular/sdk/internal/ReferrerLinkService;->sendReferrerRequest(Ljava/lang/String;Lcom/singular/sdk/ShortLinkHandler;)V

    return-void

    :catch_0
    move-exception p1

    .line 7849
    sget-object p2, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p3, "Error in JSON parsing "

    invoke-virtual {p2, p3, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Error sending request: could not unify params"

    .line 7859
    invoke-interface {p5, p1}, Lcom/singular/sdk/ShortLinkHandler;->onError(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method fetchDTInstallReferrer()V
    .locals 3

    .line 4159
    new-instance v0, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;

    invoke-direct {v0}, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;-><init>()V

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/singular/sdk/internal/SingularInstance$9;

    invoke-direct {v2, p0}, Lcom/singular/sdk/internal/SingularInstance$9;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/InstallReferrer/SLDigitalTurbineReferrer;->fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method fetchInstallReferrerAndSendSession(J)V
    .locals 6

    .line 4269
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 4279
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4299
    new-instance v3, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;

    invoke-direct {v3}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;-><init>()V

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/singular/sdk/internal/SingularInstance$10;

    invoke-direct {v5, p0, v2, v0, v1}, Lcom/singular/sdk/internal/SingularInstance$10;-><init>(Lcom/singular/sdk/internal/SingularInstance;Ljava/util/concurrent/CountDownLatch;J)V

    invoke-virtual {v3, v4, v5}, Lcom/singular/sdk/internal/InstallReferrer/SLGoogleReferrer;->fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V

    .line 4389
    new-instance v0, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;

    invoke-direct {v0}, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;-><init>()V

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/singular/sdk/internal/SingularInstance$11;

    invoke-direct {v3, p0, v2}, Lcom/singular/sdk/internal/SingularInstance$11;-><init>(Lcom/singular/sdk/internal/SingularInstance;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v1, v3}, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;->fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V

    .line 4479
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4499
    :catch_0
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "InterruptedException!"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 4529
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/singular/sdk/internal/SingularInstance;->startSession(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method fetchMetaInstallReferrer()V
    .locals 3

    .line 4059
    new-instance v0, Lcom/singular/sdk/internal/SLMetaReferrer;

    invoke-direct {v0}, Lcom/singular/sdk/internal/SLMetaReferrer;-><init>()V

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/singular/sdk/internal/SingularInstance$8;

    invoke-direct {v2, p0}, Lcom/singular/sdk/internal/SingularInstance$8;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SLMetaReferrer;->fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method getApiManager()Lcom/singular/sdk/internal/ApiManager;
    .locals 1

    .line 2689
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->apiManager:Lcom/singular/sdk/internal/ApiManager;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 2729
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDTInstallReferrer()Ljava/lang/String;
    .locals 1

    .line 6359
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->dtInstallReferrer:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;
    .locals 1

    .line 2809
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGlobalProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6769
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGlobalPropertiesJSON()Lorg/json/JSONObject;
    .locals 2

    .line 6809
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getGoogleInstallReferrer()Ljava/util/Map;
    .locals 1

    .line 6279
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->googleInstallReferrer:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInstallReferrerTimeInterval()D
    .locals 2

    .line 6479
    iget-wide v0, p0, Lcom/singular/sdk/internal/SingularInstance;->installReferrerTimeInterval:D

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIsFirstInstall()Z
    .locals 1

    .line 6439
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLimitDataSharing()Ljava/lang/Boolean;
    .locals 3

    .line 6179
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "limit_data_sharing"

    .line 6199
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 6239
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getMetaInstallReferrer()Ljava/util/Map;
    .locals 1

    .line 6399
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->metaInstallReferrer:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSamsungInstallReferrer()Ljava/util/Map;
    .locals 1

    .line 6319
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->samsungInstallReferrer:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionId()J
    .locals 2

    .line 2979
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/singular/sdk/internal/SessionManager;->getSessionId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .array-data 1
    .end array-data
.end method

.method getSessionManager()Lcom/singular/sdk/internal/SessionManager;
    .locals 1

    .line 2889
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method getSingularConfig()Lcom/singular/sdk/SingularConfig;
    .locals 1

    .line 2849
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public handleDeviceAttributionData(Lorg/json/JSONObject;)V
    .locals 3

    .line 7949
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setObjectToNumberStrategy(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 7959
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 7979
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->deviceAttributionHandler:Lcom/singular/sdk/SingularDeviceAttributionHandler;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 7999
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/singular/sdk/internal/SingularInstance$17;

    invoke-direct {v2, p0, v0, p1}, Lcom/singular/sdk/internal/SingularInstance$17;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/SingularDeviceAttributionHandler;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8079
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not convert device attribution json object to map"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public isAllTrackingStopped()Z
    .locals 3

    .line 6099
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stop_all_tracking"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method isInitialized()Z
    .locals 1

    .line 2769
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SingularInstance;->initialized:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public limitDataSharing(Z)V
    .locals 1

    const-string v0, "limit_data_sharing"

    .line 6139
    invoke-direct {p0, v0, p1}, Lcom/singular/sdk/internal/SingularInstance;->saveBooleanToPref(Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public loadGlobalProperties()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7399
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "global_properties"

    const-string/jumbo v2, "{}"

    .line 7409
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7459
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7479
    :catchall_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7509
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7519
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 7539
    :catchall_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7559
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7569
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7589
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method logApi(Lcom/singular/sdk/internal/BaseApi;)V
    .locals 1

    .line 3579
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3589
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Tracking was stopped! not logging event!"

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 3649
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->isSessionManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3659
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$5;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$5;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/BaseApi;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->retryTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3729
    :cond_1
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$6;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$6;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/BaseApi;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method logEvent(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V
    .locals 1

    .line 3249
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3259
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Tracking was stopped! not logging event!"

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 3319
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->isSessionManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3329
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$3;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$3;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->retryTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3399
    :cond_1
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$4;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$4;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public logEvent(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3059
    invoke-virtual {p0, p1, v0}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    const/16 v2, 0xea2

    const/4 v3, 0x1

    if-le v1, v2, :cond_2

    .line 3149
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v1, "Event discarded! payload length = %d"

    invoke-virtual {p1, v1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 3189
    :cond_2
    new-instance v0, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    invoke-direct {v0, p1, p2}, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V

    return v3

    .array-data 1
    .end array-data
.end method

.method logSessionStart(J)V
    .locals 1

    .line 3829
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3839
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "Tracking was stopped! not logging event!"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 3869
    :cond_0
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/singular/sdk/internal/SingularInstance$7;-><init>(Lcom/singular/sdk/internal/SingularInstance;J)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorkerAtFront(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public logSetDeviceCustomUserId()V
    .locals 2

    .line 4689
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4699
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Tracking was stopped! not logging event!"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 4739
    :cond_0
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$12;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/SingularInstance$12;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onActivityPaused(J)V
    .locals 1

    .line 5089
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->onExitForeground(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onActivityResumed(J)V
    .locals 1

    .line 5179
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    if-eqz v0, :cond_0

    .line 5189
    invoke-virtual {v0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->onEnterForeground(J)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public removeGlobalProperty(Ljava/lang/String;)V
    .locals 1

    .line 7149
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7189
    :cond_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7199
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGlobalProperties()V

    :cond_1
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public resumeAllTracking()V
    .locals 2

    const-string v0, "stop_all_tracking"

    const/4 v1, 0x0

    .line 6059
    invoke-direct {p0, v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->persistBoolean(Ljava/lang/String;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method retryTask(Ljava/lang/Runnable;)V
    .locals 2

    .line 4849
    sget v0, Lcom/singular/sdk/internal/SingularInstance;->retryCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc8

    .line 4859
    invoke-virtual {p0, p1, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorkerDelayed(Ljava/lang/Runnable;I)V

    .line 4869
    sget p1, Lcom/singular/sdk/internal/SingularInstance;->retryCounter:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/singular/sdk/internal/SingularInstance;->retryCounter:I

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method runOnWorker(Ljava/lang/Runnable;)V
    .locals 1

    .line 4919
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SingularWorkerThread;->post(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method runOnWorkerAtFront(Ljava/lang/Runnable;)V
    .locals 1

    .line 4959
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SingularWorkerThread;->postAtFront(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method runOnWorkerDelayed(Ljava/lang/Runnable;I)V
    .locals 1

    .line 4999
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    invoke-virtual {v0, p1, p2}, Lcom/singular/sdk/internal/SingularWorkerThread;->postDelayed(Ljava/lang/Runnable;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public saveCustomUserId(Ljava/lang/String;)V
    .locals 2

    .line 5579
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5589
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "custom_user_id"

    .line 5599
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5609
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5629
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    if-eqz v0, :cond_0

    .line 5639
    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/DeviceInfo;->setCustomUserId(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public saveFCMDeviceToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fcm_device_token_key"

    .line 5489
    invoke-direct {p0, v0, p1}, Lcom/singular/sdk/internal/SingularInstance;->saveDeviceToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 5509
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    if-eqz v0, :cond_0

    .line 5519
    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/DeviceInfo;->setFcmRegId(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public saveGCMDeviceToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gcm_device_token_key"

    .line 5399
    invoke-direct {p0, v0, p1}, Lcom/singular/sdk/internal/SingularInstance;->saveDeviceToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 5419
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    if-eqz v0, :cond_0

    .line 5429
    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/DeviceInfo;->setGcmRegId(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public sendTrackingOptIn()V
    .locals 1

    .line 5789
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$14;

    invoke-direct {v0, p0, p0}, Lcom/singular/sdk/internal/SingularInstance$14;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public sendTrackingUnder13()V
    .locals 1

    .line 5909
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$15;

    invoke-direct {v0, p0, p0}, Lcom/singular/sdk/internal/SingularInstance$15;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setGlobalProperty(Lcom/singular/sdk/internal/SingularGlobalProperty;)Z
    .locals 0

    .line 7059
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->putGlobalProperty(Lcom/singular/sdk/internal/SingularGlobalProperty;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7099
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGlobalProperties()V

    const/4 p1, 0x1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0

    .line 6729
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->setImei(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method startSession(J)V
    .locals 2

    .line 4579
    new-instance v0, Lcom/singular/sdk/internal/ApiStartSession;

    invoke-direct {v0, p1, p2}, Lcom/singular/sdk/internal/ApiStartSession;-><init>(J)V

    .line 4589
    sget-object v1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {p1, p2, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->build(JLcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/ApiStartSession;->addParams(Ljava/util/Map;)V

    .line 4599
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    iget-object p1, p1, Lcom/singular/sdk/internal/SingularInstance;->apiManager:Lcom/singular/sdk/internal/ApiManager;

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/ApiManager;->enqueue(Lcom/singular/sdk/internal/BaseApi;)V

    .line 4629
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    iget-object p1, p1, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/singular/sdk/SingularConfig;->openUri:Landroid/net/Uri;

    .line 4649
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public startSessionIfOpenedWithDeeplink()V
    .locals 1

    .line 5259
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->singularLink:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 5299
    :cond_0
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$13;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/SingularInstance$13;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public stopAllTracking()V
    .locals 2

    const-string v0, "stop_all_tracking"

    const/4 v1, 0x1

    .line 6019
    invoke-direct {p0, v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->persistBoolean(Ljava/lang/String;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
