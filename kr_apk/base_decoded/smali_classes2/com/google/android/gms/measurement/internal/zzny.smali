.class public final Lcom/google/android/gms/measurement/internal/zzny;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zznx;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzgl;

.field private volatile zzc:Ljava/lang/Boolean;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzaz;

.field private zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzf:Lcom/google/android/gms/measurement/internal/zzou;

.field private final zzg:Ljava/util/List;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzaz;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzg:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzou;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzou;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzf:Lcom/google/android/gms/measurement/internal/zzou;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Lcom/google/android/gms/measurement/internal/zzny;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zza:Lcom/google/android/gms/measurement/internal/zznx;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzne;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzne;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzd:Lcom/google/android/gms/measurement/internal/zzaz;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzni;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzni;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzjs;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzh:Lcom/google/android/gms/measurement/internal/zzaz;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhq;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhq;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhq;->zza()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzht;->zza:Landroid/util/Pair;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzk(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzaf()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzg:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Processing queued up service tasks"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzg:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzh:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaz;->zzb()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzag()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzf:Lcom/google/android/gms/measurement/internal/zzou;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzou;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    .line 4
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzX:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzd:Lcom/google/android/gms/measurement/internal/zzaz;

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzah(Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzg:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const-wide/16 v4, 0x3e8

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzh:Lcom/google/android/gms/measurement/internal/zzaz;

    const-wide/32 v0, 0xea60

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaz;->zzd(J)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzB()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzai()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v0, 0x1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zznx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zza:Lcom/google/android/gms/measurement/internal/zznx;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/measurement/internal/zzny;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic zzp(Lcom/google/android/gms/measurement/internal/zzny;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string v0, "Failed to send storage consent settings to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzA(Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string v1, "Failed to send storage consent settings to the service"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic zzq(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzpc;)V
    .locals 2

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string p3, "[sgtm] Failed to get upload batches; not connected to service"

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 6
    :cond_0
    :try_start_2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmx;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzmx;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzo(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzpc;Lcom/google/android/gms/measurement/internal/zzgr;)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzag()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 13
    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string p3, "[sgtm] Failed to get upload batches; remote exception"

    .line 11
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 13
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic zzr(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string p3, "Failed to request trigger URIs; not connected to service"

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 6
    :cond_0
    :try_start_2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmw;

    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzmw;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzr(Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzgo;)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzag()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 12
    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string p3, "Failed to request trigger URIs; remote exception"

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 12
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic zzs(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzag;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string p1, "[sgtm] Discarding data. Failed to update batch upload status."

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgl;->zzC(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzag;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    iget-wide v0, p2, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "[sgtm] Failed to update batch upload status, rowId, exception"

    .line 9
    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic zzt(Lcom/google/android/gms/measurement/internal/zzny;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string v0, "Failed to send Dma consent settings to service"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzy(Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string v1, "Failed to send Dma consent settings to the service"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzny;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzv(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzgl;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzw(Lcom/google/android/gms/measurement/internal/zzny;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzaf()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/measurement/internal/zzny;Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzB()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/measurement/internal/zzny;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzag()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final zzA()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzai()Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgv;->zzk()Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zznc;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zznc;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 10
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method final zzB()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzad()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    .line 10
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.measurement.START"

    .line 17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 20
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zza:Lcom/google/android/gms/measurement/internal/zznx;

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznx;->zzb(Landroid/content/Intent;)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zza:Lcom/google/android/gms/measurement/internal/zznx;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznx;->zzc()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzC()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zza:Lcom/google/android/gms/measurement/internal/zznx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznx;->zzd()V

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzD(Lcom/google/android/gms/internal/measurement/zzcy;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznb;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zznb;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/internal/measurement/zzcy;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final zzE(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzna;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzna;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzF(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzno;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzno;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/internal/measurement/zzcy;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzG(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v6

    new-instance p2, Lcom/google/android/gms/measurement/internal/zznn;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zznn;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzH(Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzms;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzms;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzI(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzpc;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmt;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzmt;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzpc;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzJ(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmv;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzmv;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzK(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmu;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzmu;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/internal/measurement/zzcy;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzL(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v6

    new-instance p2, Lcom/google/android/gms/measurement/internal/zznp;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zznp;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;Z)V

    .line 4
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzM(Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzai()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzp(Lcom/google/android/gms/measurement/internal/zzbh;)Z

    move-result v5

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznl;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zznl;-><init>(Lcom/google/android/gms/measurement/internal/zzny;ZLcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzN(Lcom/google/android/gms/internal/measurement/zzcy;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    const v2, 0xbdfcb8

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzp(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    .line 8
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzW(Lcom/google/android/gms/internal/measurement/zzcy;[B)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznh;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zznh;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcy;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzO()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzai()Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzj()V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmz;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzmz;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method final zzP(Lcom/google/android/gms/measurement/internal/zzgl;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 58

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzai()Z

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const/16 v6, 0x64

    move-object/from16 v0, p3

    move v8, v6

    const/4 v7, 0x0

    :goto_0
    const/16 v9, 0x3e9

    if-ge v7, v9, :cond_a

    if-ne v8, v6, :cond_a

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    new-instance v9, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v8

    .line 7
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzgv;->zzi(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 8
    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-ge v8, v6, :cond_1

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-direct {v13, v3, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgu;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 10
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v10

    .line 12
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzaU:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v12, 0x0

    .line 13
    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_9

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 14
    check-cast v14, Lcom/google/android/gms/measurement/internal/zzgu;

    .line 15
    iget-object v15, v14, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 17
    invoke-virtual {v5, v12, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18
    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzgu;->zzb:Ljava/lang/String;

    .line 19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v13

    .line 20
    iget-wide v12, v14, Lcom/google/android/gms/measurement/internal/zzgu;->zzc:J

    move-wide/from16 v20, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    move-object/from16 v17, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    move-object/from16 v18, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzd:Ljava/lang/String;

    move-object/from16 v22, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zze:J

    move-wide/from16 v23, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzf:J

    move-wide/from16 v25, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzg:Ljava/lang/String;

    move-object/from16 v27, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    move/from16 v28, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzi:Z

    move/from16 v29, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzk:Ljava/lang/String;

    move-object/from16 v30, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzl:J

    move-wide/from16 v31, v12

    iget v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzm:I

    move/from16 v33, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    move/from16 v34, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzo:Z

    move/from16 v35, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/String;

    move-object/from16 v36, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzq:Ljava/lang/Boolean;

    move-object/from16 v37, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzr:J

    move-wide/from16 v38, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/util/List;

    move-object/from16 v40, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzt:Ljava/lang/String;

    move-object/from16 v41, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    move-object/from16 v42, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzv:Ljava/lang/String;

    move-object/from16 v43, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzw:Ljava/lang/String;

    move-object/from16 v44, v12

    iget-boolean v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzx:Z

    move/from16 v45, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzy:J

    move-wide/from16 v46, v12

    iget v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzz:I

    move/from16 v48, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzA:Ljava/lang/String;

    move-object/from16 v49, v12

    iget v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzB:I

    move/from16 v50, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzC:J

    move-wide/from16 v51, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzD:Ljava/lang/String;

    move-object/from16 v53, v12

    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzE:Ljava/lang/String;

    move-object/from16 v54, v12

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzF:J

    move-wide/from16 v55, v12

    iget v0, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzG:I

    move/from16 v57, v0

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzr;

    move-object/from16 v16, v0

    move-object/from16 v19, v5

    .line 21
    invoke-direct/range {v16 .. v57}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    goto :goto_3

    :cond_2
    move v6, v13

    :goto_3
    move-object v5, v0

    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v0, :cond_4

    const-wide/16 v12, 0x0

    if-eqz v10, :cond_3

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzny;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v18
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v24, v16

    move-wide/from16 v26, v18

    goto :goto_4

    :catch_0
    move-exception v0

    move-wide/from16 v26, v12

    move-wide/from16 v19, v16

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v19, v12

    move-wide/from16 v26, v19

    goto :goto_5

    :cond_3
    move-wide/from16 v24, v12

    move-wide/from16 v26, v24

    .line 24
    :goto_4
    :try_start_2
    check-cast v15, Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-interface {v2, v15, v5}, Lcom/google/android/gms/measurement/internal/zzgl;->zzp(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    if-eqz v10, :cond_5

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v14, "Logging telemetry for logEvent from database"

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzny;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Lcom/google/android/gms/measurement/internal/zzio;)Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v16

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    const v17, 0x8dcd

    const/16 v18, 0x0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v14, v26

    long-to-int v0, v14

    move-wide/from16 v19, v24

    move/from16 v23, v0

    .line 30
    invoke-virtual/range {v16 .. v23}, Lcom/google/android/gms/measurement/internal/zzha;->zzc(IIJJI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-wide/from16 v19, v24

    .line 43
    :goto_5
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 31
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v14

    .line 32
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v14

    const-string v15, "Failed to send event to the service"

    invoke-virtual {v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v10, :cond_5

    cmp-long v0, v19, v12

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzny;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->zza(Lcom/google/android/gms/measurement/internal/zzio;)Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v16

    const v17, 0x8dcd

    const/16 v18, 0xd

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v12, v12, v26

    long-to-int v0, v12

    move/from16 v23, v0

    .line 36
    invoke-virtual/range {v16 .. v23}, Lcom/google/android/gms/measurement/internal/zzha;->zzc(IIJJI)V

    goto :goto_6

    .line 30
    :cond_4
    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/zzqb;

    if-eqz v0, :cond_6

    .line 37
    :try_start_3
    check-cast v15, Lcom/google/android/gms/measurement/internal/zzqb;

    invoke-interface {v2, v15, v5}, Lcom/google/android/gms/measurement/internal/zzgl;->zzB(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 36
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 38
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v12

    .line 39
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v12

    const-string v13, "Failed to send user property to the service"

    invoke-virtual {v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_6
    const/4 v14, 0x0

    goto :goto_7

    .line 37
    :cond_6
    instance-of v0, v15, Lcom/google/android/gms/measurement/internal/zzai;

    if-eqz v0, :cond_7

    .line 48
    :try_start_4
    check-cast v15, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-interface {v2, v15, v5}, Lcom/google/android/gms/measurement/internal/zzgl;->zzt(Lcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 39
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 49
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v12

    .line 50
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v12

    const-string v13, "Failed to send conditional user property to the service"

    .line 51
    invoke-virtual {v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 48
    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v14, 0x0

    .line 41
    invoke-virtual {v12, v14, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v12

    if-eqz v12, :cond_8

    instance-of v12, v15, Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v12, :cond_8

    .line 44
    :try_start_5
    check-cast v15, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzbf;->zzc()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v2, v0, v5}, Lcom/google/android/gms/measurement/internal/zzgl;->zzx(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 51
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v12

    .line 46
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v12

    const-string v13, "Failed to send default event parameters to the service"

    .line 47
    invoke-virtual {v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 42
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v12, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v13, v6, 0x1

    move-object v0, v5

    move-object v12, v14

    const/16 v6, 0x64

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0x64

    goto/16 :goto_0

    :cond_a
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzQ(Lcom/google/android/gms/measurement/internal/zzai;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzn(Lcom/google/android/gms/measurement/internal/zzai;)Z

    move-result v5

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzai;

    .line 7
    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzai;)V

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznm;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zznm;-><init>(Lcom/google/android/gms/measurement/internal/zzny;ZLcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/measurement/internal/zzai;Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzR(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzab()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zznk;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzS(Lcom/google/android/gms/measurement/internal/zzmh;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zznf;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzmh;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzT(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 3
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v5, p1}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzai()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzgv;->zzo(Lcom/google/android/gms/measurement/internal/zzbf;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 10
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzng;

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzng;-><init>(Lcom/google/android/gms/measurement/internal/zzny;ZLcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/measurement/internal/zzbf;Landroid/os/Bundle;)V

    .line 11
    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzU()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzmq;-><init>(Lcom/google/android/gms/measurement/internal/zzny;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzV()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznj;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zznj;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final zzW(Lcom/google/android/gms/measurement/internal/zzgl;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzag()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzaf()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzX(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzmp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzmp;-><init>(Lcom/google/android/gms/measurement/internal/zzny;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzY(Lcom/google/android/gms/measurement/internal/zzqb;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzai()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzq(Lcom/google/android/gms/measurement/internal/zzqb;)Z

    move-result v0

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzmy;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/zzmy;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/measurement/internal/zzqb;)V

    .line 7
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzZ(Lcom/google/android/gms/measurement/internal/zzag;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmr;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzmr;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzag;)V

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzaa()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method final zzab()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzad()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzm()I

    move-result v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaI:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1

    .array-data 1
    .end array-data
.end method

.method final zzac()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzad()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzm()I

    move-result v0

    const v2, 0x3ae30

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1

    .array-data 1
    .end array-data
.end method

.method final zzad()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzc:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "use_service"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_6

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzh()I

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_1
    move v4, v2

    goto/16 :goto_4

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Checking service availability"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    const v6, 0xbdfcb8

    .line 16
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzp(I)I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v2, :cond_9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    const/4 v1, 0x3

    if-eq v5, v1, :cond_5

    const/16 v1, 0x9

    if-eq v5, v1, :cond_4

    const/16 v1, 0x12

    if-eq v5, v1, :cond_3

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Unexpected service status"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 31
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v4, "Service updating"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Service invalid"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Service disabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :goto_2
    move v2, v4

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Service container out of date"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzm()I

    move-result v5

    const/16 v6, 0x4423

    if-ge v5, v6, :cond_7

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v4

    :goto_3
    move v7, v4

    move v4, v2

    move v2, v7

    goto :goto_4

    .line 21
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v5, "Service missing"

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v4, "Service available"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    if-nez v4, :cond_b

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_5
    move v2, v4

    .line 42
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzc:Ljava/lang/Boolean;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzc:Ljava/lang/Boolean;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method protected final zzf()Z
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method protected final zzh()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzb:Lcom/google/android/gms/measurement/internal/zzgl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Failed to get consents; not connected to service yet."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :try_start_0
    invoke-interface {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgl;->zze(Lcom/google/android/gms/measurement/internal/zzr;)Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzny;->zzag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to get consents; remote exception"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method final zzl()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzny;->zzc:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzz()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzae(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznd;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zznd;-><init>(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzah(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method
