.class public final Lcom/google/android/gms/internal/measurement/zzim;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzim;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzim;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzim;

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

.method public static zza()Lcom/google/android/gms/internal/measurement/zzif;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzif;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/measurement/zzim;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzim;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzih;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzih;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/measurement/zzim;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/measurement/zzim;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/measurement/zzih;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzb(I)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzih;->zza:Lcom/google/android/gms/internal/measurement/zzih;

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzim;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzif;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzif;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzim;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzig;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzii;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzim;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
