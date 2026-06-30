.class final Lcom/google/android/gms/common/api/internal/zaae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

.field private final zab:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ApiKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaae;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zaa()Lcom/google/android/gms/common/api/internal/ApiKey;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zaa:Lcom/google/android/gms/common/api/internal/ApiKey;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zab()Lcom/google/android/gms/tasks/TaskCompletionSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->zab:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
