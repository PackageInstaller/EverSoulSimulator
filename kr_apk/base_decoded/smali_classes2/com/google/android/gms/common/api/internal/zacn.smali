.class final Lcom/google/android/gms/common/api/internal/zacn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zacq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zacq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacn;->zaa:Lcom/google/android/gms/common/api/internal/zacq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacn;->zaa:Lcom/google/android/gms/common/api/internal/zacq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacq;->zac(Lcom/google/android/gms/common/api/internal/zacq;)Lcom/google/android/gms/common/api/internal/zacp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zacp;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .array-data 1
    .end array-data
.end method
