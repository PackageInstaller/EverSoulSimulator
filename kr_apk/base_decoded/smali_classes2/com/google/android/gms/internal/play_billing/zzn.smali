.class final Lcom/google/android/gms/internal/play_billing/zzn;
.super Lcom/google/android/gms/internal/play_billing/zzf;
.source "com.android.billingclient:billing@@7.1.1"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzf;-><init>(Lcom/google/android/gms/internal/play_billing/zzp;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzo;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Lcom/google/android/gms/internal/play_billing/zzo;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzb(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Ljava/lang/Thread;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final zzc(Lcom/google/android/gms/internal/play_billing/zzq;Lcom/google/android/gms/internal/play_billing/zzj;Lcom/google/android/gms/internal/play_billing/zzj;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzq;->zzd:Lcom/google/android/gms/internal/play_billing/zzj;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzq;->zzd:Lcom/google/android/gms/internal/play_billing/zzj;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .array-data 1
    .end array-data
.end method

.method final zzd(Lcom/google/android/gms/internal/play_billing/zzq;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzq;->zzc:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzq;->zzc:Ljava/lang/Object;

    .line 4
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .array-data 1
    .end array-data
.end method

.method final zze(Lcom/google/android/gms/internal/play_billing/zzq;Lcom/google/android/gms/internal/play_billing/zzo;Lcom/google/android/gms/internal/play_billing/zzo;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzq;->zze:Lcom/google/android/gms/internal/play_billing/zzo;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzq;->zze:Lcom/google/android/gms/internal/play_billing/zzo;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .array-data 1
    .end array-data
.end method
