.class public final Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;
.super Lcom/google/firebase/perf/config/ConfigurationFlag;
.source "ConfigurationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/config/ConfigurationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "NetworkRequestSamplingRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/ConfigurationFlag<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/firebase/perf/config/ConfigurationFlag;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected static declared-synchronized getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;

    monitor-enter v0

    .line 180
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;

    .line 183
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;
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
.method protected getDefault()Ljava/lang/Double;
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic getDefault()Ljava/lang/Object;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->getDefault()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getDefaultOnRcFetchFail()Ljava/lang/Double;
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->getDefault()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic getDefaultOnRcFetchFail()Ljava/lang/Object;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->getDefaultOnRcFetchFail()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getDeviceCacheFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.NetworkRequestSamplingRate"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getRemoteConfigFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_vc_network_request_sampling_rate"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
