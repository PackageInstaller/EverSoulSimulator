.class public final Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;
.super Lcom/google/firebase/perf/config/ConfigurationFlag;
.source "ConfigurationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/config/ConfigurationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RateLimitSec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/ConfigurationFlag<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 535
    invoke-direct {p0}, Lcom/google/firebase/perf/config/ConfigurationFlag;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;

    monitor-enter v0

    .line 539
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;

    if-nez v1, :cond_0

    .line 540
    new-instance v1, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;

    .line 542
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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


# virtual methods
.method protected getDefault()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x258

    .line 547
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic getDefault()Ljava/lang/Object;
    .locals 1

    .line 531
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;->getDefault()Ljava/lang/Long;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getDeviceCacheFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.TimeLimitSec"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getRemoteConfigFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_rl_time_limit_sec"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
