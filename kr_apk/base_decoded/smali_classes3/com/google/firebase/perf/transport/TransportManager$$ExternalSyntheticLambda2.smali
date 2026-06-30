.class public final synthetic Lcom/google/firebase/perf/transport/TransportManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/perf/transport/TransportManager;

.field public final synthetic f$1:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

.field public final synthetic f$2:Lcom/google/firebase/perf/v1/ApplicationProcessState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/transport/TransportManager$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/perf/transport/TransportManager;

    iput-object p2, p0, Lcom/google/firebase/perf/transport/TransportManager$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iput-object p3, p0, Lcom/google/firebase/perf/transport/TransportManager$$ExternalSyntheticLambda2;->f$2:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/perf/transport/TransportManager$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/perf/transport/TransportManager;

    iget-object v1, p0, Lcom/google/firebase/perf/transport/TransportManager$$ExternalSyntheticLambda2;->f$1:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iget-object v2, p0, Lcom/google/firebase/perf/transport/TransportManager$$ExternalSyntheticLambda2;->f$2:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/transport/TransportManager;->lambda$log$3$com-google-firebase-perf-transport-TransportManager(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void

    .array-data 1
    .end array-data
.end method
