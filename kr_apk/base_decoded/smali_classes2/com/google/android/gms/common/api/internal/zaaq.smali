.class final Lcom/google/android/gms/common/api/internal/zaaq;
.super Lcom/google/android/gms/signin/internal/zac;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field private final zaa:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaau;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zaa:Ljava/lang/ref/WeakReference;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zaa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaau;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaau;->zak(Lcom/google/android/gms/common/api/internal/zaau;)Lcom/google/android/gms/common/api/internal/zabg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaap;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/zaap;-><init>(Lcom/google/android/gms/common/api/internal/zaaq;Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/api/internal/zaau;Lcom/google/android/gms/signin/internal/zak;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabg;->zal(Lcom/google/android/gms/common/api/internal/zabe;)V

    return-void

    .array-data 1
    .end array-data
.end method
