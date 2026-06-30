.class public final Lcom/google/android/gms/internal/play_billing/zzlk;
.super Lcom/google/android/gms/internal/play_billing/zzhk;
.source "com.android.billingclient:billing@@7.1.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzin;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzlk;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzku;

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzkx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzlk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzlk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzb:Lcom/google/android/gms/internal/play_billing/zzlk;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzlk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhk;->zzx(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzhk;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzhk;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zze:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzB()Lcom/google/android/gms/internal/play_billing/zzlk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzb:Lcom/google/android/gms/internal/play_billing/zzlk;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzC(Lcom/google/android/gms/internal/play_billing/zzlk;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zze:I

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzD(Lcom/google/android/gms/internal/play_billing/zzlk;Lcom/google/android/gms/internal/play_billing/zzkd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zze:I

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzE(Lcom/google/android/gms/internal/play_billing/zzlk;Lcom/google/android/gms/internal/play_billing/zzkl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zze:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic zzF(Lcom/google/android/gms/internal/play_billing/zzlk;Lcom/google/android/gms/internal/play_billing/zzku;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzg:Lcom/google/android/gms/internal/play_billing/zzku;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzd:I

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzG(Lcom/google/android/gms/internal/play_billing/zzlk;Lcom/google/android/gms/internal/play_billing/zzlq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzf:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zze:I

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic zzH(Lcom/google/android/gms/internal/play_billing/zzlk;Lcom/google/android/gms/internal/play_billing/zzlu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzlk;->zze:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_billing/zzli;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzlk;->zzb:Lcom/google/android/gms/internal/play_billing/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhk;->zzm()Lcom/google/android/gms/internal/play_billing/zzhg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzli;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzlk;->zzb:Lcom/google/android/gms/internal/play_billing/zzlk;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzli;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzli;-><init>(Lcom/google/android/gms/internal/play_billing/zzlj;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzlk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzlk;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzf"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    .line 2
    const-class p2, Lcom/google/android/gms/internal/play_billing/zzjz;

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/play_billing/zzkd;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzlu;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzkr;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzkl;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzlq;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzlk;->zzb:Lcom/google/android/gms/internal/play_billing/zzlk;

    const-string p3, "\u0004\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\u1009\u0001\u0007<\u0000\u0008<\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzlk;->zzu(Lcom/google/android/gms/internal/play_billing/zzim;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
