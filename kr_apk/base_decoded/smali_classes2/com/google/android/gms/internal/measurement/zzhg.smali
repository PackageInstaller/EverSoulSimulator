.class public final Lcom/google/android/gms/internal/measurement/zzhg;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhg;


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:Lcom/google/android/gms/internal/measurement/zzhg;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzhf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhf;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzhg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:Lcom/google/android/gms/internal/measurement/zzhg;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzhg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:Lcom/google/android/gms/internal/measurement/zzhg;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzhg;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzj:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzhg;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzi:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/measurement/zzhg;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zze:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/measurement/zzhg;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzk:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/measurement/zzhg;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzf:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/measurement/zzhg;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzg:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/measurement/zzhg;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzh:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zzk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzj:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:Lcom/google/android/gms/internal/measurement/zzhg;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhf;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhf;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhg;->zzb:Lcom/google/android/gms/internal/measurement/zzhg;

    const-string p3, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzi:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zze:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzk:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzf:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzg:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzh:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method
