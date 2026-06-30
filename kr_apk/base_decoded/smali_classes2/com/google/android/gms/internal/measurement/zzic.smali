.class public final Lcom/google/android/gms/internal/measurement/zzic;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzic;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/measurement/zzmi;

.field private zze:Lcom/google/android/gms/internal/measurement/zzmi;

.field private zzf:Lcom/google/android/gms/internal/measurement/zzmj;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzmj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzic;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzic;->zzb:Lcom/google/android/gms/internal/measurement/zzic;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzic;

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

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzcl()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzd:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzcl()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zze:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzib;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzic;->zzb:Lcom/google/android/gms/internal/measurement/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/measurement/zzic;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzic;->zzb:Lcom/google/android/gms/internal/measurement/zzic;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static zzg()Lcom/google/android/gms/internal/measurement/zzic;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzic;->zzb:Lcom/google/android/gms/internal/measurement/zzic;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzco(Lcom/google/android/gms/internal/measurement/zzmj;)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcc(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zze:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcm(Lcom/google/android/gms/internal/measurement/zzmi;)Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zze:Lcom/google/android/gms/internal/measurement/zzmi;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zze:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcc(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzco(Lcom/google/android/gms/internal/measurement/zzmj;)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcc(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/measurement/zzic;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzd:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcm(Lcom/google/android/gms/internal/measurement/zzmi;)Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzd:Lcom/google/android/gms/internal/measurement/zzmi;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzd:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcc(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/measurement/zzic;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/measurement/zzic;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzcl()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zze:Lcom/google/android/gms/internal/measurement/zzmi;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/measurement/zzic;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/measurement/zzic;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzcl()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzd:Lcom/google/android/gms/internal/measurement/zzmi;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zze:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzd:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zze:Lcom/google/android/gms/internal/measurement/zzmi;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzj()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzg:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzk()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzd:Lcom/google/android/gms/internal/measurement/zzmi;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzic;->zzb:Lcom/google/android/gms/internal/measurement/zzic;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzib;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzib;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzic;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzic;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    .line 1
    const-class p2, Lcom/google/android/gms/internal/measurement/zzhk;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/measurement/zzie;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzic;->zzb:Lcom/google/android/gms/internal/measurement/zzic;

    const-string p3, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzic;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
