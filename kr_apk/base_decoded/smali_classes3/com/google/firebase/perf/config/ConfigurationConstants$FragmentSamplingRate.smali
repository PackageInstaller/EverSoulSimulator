.class public final Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;
.super Lcom/google/firebase/perf/config/ConfigurationFlag;
.source "ConfigurationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/config/ConfigurationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "FragmentSamplingRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/ConfigurationFlag<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 661
    invoke-direct {p0}, Lcom/google/firebase/perf/config/ConfigurationFlag;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected static declared-synchronized getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;

    monitor-enter v0

    .line 665
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;

    if-nez v1, :cond_0

    .line 666
    new-instance v1, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;

    .line 668
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;
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

    const-wide/16 v0, 0x0

    .line 676
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic getDefault()Ljava/lang/Object;
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;->getDefault()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getDeviceCacheFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.FragmentSamplingRate"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getMetadataFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "fragment_sampling_percentage"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getRemoteConfigFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_vc_fragment_sampling_rate"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
