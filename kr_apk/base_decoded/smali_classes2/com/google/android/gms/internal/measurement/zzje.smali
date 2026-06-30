.class public final Lcom/google/android/gms/internal/measurement/zzje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzjd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/internal/measurement/zzjd;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzje;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzje;->zza:Lcom/google/android/gms/internal/measurement/zzjd;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzjh;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzje;->zzb(Lcom/google/android/gms/internal/measurement/zzjd;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzje;->zza:Lcom/google/android/gms/internal/measurement/zzjd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized zzb(Lcom/google/android/gms/internal/measurement/zzjd;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzje;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzje;->zza:Lcom/google/android/gms/internal/measurement/zzjd;

    if-nez v1, :cond_0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzje;->zza:Lcom/google/android/gms/internal/measurement/zzjd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "init() already called"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .array-data 1
    .end array-data
.end method
