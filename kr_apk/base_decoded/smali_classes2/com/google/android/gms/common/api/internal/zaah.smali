.class final Lcom/google/android/gms/common/api/internal/zaah;
.super Lcom/google/android/gms/common/api/internal/zabe;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaai;Lcom/google/android/gms/common/api/internal/zabd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaa:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zabe;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zaa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaa:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zac(Lcom/google/android/gms/common/api/internal/zaai;)Lcom/google/android/gms/common/api/internal/zabg;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabg;->zah:Lcom/google/android/gms/common/api/internal/zabx;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zabx;->zab(Landroid/os/Bundle;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
