.class final Lcom/google/android/gms/common/api/internal/zaaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/zaj;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zabc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaw;->zaa:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnected()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
