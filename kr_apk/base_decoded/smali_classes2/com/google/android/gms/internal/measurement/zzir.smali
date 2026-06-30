.class public final Lcom/google/android/gms/internal/measurement/zzir;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzir;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/measurement/zzmj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzir;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzir;->zzb:Lcom/google/android/gms/internal/measurement/zzir;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzir;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzir;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzir;->zzd:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzir;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzir;->zzb:Lcom/google/android/gms/internal/measurement/zzir;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzir;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzir;->zzb:Lcom/google/android/gms/internal/measurement/zzir;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzir;->zzd:Lcom/google/android/gms/internal/measurement/zzmj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzir;->zzd:Lcom/google/android/gms/internal/measurement/zzmj;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzir;->zzb:Lcom/google/android/gms/internal/measurement/zzir;

    return-object p1

    .line 5
    :cond_0
    throw p3

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zziq;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zziq;-><init>(Lcom/google/android/gms/internal/measurement/zzja;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzir;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzir;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzd"

    aput-object v0, p1, p3

    .line 1
    const-class p3, Lcom/google/android/gms/internal/measurement/zzit;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzir;->zzb:Lcom/google/android/gms/internal/measurement/zzir;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzir;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
