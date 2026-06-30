.class final Lcom/google/android/gms/common/api/internal/zabb;
.super Lcom/google/android/gms/common/api/internal/zabu;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field private final zaa:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabb;->zaa:Ljava/lang/ref/WeakReference;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zaa()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabb;->zaa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabc;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zabc;->zai(Lcom/google/android/gms/common/api/internal/zabc;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
