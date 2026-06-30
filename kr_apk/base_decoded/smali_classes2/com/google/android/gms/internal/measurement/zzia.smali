.class public final Lcom/google/android/gms/internal/measurement/zzia;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzia;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzmj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzia;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzia;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzia;

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

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zze:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzia;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzhy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzia;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzia;Lcom/google/android/gms/internal/measurement/zzho;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzco(Lcom/google/android/gms/internal/measurement/zzmj;)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhy;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzia;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzia;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzd"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhz;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/gms/internal/measurement/zzho;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzia;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
