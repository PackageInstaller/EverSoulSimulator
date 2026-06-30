.class abstract Lcom/google/android/gms/common/api/internal/zabe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zabd;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/zabd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected abstract zaa()V
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zabg;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabg;->zah(Lcom/google/android/gms/common/api/internal/zabg;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabg;->zag(Lcom/google/android/gms/common/api/internal/zabg;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabe;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabe;->zaa()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabg;->zah(Lcom/google/android/gms/common/api/internal/zabg;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabg;->zah(Lcom/google/android/gms/common/api/internal/zabg;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0

    nop

    .array-data 1
    .end array-data
.end method
