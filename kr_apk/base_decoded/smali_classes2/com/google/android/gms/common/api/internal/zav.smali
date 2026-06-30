.class final Lcom/google/android/gms/common/api/internal/zav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zap(Lcom/google/android/gms/common/api/internal/zaz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw v0

    nop

    .array-data 1
    .end array-data
.end method
