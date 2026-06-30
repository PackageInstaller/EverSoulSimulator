.class public Lcom/google/firebase/perf/application/FrameMetricsRecorder;
.super Ljava/lang/Object;
.source "FrameMetricsRecorder.java"


# static fields
.field private static final FRAME_METRICS_AGGREGATOR_CLASSNAME:Ljava/lang/String; = "androidx.core.app.FrameMetricsAggregator"

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final fragmentSnapshotMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

.field private isRecording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 69
    new-instance v0, Landroidx/core/app/FrameMetricsAggregator;

    invoke-direct {v0}, Landroidx/core/app/FrameMetricsAggregator;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/application/FrameMetricsRecorder;-><init>(Landroid/app/Activity;Landroidx/core/app/FrameMetricsAggregator;Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/core/app/FrameMetricsAggregator;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/core/app/FrameMetricsAggregator;",
            "Ljava/util/Map<",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isRecording:Z

    .line 77
    iput-object p1, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->activity:Landroid/app/Activity;

    .line 78
    iput-object p2, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    .line 79
    iput-object p3, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->fragmentSnapshotMap:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static isFrameMetricsRecordingSupported()Z
    .locals 1

    :try_start_0
    const-string v0, "androidx.core.app.FrameMetricsAggregator"

    .line 56
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private snapshot()Lcom/google/firebase/perf/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/perf/util/Optional<",
            "Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;",
            ">;"
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isRecording:Z

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "No recording has been started."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->absent()Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "FrameMetricsAggregator.mMetrics is uninitialized."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->absent()Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 203
    aget-object v1, v0, v1

    if-nez v1, :cond_2

    .line 205
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "FrameMetricsAggregator.mMetrics[TOTAL_INDEX] is uninitialized."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->absent()Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    return-object v0

    .line 208
    :cond_2
    invoke-static {v0}, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator;->calculateFrameMetrics([Landroid/util/SparseIntArray;)Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/util/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 84
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isRecording:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->activity:Landroid/app/Activity;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "FrameMetricsAggregator is already recording %s"

    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    iget-object v2, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroidx/core/app/FrameMetricsAggregator;->add(Landroid/app/Activity;)V

    .line 90
    iput-boolean v1, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isRecording:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public startFragment(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isRecording:Z

    if-nez v0, :cond_0

    .line 142
    sget-object p1, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v0, "Cannot start sub-recording because FrameMetricsAggregator is not recording"

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->fragmentSnapshotMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Cannot start sub-recording because one is already ongoing with the key %s"

    .line 146
    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->snapshot()Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "startFragment(%s): snapshot() failed"

    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->fragmentSnapshotMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public stop()Lcom/google/firebase/perf/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/perf/util/Optional<",
            "Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;",
            ">;"
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isRecording:Z

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Cannot stop because no recording was started"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->absent()Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->fragmentSnapshotMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Sub-recordings are still ongoing! Sub-recordings should be stopped first before stopping Activity screen trace."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->fragmentSnapshotMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->snapshot()Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    iget-object v3, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroidx/core/app/FrameMetricsAggregator;->remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 119
    :goto_0
    instance-of v2, v0, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v2, v3, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    throw v0

    .line 124
    :cond_3
    :goto_1
    sget-object v2, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 125
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "View not hardware accelerated. Unable to collect FrameMetrics. %s"

    .line 124
    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->absent()Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    .line 128
    :goto_2
    iget-object v2, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v2}, Landroidx/core/app/FrameMetricsAggregator;->reset()[Landroid/util/SparseIntArray;

    .line 129
    iput-boolean v1, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isRecording:Z

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public stopFragment(Landroidx/fragment/app/Fragment;)Lcom/google/firebase/perf/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Lcom/google/firebase/perf/util/Optional<",
            "Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;",
            ">;"
        }
    .end annotation

    .line 168
    iget-boolean v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->isRecording:Z

    if-nez v0, :cond_0

    .line 169
    sget-object p1, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v0, "Cannot stop sub-recording because FrameMetricsAggregator is not recording"

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->absent()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->fragmentSnapshotMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 173
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Sub-recording associated with key %s was not started or does not exist"

    .line 173
    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->absent()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->fragmentSnapshotMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;

    .line 179
    invoke-direct {p0}, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->snapshot()Lcom/google/firebase/perf/util/Optional;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    sget-object v0, Lcom/google/firebase/perf/application/FrameMetricsRecorder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "stopFragment(%s): snapshot() failed"

    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {}, Lcom/google/firebase/perf/util/Optional;->absent()Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    .line 184
    :cond_2
    invoke-virtual {v3}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->deltaFrameMetricsFromSnapshot(Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;)Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/util/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
