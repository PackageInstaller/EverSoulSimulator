.class public Lcom/google/android/gms/tasks/CancellationTokenSource;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.2.1"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/zzb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Lcom/google/android/gms/tasks/zzb;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Lcom/google/android/gms/tasks/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzb;->zza()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public getToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zza:Lcom/google/android/gms/tasks/zzb;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
