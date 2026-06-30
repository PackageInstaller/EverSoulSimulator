.class public final synthetic Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;

.field public final synthetic f$1:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;

    iput-object p2, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/perf/util/Timer;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;

    iget-object v1, p0, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/session/gauges/CpuGaugeCollector;->lambda$scheduleCpuMetricCollectionWithRate$0$com-google-firebase-perf-session-gauges-CpuGaugeCollector(Lcom/google/firebase/perf/util/Timer;)V

    return-void

    .array-data 1
    .end array-data
.end method
