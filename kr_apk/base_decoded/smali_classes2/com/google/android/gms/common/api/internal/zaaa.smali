.class final Lcom/google/android/gms/common/api/internal/zaaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zaac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaac;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Lcom/google/android/gms/common/api/internal/zaac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zab:Lcom/google/android/gms/common/api/internal/zaac;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaac;->zaa(Lcom/google/android/gms/common/api/internal/zaac;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaa;->zaa:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
