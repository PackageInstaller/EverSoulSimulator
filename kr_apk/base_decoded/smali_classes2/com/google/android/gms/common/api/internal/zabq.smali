.class final Lcom/google/android/gms/common/api/internal/zabq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabr;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabr;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabr;->zab(Lcom/google/android/gms/common/api/internal/zabr;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/common/api/internal/zabr;->zac(Lcom/google/android/gms/common/api/internal/zabr;Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zabr;->zaa(Lcom/google/android/gms/common/api/internal/zabr;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabr;->zad(Lcom/google/android/gms/common/api/internal/zabr;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zabr;->zaa(Lcom/google/android/gms/common/api/internal/zabr;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zabr;->zaa(Lcom/google/android/gms/common/api/internal/zabr;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    move-result-object v1

    .line 7
    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    .line 8
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Lcom/google/android/gms/common/api/internal/zabr;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zabr;->zaa(Lcom/google/android/gms/common/api/internal/zabr;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    const-string v3, "Failed to get service from broker."

    .line 9
    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0xa

    .line 10
    invoke-direct {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zabo;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zabo;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    .array-data 1
    .end array-data
.end method
