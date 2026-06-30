.class public final synthetic Lcom/google/firebase/perf/metrics/AppStartTrace$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/perf/metrics/AppStartTrace;

.field public final synthetic f$1:Lcom/google/firebase/perf/v1/TraceMetric$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/metrics/AppStartTrace;Lcom/google/firebase/perf/v1/TraceMetric$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/perf/metrics/AppStartTrace;

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$$ExternalSyntheticLambda4;->f$1:Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/perf/metrics/AppStartTrace;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/AppStartTrace$$ExternalSyntheticLambda4;->f$1:Lcom/google/firebase/perf/v1/TraceMetric$Builder;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/AppStartTrace;->lambda$logExperimentTrace$0$com-google-firebase-perf-metrics-AppStartTrace(Lcom/google/firebase/perf/v1/TraceMetric$Builder;)V

    return-void

    .array-data 1
    .end array-data
.end method
