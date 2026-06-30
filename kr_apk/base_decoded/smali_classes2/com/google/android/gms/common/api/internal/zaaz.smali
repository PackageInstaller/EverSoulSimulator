.class final Lcom/google/android/gms/common/api/internal/zaaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

.field final synthetic zab:Z

.field final synthetic zac:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zad:Lcom/google/android/gms/common/api/internal/zabc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabc;Lcom/google/android/gms/common/api/internal/StatusPendingResult;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabc;->zae(Lcom/google/android/gms/common/api/internal/zabc;)Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->zac()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zad:Lcom/google/android/gms/common/api/internal/zabc;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->disconnect()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->connect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method
