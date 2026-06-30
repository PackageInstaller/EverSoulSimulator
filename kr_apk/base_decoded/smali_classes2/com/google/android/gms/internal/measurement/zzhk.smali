.class public final Lcom/google/android/gms/internal/measurement/zzhk;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhk;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhk;->zzb:Lcom/google/android/gms/internal/measurement/zzhk;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhk;

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

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzhj;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhk;->zzb:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhj;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/measurement/zzhk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhk;->zzb:Lcom/google/android/gms/internal/measurement/zzhk;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzhk;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zzf:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/measurement/zzhk;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zze:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zze:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zzf:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzg()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zzd:I

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

.method public final zzh()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhk;->zzd:I

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhk;->zzb:Lcom/google/android/gms/internal/measurement/zzhk;

    return-object p1

    .line 4
    :cond_0
    throw p3

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhj;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhj;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzhk;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhk;->zzb:Lcom/google/android/gms/internal/measurement/zzhk;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzhk;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
