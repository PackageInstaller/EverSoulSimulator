.class final Lcom/google/android/gms/common/api/internal/zaal;
.super Lcom/google/android/gms/common/api/internal/zabe;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zaan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaan;Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaal;->zab:Lcom/google/android/gms/common/api/internal/zaan;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zabe;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zaa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaal;->zab:Lcom/google/android/gms/common/api/internal/zaan;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zaa:Lcom/google/android/gms/common/api/internal/zaau;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaau;->zas(Lcom/google/android/gms/common/api/internal/zaau;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .array-data 1
    .end array-data
.end method
