.class final Lcom/google/android/gms/common/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.6.0"


# static fields
.field static final zza:Lcom/google/android/gms/common/zzo;

.field static final zzb:Lcom/google/android/gms/common/zzo;

.field static final zzc:Lcom/google/android/gms/common/zzo;

.field static final zzd:Lcom/google/android/gms/common/zzo;

.field static final zze:Lcom/google/android/gms/common/zzo;

.field static final zzf:Lcom/google/android/gms/common/zzo;

.field private static volatile zzg:Lcom/google/android/gms/common/internal/zzaf;

.field private static final zzh:Ljava/lang/Object;

.field private static zzi:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzg;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u007f\u00a2f\u00fa\u00a7p\u0085xb\u00b1"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/zzm;->zze(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/zzq;->zza:Lcom/google/android/gms/common/zzo;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/zzh;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014Q\u00d5\u00db\u0004\u00f7X\u00e7B\u0086<"

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/zzm;->zze(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzh;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/zzq;->zzb:Lcom/google/android/gms/common/zzo;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/zzi;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/zzm;->zze(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzi;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/zzq;->zzc:Lcom/google/android/gms/common/zzo;

    .line 7
    new-instance v0, Lcom/google/android/gms/common/zzj;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/zzm;->zze(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzj;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/zzq;->zzd:Lcom/google/android/gms/common/zzo;

    .line 9
    new-instance v0, Lcom/google/android/gms/common/zzk;

    const-string v1, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/zzm;->zze(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzk;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/zzq;->zze:Lcom/google/android/gms/common/zzo;

    .line 11
    new-instance v0, Lcom/google/android/gms/common/zzl;

    const-string v1, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/common/zzm;->zze(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzl;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/common/zzq;->zzf:Lcom/google/android/gms/common/zzo;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzq;->zzh:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/common/zzm;ZZ)Lcom/google/android/gms/common/zzad;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/common/zzq;->zzh(Ljava/lang/String;Lcom/google/android/gms/common/zzm;ZZ)Lcom/google/android/gms/common/zzad;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4
    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method static zzb(Lcom/google/android/gms/common/zzaa;)Lcom/google/android/gms/common/zzad;
    .locals 4

    const-string v0, "Failed to get Google certificates from remote"

    const-string v1, "GoogleCertificates"

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    sget-object v3, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/zzq;->zzi()V
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v3, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;

    .line 7
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/zzaa;->zza(Landroid/content/Context;)Lcom/google/android/gms/common/zzs;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzaa;->zzb()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/common/zzq;->zzg:Lcom/google/android/gms/common/internal/zzaf;

    .line 8
    invoke-interface {p0, v3}, Lcom/google/android/gms/common/internal/zzaf;->zze(Lcom/google/android/gms/common/zzs;)Lcom/google/android/gms/common/zzu;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lcom/google/android/gms/common/zzq;->zzg:Lcom/google/android/gms/common/internal/zzaf;

    .line 9
    invoke-interface {p0, v3}, Lcom/google/android/gms/common/internal/zzaf;->zzf(Lcom/google/android/gms/common/zzs;)Lcom/google/android/gms/common/zzu;

    move-result-object p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :goto_0
    :try_start_4
    invoke-static {p0}, Lcom/google/android/gms/common/zzq;->zzg(Lcom/google/android/gms/common/zzu;)Lcom/google/android/gms/common/zzad;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 10
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "module call"

    invoke-static {v0, p0}, Lcom/google/android/gms/common/zzad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzad;

    move-result-object p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 4
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "module init: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/common/zzad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzad;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12
    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 13
    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzc(ZLjava/lang/String;Lcom/google/android/gms/common/zzm;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/common/zzq;->zzh(Ljava/lang/String;Lcom/google/android/gms/common/zzm;ZZ)Lcom/google/android/gms/common/zzad;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/common/zzad;->zza:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eq v0, v2, :cond_1

    const-string v2, "not allowed"

    goto :goto_1

    :cond_1
    const-string v2, "debug cert rejected"

    :goto_1
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object p1, v3, v0

    const-string p1, "SHA-256"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->zza(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/security/MessageDigest;

    invoke-virtual {p2}, Lcom/google/android/gms/common/zzm;->zzf()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const/4 p1, 0x3

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, p1

    const/4 p0, 0x4

    const-string p1, "12451000.false"

    aput-object p1, v3, p0

    const-string p0, "%s: pkg=%s, sha256=%s, atk=%s, ver=%s"

    .line 5
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static declared-synchronized zzd(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/common/zzq;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    .line 2
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method static zze()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/zzq;->zzi()V

    sget-object v1, Lcom/google/android/gms/common/zzq;->zzg:Lcom/google/android/gms/common/internal/zzaf;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/internal/zzaf;->zzg()Z

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_1
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    .line 4
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method static zzf()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/zzq;->zzi()V

    sget-object v1, Lcom/google/android/gms/common/zzq;->zzg:Lcom/google/android/gms/common/internal/zzaf;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/internal/zzaf;->zzi()Z

    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_1
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    .line 4
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzg(Lcom/google/android/gms/common/zzu;)Lcom/google/android/gms/common/zzad;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzu;->zzd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzu;->zzb()Lcom/google/android/gms/common/zzu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/zzq;->zzg(Lcom/google/android/gms/common/zzu;)Lcom/google/android/gms/common/zzad;

    move-result-object v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzu;->zze()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzu;->zza()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/common/zzad;->zzf(IJLcom/google/android/gms/common/zzad;)Lcom/google/android/gms/common/zzad;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzu;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzu;->zzf()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 7
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "error checking package certificate"

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzu;->zze()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzu;->zzf()I

    move-result p0

    invoke-static {v2, p0, v0, v1}, Lcom/google/android/gms/common/zzad;->zzg(IILjava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzad;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzh(Ljava/lang/String;Lcom/google/android/gms/common/zzm;ZZ)Lcom/google/android/gms/common/zzad;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Failed to get Google certificates from remote"

    const-string v1, "GoogleCertificates"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/zzq;->zzi()V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v2, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/common/zzw;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/common/zzw;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/zzm;ZZ)V

    :try_start_1
    sget-object p3, Lcom/google/android/gms/common/zzq;->zzg:Lcom/google/android/gms/common/internal/zzaf;

    sget-object v3, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 6
    invoke-interface {p3, v2, v3}, Lcom/google/android/gms/common/internal/zzaf;->zzh(Lcom/google/android/gms/common/zzw;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/zzad;->zzb()Lcom/google/android/gms/common/zzad;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p3, Lcom/google/android/gms/common/zzf;

    invoke-direct {p3, p2, p0, p1}, Lcom/google/android/gms/common/zzf;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/zzm;)V

    new-instance p0, Lcom/google/android/gms/common/zzab;

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/common/zzab;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/zzac;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzad;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 2
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "module init: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzad;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private static zzi()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/zzq;->zzg:Lcom/google/android/gms/common/internal/zzaf;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/zzq;->zzh:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/zzq;->zzg:Lcom/google/android/gms/common/internal/zzaf;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/zzq;->zzi:Landroid/content/Context;

    .line 3
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.googlecertificates"

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzae;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzaf;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/zzq;->zzg:Lcom/google/android/gms/common/internal/zzaf;

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .array-data 1
    .end array-data
.end method
