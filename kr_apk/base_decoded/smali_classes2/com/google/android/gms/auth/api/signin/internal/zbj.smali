.class final Lcom/google/android/gms/auth/api/signin/internal/zbj;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "com.google.android.gms:play-services-auth@@21.1.1"


# instance fields
.field final synthetic zba:Lcom/google/android/gms/auth/api/signin/internal/zbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zbk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbj;->zba:Lcom/google/android/gms/auth/api/signin/internal/zbk;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbj;->zba:Lcom/google/android/gms/auth/api/signin/internal/zbk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zbk;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    .array-data 1
    .end array-data
.end method
