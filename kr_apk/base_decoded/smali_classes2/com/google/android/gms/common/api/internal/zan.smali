.class final Lcom/google/android/gms/common/api/internal/zan;
.super Lcom/google/android/gms/common/api/internal/zabu;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field final synthetic zaa:Landroid/app/Dialog;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zao;Landroid/app/Dialog;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zan;->zaa:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zan;->zab:Lcom/google/android/gms/common/api/internal/zao;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zaa()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zan;->zab:Lcom/google/android/gms/common/api/internal/zao;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zap;->zag(Lcom/google/android/gms/common/api/internal/zap;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zan;->zaa:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zan;->zaa:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
