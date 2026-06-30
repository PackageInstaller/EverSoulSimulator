.class final Lcom/google/android/gms/common/api/internal/zax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabx;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaz;Lcom/google/android/gms/common/api/internal/zay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/zaz;->zal(Lcom/google/android/gms/common/api/internal/zaz;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zap(Lcom/google/android/gms/common/api/internal/zaz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1

    .array-data 1
    .end array-data
.end method

.method public final zab(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/zaz;->zal(Lcom/google/android/gms/common/api/internal/zaz;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zap(Lcom/google/android/gms/common/api/internal/zaz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1

    .array-data 1
    .end array-data
.end method

.method public final zac(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaz;->zav(Lcom/google/android/gms/common/api/internal/zaz;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaz;->zam(Lcom/google/android/gms/common/api/internal/zaz;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    .line 5
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zaz;->zan(Lcom/google/android/gms/common/api/internal/zaz;IZ)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 2
    invoke-static {v0, p2}, Lcom/google/android/gms/common/api/internal/zaz;->zam(Lcom/google/android/gms/common/api/internal/zaz;Z)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zaz;->zah(Lcom/google/android/gms/common/api/internal/zaz;)Lcom/google/android/gms/common/api/internal/zabg;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabg;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Lcom/google/android/gms/common/api/internal/zaz;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/zaz;->zaj(Lcom/google/android/gms/common/api/internal/zaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1

    nop

    .array-data 1
    .end array-data
.end method
