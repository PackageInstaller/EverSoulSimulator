.class final Lcom/google/android/gms/common/api/internal/zabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:I

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabo;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:I

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zab:Lcom/google/android/gms/common/api/internal/zabo;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zaa:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zabo;->zak(Lcom/google/android/gms/common/api/internal/zabo;I)V

    return-void

    .array-data 1
    .end array-data
.end method
