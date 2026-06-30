.class final Lcom/google/android/gms/common/api/internal/zaab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zaac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaac;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaab;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaab;->zab:Lcom/google/android/gms/common/api/internal/zaac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaab;->zab:Lcom/google/android/gms/common/api/internal/zaac;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaac;->zab(Lcom/google/android/gms/common/api/internal/zaac;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaab;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
