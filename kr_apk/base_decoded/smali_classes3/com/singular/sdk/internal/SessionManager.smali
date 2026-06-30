.class Lcom/singular/sdk/internal/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private inForeground:Z

.field private lastSessionPauseTime:J

.field private final networkChangeReceiver:Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;

.field private sequence:J

.field private sessionId:J

.field private final singular:Lcom/singular/sdk/internal/SingularInstance;

.field private usingForegroundTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Session"

    .line 289
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/SessionManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 2

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SessionManager;->usingForegroundTracking:Z

    const-wide/16 v0, -0x1

    .line 359
    iput-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    .line 369
    iput-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->lastSessionPauseTime:J

    const-wide/16 v0, 0x0

    .line 379
    iput-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->sequence:J

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SessionManager;->inForeground:Z

    .line 429
    iput-object p1, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    .line 439
    new-instance v0, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;

    invoke-direct {v0, p1}, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    iput-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->networkChangeReceiver:Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;

    .line 469
    invoke-direct {p0}, Lcom/singular/sdk/internal/SessionManager;->load()V

    .line 499
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/singular/sdk/internal/SessionManager;->startNewSessionIfNeeded(J)Z

    .line 529
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SessionManager;->enableForegroundTracking(Landroid/app/Application;)V

    .line 559
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SessionManager;->registerNetworkChangeReceiver()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lcom/singular/sdk/internal/SessionManager;J)V
    .locals 0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->setLastSessionPauseTime(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$102(Lcom/singular/sdk/internal/SessionManager;Z)Z
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/singular/sdk/internal/SessionManager;->inForeground:Z

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/singular/sdk/internal/SessionManager;J)Z
    .locals 0

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->startNewSessionIfNeeded(J)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private enableForegroundTracking(Landroid/app/Application;)V
    .locals 2

    .line 659
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SessionManager;->usingForegroundTracking:Z

    if-eqz v0, :cond_0

    return-void

    .line 709
    :cond_0
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getWrapperName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getWrapperName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mParticle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 739
    :cond_1
    new-instance v0, Lcom/singular/sdk/internal/SingularLifecycleCallbacks;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/SingularLifecycleCallbacks;-><init>(Lcom/singular/sdk/internal/SessionManager;)V

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SingularLifecycleCallbacks;->registerSelf(Landroid/app/Application;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private getSessionLengthInMs()J
    .locals 4

    .line 1519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    sub-long/2addr v0, v2

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method private inSession()Z
    .locals 4

    .line 1339
    iget-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method private isWithinMinTimeBetweenSessions(J)Z
    .locals 4

    .line 2349
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    iget-wide v0, v0, Lcom/singular/sdk/SingularConfig;->sessionTimeoutSec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 2359
    iget-wide v2, p0, Lcom/singular/sdk/internal/SessionManager;->lastSessionPauseTime:J

    sub-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private load()V
    .locals 9

    .line 899
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "singular-pref-session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v3, -0x1

    .line 919
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    const-string v1, "lastSessionPauseTime"

    .line 939
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/singular/sdk/internal/SessionManager;->lastSessionPauseTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gez v1, :cond_0

    const-string v1, "lastEvent"

    .line 979
    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/singular/sdk/internal/SessionManager;->lastSessionPauseTime:J

    :cond_0
    const-string v1, "seq"

    .line 1009
    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->sequence:J

    .line 1039
    sget-object v0, Lcom/singular/sdk/internal/SessionManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SessionManager;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "load() <= %s"

    invoke-virtual {v0, v2, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .array-data 1
    .end array-data
.end method

.method private persist()V
    .locals 4

    .line 1149
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "singular-pref-session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1159
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id"

    .line 1179
    iget-wide v2, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastSessionPauseTime"

    .line 1189
    iget-wide v2, p0, Lcom/singular/sdk/internal/SessionManager;->lastSessionPauseTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "seq"

    .line 1199
    iget-wide v2, p0, Lcom/singular/sdk/internal/SessionManager;->sequence:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1239
    sget-object v1, Lcom/singular/sdk/internal/SessionManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private resetSequence()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2519
    iput-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->sequence:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private sendSessionStartEvent()V
    .locals 3

    .line 2599
    invoke-direct {p0}, Lcom/singular/sdk/internal/SessionManager;->inSession()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2639
    :cond_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    iget-wide v1, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SingularInstance;->logSessionStart(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private setLastSessionPauseTime(J)V
    .locals 0

    .line 1709
    iput-wide p1, p0, Lcom/singular/sdk/internal/SessionManager;->lastSessionPauseTime:J

    .line 1729
    invoke-direct {p0}, Lcom/singular/sdk/internal/SessionManager;->persist()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private setSessionId(J)V
    .locals 0

    .line 2449
    iput-wide p1, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private startNewSessionIfNeeded(J)Z
    .locals 3

    .line 1859
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/internal/DeviceInfo;->sdid:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    .line 1869
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object v1

    .line 1879
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1869
    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->sendResolveRequestIfNeeded(Lcom/singular/sdk/internal/DeviceInfo;Landroid/content/Context;)V

    .line 1909
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->singularLink:Landroid/net/Uri;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {p0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->startNewSession(J)V

    return v1

    .line 1969
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SessionManager;->inSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1979
    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->isWithinMinTimeBetweenSessions(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2089
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->startNewSession(J)V

    return v1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method getNextSequenceNumber()J
    .locals 4

    .line 1609
    iget-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->sequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->sequence:J

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method getSessionId()J
    .locals 2

    .line 1429
    iget-wide v0, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method onEnterForeground(J)V
    .locals 4

    .line 2959
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->isOpenedWithDeeplink()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2969
    sget-object v0, Lcom/singular/sdk/internal/SessionManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onEnterForeground() At %d"

    invoke-virtual {v0, v2, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2979
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    new-instance v1, Lcom/singular/sdk/internal/SessionManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/singular/sdk/internal/SessionManager$2;-><init>(Lcom/singular/sdk/internal/SessionManager;J)V

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method onExitForeground(J)V
    .locals 4

    .line 2729
    sget-object v0, Lcom/singular/sdk/internal/SessionManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "onExitForeground() At %d"

    invoke-virtual {v0, v2, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2739
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    new-instance v1, Lcom/singular/sdk/internal/SessionManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/singular/sdk/internal/SessionManager$1;-><init>(Lcom/singular/sdk/internal/SessionManager;J)V

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method registerNetworkChangeReceiver()V
    .locals 3

    .line 3129
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SessionManager;->inForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/singular/sdk/internal/SessionManager;->usingForegroundTracking:Z

    if-eqz v0, :cond_0

    return-void

    .line 3159
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3169
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3179
    iget-object v1, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v1}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/singular/sdk/internal/SessionManager;->networkChangeReceiver:Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3189
    sget-object v0, Lcom/singular/sdk/internal/SessionManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "registerNetworkChangeReceiver()"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .array-data 1
    .end array-data
.end method

.method public startNewSession(J)V
    .locals 4

    .line 2209
    sget-object v0, Lcom/singular/sdk/internal/SessionManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "startNewSession() At %d"

    invoke-virtual {v0, v2, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2229
    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->setSessionId(J)V

    .line 2239
    invoke-direct {p0}, Lcom/singular/sdk/internal/SessionManager;->resetSequence()V

    .line 2249
    invoke-direct {p0}, Lcom/singular/sdk/internal/SessionManager;->sendSessionStartEvent()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3379
    iget-wide v1, p0, Lcom/singular/sdk/internal/SessionManager;->sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastSessionPauseTime="

    .line 3389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/singular/sdk/internal/SessionManager;->lastSessionPauseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", seq="

    .line 3399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/singular/sdk/internal/SessionManager;->sequence:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 3409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method unregisterNetworkChangeReceiver()V
    .locals 2

    .line 3259
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->networkChangeReceiver:Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;

    if-eqz v0, :cond_0

    .line 3279
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SessionManager;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/singular/sdk/internal/SessionManager;->networkChangeReceiver:Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3289
    sget-object v0, Lcom/singular/sdk/internal/SessionManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string/jumbo v1, "unregisterNetworkChangeReceiver()"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method useForegroundTracking()V
    .locals 1

    const/4 v0, 0x1

    .line 819
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SessionManager;->usingForegroundTracking:Z

    return-void

    .array-data 1
    .end array-data
.end method
