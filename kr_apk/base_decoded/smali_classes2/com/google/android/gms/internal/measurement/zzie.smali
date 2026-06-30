.class public final Lcom/google/android/gms/internal/measurement/zzie;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzie;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzmi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzie;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzie;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzie;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzie;->zzcl()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzid;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzid;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zze()Lcom/google/android/gms/internal/measurement/zzie;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/measurement/zzie;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcm(Lcom/google/android/gms/internal/measurement/zzmi;)Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcc(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/measurement/zzie;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzie;->zze:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zze:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzc(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmi;->zza(I)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzi()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzd:I

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

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    return-object p1

    .line 5
    :cond_0
    throw p3

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzid;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzie;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzie;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzd"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzie;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
