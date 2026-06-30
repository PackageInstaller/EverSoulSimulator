.class public final Lcom/google/android/gms/internal/measurement/zzhq;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhq;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:F

.field private zzi:D

.field private zzj:Lcom/google/android/gms/internal/measurement/zzmj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhq;->zzb:Lcom/google/android/gms/internal/measurement/zzhq;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzj:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzhp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhq;->zzb:Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhp;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/measurement/zzhq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhq;->zzb:Lcom/google/android/gms/internal/measurement/zzhq;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzz()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzj:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcc(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/measurement/zzhq;Lcom/google/android/gms/internal/measurement/zzhq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzz()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzj:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/measurement/zzhq;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzi:D

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/measurement/zzhq;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzg:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/measurement/zzhq;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzj:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/measurement/zzhq;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhq;->zzb:Lcom/google/android/gms/internal/measurement/zzhq;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhq;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzf:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/measurement/zzhq;D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzi:D

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/measurement/zzhq;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzg:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zze:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzf:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzz()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzj:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzco(Lcom/google/android/gms/internal/measurement/zzmj;)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzj:Lcom/google/android/gms/internal/measurement/zzmj;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzi:D

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzb()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzh:F

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzj:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzg:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zze:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzf:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzj:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhq;->zzb:Lcom/google/android/gms/internal/measurement/zzhq;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhp;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzhq;-><init>()V

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

    .line 1
    const-class p3, Lcom/google/android/gms/internal/measurement/zzhq;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhq;->zzb:Lcom/google/android/gms/internal/measurement/zzhq;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final zzu()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final zzv()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final zzw()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final zzx()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzy()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhq;->zzd:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method
