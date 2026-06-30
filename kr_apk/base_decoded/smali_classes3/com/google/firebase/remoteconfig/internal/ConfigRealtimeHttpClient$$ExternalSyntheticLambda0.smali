.class public final synthetic Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/tasks/Task;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->lambda$beginRealtimeHttpStream$1$com-google-firebase-remoteconfig-internal-ConfigRealtimeHttpClient(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
