.class public Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;
.super Ljava/lang/Object;
.source "SLReflectionInstallReferrer.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMESTAMP_VALUE:J = -0x1L

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private context:Landroid/content/Context;

.field private packageName:Ljava/lang/String;

.field private final referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

.field private referrerClient:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SLReflectionInstallReferrer"

    .line 329
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->context:Landroid/content/Context;

    .line 439
    iput-object p3, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    .line 449
    iput-object p2, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->packageName:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private closeReferrerClient()V
    .locals 5

    .line 2749
    iget-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerClient:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "endConnection"

    new-array v4, v2, [Ljava/lang/Object;

    .line 2799
    invoke-static {v0, v3, v1, v4}, Lcom/singular/sdk/internal/SLReflectionUtils;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2819
    sget-object v3, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "closeReferrerClient %s"

    invoke-virtual {v3, v0, v4}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2849
    :goto_0
    iput-object v1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerClient:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private createInstallReferrerClient(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 779
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".InstallReferrerClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "newBuilder"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/singular/sdk/internal/SLReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "build"

    new-array v4, v2, [Ljava/lang/Object;

    .line 809
    invoke-static {p1, v3, v0, v4}, Lcom/singular/sdk/internal/SLReflectionUtils;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 829
    sget-object v3, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "could not create install referrer client %s"

    invoke-virtual {v3, p1, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private createProxyInstallReferrerStateListener(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1039
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    aput-object p1, v3, v0

    .line 1029
    invoke-static {v2, v3, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1089
    sget-object v2, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "InstallReferrer proxy exception %s"

    invoke-virtual {v2, p1, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getInstallBeginTimestampSeconds(Ljava/lang/Object;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getInstallBeginTimestampSeconds"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 2639
    invoke-static {p1, v3, v5, v4}, Lcom/singular/sdk/internal/SLReflectionUtils;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2659
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 2679
    sget-object v3, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "getInstallBeginTimestampSeconds error %s"

    invoke-virtual {v3, p1, v4}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method private getInstallReferrer()Ljava/lang/Object;
    .locals 5

    .line 2119
    iget-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerClient:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getInstallReferrer"

    new-array v4, v2, [Ljava/lang/Object;

    .line 2169
    invoke-static {v0, v3, v1, v4}, Lcom/singular/sdk/internal/SLReflectionUtils;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2199
    sget-object v3, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "getInstallReferrer error %s"

    invoke-virtual {v3, v0, v4}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    .array-data 1
    .end array-data
.end method

.method private getInstallReferrerStateListenerClass()Ljava/lang/Class;
    .locals 4

    .line 909
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".InstallReferrerStateListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 929
    sget-object v1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "getInstallReferrerStateListenerClass %s"

    invoke-virtual {v1, v0, v2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private getReferrerClickTimestampSeconds(Ljava/lang/Object;)J
    .locals 6

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getReferrerClickTimestampSeconds"

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 2479
    invoke-static {p1, v3, v5, v4}, Lcom/singular/sdk/internal/SLReflectionUtils;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 2499
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 2519
    sget-object v3, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "getReferrerClickTimestampSeconds error %s"

    invoke-virtual {v3, p1, v4}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method private getStringInstallReferrer(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getInstallReferrer"

    new-array v3, v1, [Ljava/lang/Object;

    .line 2319
    invoke-static {p1, v2, v0, v3}, Lcom/singular/sdk/internal/SLReflectionUtils;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2359
    sget-object v2, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "getStringInstallReferrer error %s"

    invoke-virtual {v2, p1, v3}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private handleOnInstallReferrerSetupFinished(I)V
    .locals 6

    .line 1779
    invoke-static {}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->values()[Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    move-result-object v0

    aget-object v0, v0, p1

    .line 1799
    sget-object v1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$1;->$SwitchMap$com$singular$sdk$internal$InstallReferrer$SLReflectionInstallReferrer$InstallReferrerCodes:[I

    invoke-virtual {v0}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 2049
    sget-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Unexpected response code of install referrer response %d"

    invoke-virtual {v0, p1, v2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2059
    iget-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {p1, v4}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    goto :goto_0

    .line 2009
    :cond_0
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "STATUS_SERVICE_UNAVAILABLE"

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 2019
    iget-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {p1, v4}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    goto :goto_0

    .line 1969
    :cond_1
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "STATUS_FEATURE_NOT_SUPPORTED"

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1979
    iget-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {p1, v4}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    goto :goto_0

    .line 1829
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->getInstallReferrer()Ljava/lang/Object;

    move-result-object p1

    .line 1849
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "referral_url"

    .line 1869
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->getStringInstallReferrer(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "click_time"

    .line 1879
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->getReferrerClickTimestampSeconds(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "install_time"

    .line 1889
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->getInstallBeginTimestampSeconds(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    iget-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {p1, v0}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1929
    sget-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Couldn\'t get install referrer %s"

    invoke-virtual {v0, p1, v2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private startConnection(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1649
    :try_start_0
    iget-object v2, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerClient:Ljava/lang/Object;

    const-string v3, "startConnection"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object p1, v4, v0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v0

    invoke-static {v2, v3, v4, p1}, Lcom/singular/sdk/internal/SLReflectionUtils;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1679
    sget-object p2, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "startConnection error %s"

    invoke-virtual {p2, p1, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "onInstallReferrerServiceDisconnected"

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 1209
    :try_start_0
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "InstallReferrer invoke method null"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return-object v2

    .line 1249
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1269
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "InstallReferrer invoke method name null"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return-object v2

    :cond_1
    const-string v3, "onInstallReferrerSetupFinished"

    .line 1309
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p3, :cond_5

    .line 1319
    array-length p1, p3

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 1369
    :cond_2
    aget-object p1, p3, v0

    .line 1389
    instance-of p2, p1, Ljava/lang/Integer;

    if-nez p2, :cond_3

    .line 1399
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "onInstallReferrerSetupFinished invalid arg"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return-object v2

    .line 1439
    :cond_3
    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_4

    .line 1469
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "InstallReferrer invoke onInstallReferrerSetupFinished responseCode arg is null"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return-object v2

    .line 1509
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->handleOnInstallReferrerSetupFinished(I)V

    goto :goto_1

    .line 1329
    :cond_5
    :goto_0
    sget-object p1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "onInstallReferrerSetupFinished invalid args"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return-object v2

    .line 1519
    :cond_6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1529
    sget-object p2, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-virtual {p2, p1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1539
    invoke-direct {p0}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->closeReferrerClient()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1569
    sget-object p2, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "invoke error %s"

    invoke-virtual {p2, p1, p3}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_7
    :goto_1
    return-object v2

    nop

    .array-data 1
    .end array-data
.end method

.method public startConnection()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 499
    sget-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v2, "context can not be null"

    invoke-virtual {v0, v2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 549
    :cond_0
    invoke-direct {p0, v0}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->createInstallReferrerClient(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerClient:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 609
    :cond_1
    invoke-direct {p0}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->getInstallReferrerStateListenerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 669
    :cond_2
    invoke-direct {p0, v0}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->createProxyInstallReferrerStateListener(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 689
    iget-object v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->referrerCallback:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {v0, v1}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 729
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->startConnection(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method
