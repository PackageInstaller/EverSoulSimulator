.class public final synthetic Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;JLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iput-wide p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iget-wide v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->lambda$fetch$0$com-google-firebase-remoteconfig-internal-ConfigFetchHandler(JLjava/util/Map;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
