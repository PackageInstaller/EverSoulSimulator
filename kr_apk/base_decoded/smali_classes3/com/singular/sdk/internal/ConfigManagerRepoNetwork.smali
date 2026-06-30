.class public Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;
.super Lcom/singular/sdk/internal/ConfigManagerRepo;
.source "ConfigManagerRepoNetwork.java"


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private httpService:Lcom/singular/sdk/internal/GeneralHttpServiceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConfigManagerRepoNetwork"

    .line 179
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/singular/sdk/internal/ConfigManagerRepo;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/singular/sdk/internal/GeneralHttpServiceBase;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/singular/sdk/internal/ConfigManagerRepo;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->httpService:Lcom/singular/sdk/internal/GeneralHttpServiceBase;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->getConfig(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 149
    sget-object v0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;ILjava/lang/String;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->waitAndRetry(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;ILjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private getConfig(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V
    .locals 4

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sdk"

    .line 499
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "p"

    .line 539
    iget-object v3, v1, Lcom/singular/sdk/internal/DeviceInfo;->platform:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "n"

    .line 549
    iget-object v3, v1, Lcom/singular/sdk/internal/DeviceInfo;->appName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "i"

    .line 559
    iget-object v3, v1, Lcom/singular/sdk/internal/DeviceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "v"

    .line 569
    iget-object v1, v1, Lcom/singular/sdk/internal/DeviceInfo;->osVersion:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_0
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "config"

    invoke-static {v1, v2}, Lcom/singular/sdk/internal/Utils;->getAndIncrementRetryCountForKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    const-string v2, "rc"

    .line 619
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_1
    iget-object v1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->httpService:Lcom/singular/sdk/internal/GeneralHttpServiceBase;

    new-instance v2, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$2;-><init>(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V

    const-string p1, "/config"

    const/4 p2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/singular/sdk/internal/GeneralHttpServiceBase;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private waitAndRetry(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;ILjava/lang/String;)V
    .locals 2

    .line 329
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    if-lez p2, :cond_0

    .line 349
    new-instance v0, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork$1;-><init>(Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V

    const-wide/16 p1, 0xbb8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 429
    invoke-interface {p1}, Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;->onError()V

    :cond_1
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getConfig(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
    .locals 1

    const/4 v0, 0x3

    .line 289
    invoke-direct {p0, p1, v0}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;->getConfig(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public saveConfig(Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
