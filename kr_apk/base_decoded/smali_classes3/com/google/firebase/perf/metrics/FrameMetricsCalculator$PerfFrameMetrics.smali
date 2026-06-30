.class public Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;
.super Ljava/lang/Object;
.source "FrameMetricsCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/metrics/FrameMetricsCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerfFrameMetrics"
.end annotation


# instance fields
.field frozenFrames:I

.field slowFrames:I

.field totalFrames:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->totalFrames:I

    .line 37
    iput p2, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->slowFrames:I

    .line 38
    iput p3, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->frozenFrames:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public deltaFrameMetricsFromSnapshot(Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;)Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;
    .locals 3

    .line 60
    iget v0, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->totalFrames:I

    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->getTotalFrames()I

    move-result v1

    sub-int/2addr v0, v1

    .line 61
    iget v1, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->slowFrames:I

    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->getSlowFrames()I

    move-result v2

    sub-int/2addr v1, v2

    .line 62
    iget v2, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->frozenFrames:I

    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->getFrozenFrames()I

    move-result p1

    sub-int/2addr v2, p1

    .line 63
    new-instance p1, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;-><init>(III)V

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getFrozenFrames()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->frozenFrames:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSlowFrames()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->slowFrames:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTotalFrames()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/firebase/perf/metrics/FrameMetricsCalculator$PerfFrameMetrics;->totalFrames:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
