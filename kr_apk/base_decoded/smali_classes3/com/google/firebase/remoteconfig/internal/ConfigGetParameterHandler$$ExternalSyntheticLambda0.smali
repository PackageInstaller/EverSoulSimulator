.class public final synthetic Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/common/util/BiConsumer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/common/util/BiConsumer;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/common/util/BiConsumer;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->lambda$callListeners$0(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    return-void

    .array-data 1
    .end array-data
.end method
