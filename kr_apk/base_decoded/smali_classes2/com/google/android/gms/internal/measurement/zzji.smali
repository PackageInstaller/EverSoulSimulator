.class public final Lcom/google/android/gms/internal/measurement/zzji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static zza:Landroid/os/UserManager;

.field private static volatile zzb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzji;->zzd(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static zzb(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzji;->zzd(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static zzc()Z
    .locals 1

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method

.method private static zzd(Landroid/content/Context;)Z
    .locals 7

    .line 6
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/measurement/zzji;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Z

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gt v2, v3, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;

    if-nez v3, :cond_2

    const-class v3, Landroid/os/UserManager;

    .line 1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;

    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    move v5, v1

    goto :goto_2

    .line 2
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_5

    :cond_4
    move v5, v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "DirectBootUtils"

    const-string v6, "Failed to check if user is unlocked."

    .line 4
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    .line 3
    sput-object v4, Lcom/google/android/gms/internal/measurement/zzji;->zza:Landroid/os/UserManager;

    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 1
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzji;->zzb:Z

    .line 5
    :cond_7
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method
