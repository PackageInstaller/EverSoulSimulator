.class public final Lcom/google/android/gms/internal/fido/zzel;
.super Lcom/google/android/gms/internal/fido/zzeg;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field private static final zza:Z

.field private static final zzb:Z

.field private static final zzc:Lcom/google/android/gms/internal/fido/zzef;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzel$zza;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/fido/zzel;->zza:Z

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "robolectric"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/google/android/gms/internal/fido/zzel;->zzb:Z

    const-class v0, Landroid/util/Log;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/fido/zzel$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzel$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzel;->zzc:Lcom/google/android/gms/internal/fido/zzef;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzeg;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static zzp()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static zzq()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzr()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/fido/zzel;->zzb:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzs()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/fido/zzel;->zza:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method static zzt()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dalvik.system.VMStack"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStackClass2"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzel;->zzq()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/fido/zzel$zza;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected zze(Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzdp;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzeo;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzdp;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method protected zzh()Lcom/google/android/gms/internal/fido/zzef;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzel;->zzc:Lcom/google/android/gms/internal/fido/zzef;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected zzj()Lcom/google/android/gms/internal/fido/zzev;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzep;->zzb()Lcom/google/android/gms/internal/fido/zzep;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected zzm()Ljava/lang/String;
    .locals 1

    const-string v0, "platform: Android"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
