.class public final Lcom/google/android/gms/common/api/internal/zacg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

.field public final zab:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

.field public final zac:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacg;->zaa:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacg;->zab:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zacg;->zac:Ljava/lang/Runnable;

    return-void

    .array-data 1
    .end array-data
.end method
