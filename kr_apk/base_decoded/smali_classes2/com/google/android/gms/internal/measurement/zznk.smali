.class final Lcom/google/android/gms/internal/measurement/zznk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzns<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/measurement/zznh;

.field private final zzh:Z

.field private final zzi:[I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/measurement/zzoe;

.field private final zzm:Lcom/google/android/gms/internal/measurement/zzlq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzol;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zznh;Z[IIILcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzoe;Lcom/google/android/gms/internal/measurement/zzlq;Lcom/google/android/gms/internal/measurement/zznc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zznk;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzf:I

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/measurement/zzma;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzi:[I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzj:I

    iput p9, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzk:I

    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzl:Lcom/google/android/gms/internal/measurement/zzoe;

    iput-object p13, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzm:Lcom/google/android/gms/internal/measurement/zzlq;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzg:Lcom/google/android/gms/internal/measurement/zznh;

    return-void

    .array-data 1
    .end array-data
.end method

.method private static zzA(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zznk;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzB(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzL(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/measurement/zzns;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzL(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/measurement/zzns;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzns;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzC(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    aget v1, v0, p3

    .line 2
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    int-to-long v4, v2

    .line 4
    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/measurement/zzns;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzE(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/measurement/zzns;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/measurement/zzns;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    aget p3, v0, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzD(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzp(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzol;->zzq(Ljava/lang/Object;JI)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzE(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzp(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzol;->zzq(Ljava/lang/Object;JI)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzF(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzG(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzE(Ljava/lang/Object;II)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method private final zzI(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzp(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzld;->zzb:Lcom/google/android/gms/internal/measurement/zzld;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzld;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/zzld;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzld;->zzb:Lcom/google/android/gms/internal/measurement/zzld;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzld;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zza(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method private final zzJ(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method private static zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzns;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/zzns;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method private static zzL(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcw()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzM(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzp(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzN(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzor;->zzG(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzld;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/zzor;->zzd(ILcom/google/android/gms/internal/measurement/zzld;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzof;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzof;->zzc()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzof;->zzf()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzne;Lcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzoe;Lcom/google/android/gms/internal/measurement/zzlq;Lcom/google/android/gms/internal/measurement/zznc;)Lcom/google/android/gms/internal/measurement/zznk;
    .locals 34

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zznr;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/measurement/zznk;->zza:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v17, v14

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 10
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 12
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 23
    new-array v7, v13, [I

    move v13, v9

    move/from16 v17, v14

    move/from16 v9, v16

    move-object/from16 v16, v7

    move v14, v10

    move v7, v4

    move v4, v15

    .line 6
    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zza()Lcom/google/android/gms/internal/measurement/zznh;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 26
    new-array v11, v11, [I

    .line 27
    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 29
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    .line 32
    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move/from16 v25, v2

    and-int/lit16 v2, v8, 0x800

    move/from16 v26, v14

    const/16 v14, 0x33

    if-lt v5, v14, :cond_23

    add-int/lit8 v14, v6, 0x1

    .line 33
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v6, v14, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_10
    add-int/lit8 v31, v14, 0x1

    .line 34
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v13

    const v13, 0xd800

    if-lt v14, v13, :cond_1a

    and-int/lit16 v13, v14, 0x1fff

    shl-int v13, v13, v27

    or-int/2addr v6, v13

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v13, v32

    goto :goto_10

    :cond_1a
    shl-int v13, v14, v27

    or-int/2addr v6, v13

    move/from16 v14, v31

    goto :goto_11

    :cond_1b
    move/from16 v32, v13

    move/from16 v14, v27

    :goto_11
    add-int/lit8 v13, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v13, v14, :cond_1f

    const/16 v14, 0x11

    if-ne v13, v14, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v14, 0xc

    if-ne v13, v14, :cond_20

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzc()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1e

    if-eqz v2, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    goto :goto_15

    :cond_1e
    :goto_12
    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 37
    aget-object v9, v15, v9

    aput-object v9, v12, v24

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v14, 0x1

    add-int/lit8 v13, v9, 0x1

    .line 34
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 35
    aget-object v9, v15, v9

    aput-object v9, v12, v28

    :goto_14
    move v9, v13

    :cond_20
    :goto_15
    add-int/2addr v6, v6

    .line 38
    aget-object v13, v15, v6

    .line 39
    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    .line 40
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 41
    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/measurement/zznk;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 42
    aput-object v13, v15, v6

    .line 43
    :goto_16
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    add-int/lit8 v6, v6, 0x1

    .line 44
    aget-object v14, v15, v6

    move/from16 v28, v2

    .line 45
    instance-of v2, v14, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_22

    .line 46
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 47
    :cond_22
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/measurement/zznk;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 48
    aput-object v14, v15, v6

    :goto_17
    move v2, v13

    .line 49
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v6, v13

    move-object v14, v1

    move v13, v9

    move/from16 v29, v27

    const v1, 0xd800

    move v9, v6

    const/4 v6, 0x0

    move/from16 v33, v28

    move-object/from16 v28, v0

    move v0, v2

    move/from16 v2, v33

    goto/16 :goto_23

    :cond_23
    move/from16 v32, v13

    add-int/lit8 v13, v9, 0x1

    .line 50
    aget-object v9, v15, v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/zznk;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v14, 0x9

    if-eq v5, v14, :cond_2d

    const/16 v14, 0x11

    if-ne v5, v14, :cond_24

    goto/16 :goto_1c

    :cond_24
    const/16 v14, 0x1b

    if-eq v5, v14, :cond_2c

    const/16 v14, 0x31

    if-ne v5, v14, :cond_25

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1a

    :cond_25
    const/16 v14, 0xc

    if-eq v5, v14, :cond_29

    const/16 v14, 0x1e

    if-eq v5, v14, :cond_29

    const/16 v14, 0x2c

    if-ne v5, v14, :cond_26

    goto :goto_18

    :cond_26
    const/16 v14, 0x32

    if-ne v5, v14, :cond_28

    add-int/lit8 v14, v13, 0x1

    add-int/lit8 v28, v21, 0x1

    .line 55
    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    .line 56
    aget-object v13, v15, v13

    add-int v21, v21, v21

    aput-object v13, v12, v21

    if-eqz v2, :cond_27

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v13, v14, 0x1

    .line 57
    aget-object v14, v15, v14

    aput-object v14, v12, v21

    move-object v14, v1

    move/from16 v21, v28

    move-object/from16 v28, v0

    goto :goto_1e

    :cond_27
    move v13, v14

    move/from16 v21, v28

    const/4 v2, 0x0

    move-object/from16 v28, v0

    goto :goto_1d

    :cond_28
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1d

    .line 53
    :cond_29
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzc()I

    move-result v14

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v14, v0, :cond_2b

    if-eqz v2, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v14, v1

    const/4 v2, 0x0

    goto :goto_1e

    :cond_2b
    :goto_19
    add-int/lit8 v14, v13, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 54
    aget-object v13, v15, v13

    aput-object v13, v12, v24

    goto :goto_1b

    :cond_2c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v14, v13, 0x1

    .line 65
    :goto_1a
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 52
    aget-object v13, v15, v13

    aput-object v13, v12, v24

    :goto_1b
    move v13, v14

    goto :goto_1d

    :cond_2d
    :goto_1c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    .line 50
    div-int/lit8 v14, v20, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v0

    .line 51
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v12, v14

    :goto_1d
    move-object v14, v1

    .line 58
    :goto_1e
    invoke-virtual {v10, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit16 v1, v8, 0x1000

    const v9, 0xfffff

    if-eqz v1, :cond_31

    const/16 v1, 0x11

    if-gt v5, v1, :cond_31

    add-int/lit8 v1, v6, 0x1

    .line 59
    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v9, 0xd800

    if-lt v6, v9, :cond_2f

    and-int/lit16 v6, v6, 0x1fff

    const/16 v23, 0xd

    :goto_1f
    add-int/lit8 v29, v1, 0x1

    .line 60
    invoke-virtual {v14, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v9, :cond_2e

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v23

    or-int/2addr v6, v1

    add-int/lit8 v23, v23, 0xd

    move/from16 v1, v29

    goto :goto_1f

    :cond_2e
    shl-int v1, v1, v23

    or-int/2addr v6, v1

    goto :goto_20

    :cond_2f
    move/from16 v29, v1

    :goto_20
    add-int v1, v7, v7

    div-int/lit8 v23, v6, 0x20

    add-int v1, v1, v23

    .line 61
    aget-object v9, v15, v1

    move/from16 v30, v2

    .line 62
    instance-of v2, v9, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_30

    .line 63
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_21

    .line 64
    :cond_30
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/zznk;->zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 65
    aput-object v9, v15, v1

    .line 66
    :goto_21
    invoke-virtual {v10, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v6, v6, 0x20

    move v9, v1

    const v1, 0xd800

    goto :goto_22

    :cond_31
    move/from16 v30, v2

    const v1, 0xd800

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_22
    const/16 v2, 0x12

    if-lt v5, v2, :cond_32

    const/16 v2, 0x31

    if-gt v5, v2, :cond_32

    add-int/lit8 v2, v22, 0x1

    .line 67
    aput v0, v16, v22

    move/from16 v22, v2

    :cond_32
    move/from16 v2, v30

    :goto_23
    add-int/lit8 v23, v20, 0x1

    .line 68
    aput v4, v11, v20

    add-int/lit8 v4, v23, 0x1

    and-int/lit16 v1, v8, 0x200

    if-eqz v1, :cond_33

    const/high16 v1, 0x20000000

    goto :goto_24

    :cond_33
    const/4 v1, 0x0

    :goto_24
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_25

    :cond_34
    const/4 v8, 0x0

    :goto_25
    if-eqz v2, :cond_35

    const/high16 v2, -0x80000000

    goto :goto_26

    :cond_35
    const/4 v2, 0x0

    :goto_26
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v1, v8

    or-int/2addr v1, v2

    or-int/2addr v1, v5

    or-int/2addr v0, v1

    .line 69
    aput v0, v11, v23

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v9

    .line 70
    aput v1, v11, v4

    move/from16 v20, v0

    move v9, v13

    move-object v1, v14

    move/from16 v2, v25

    move/from16 v14, v26

    move-object/from16 v0, v28

    move/from16 v4, v29

    move/from16 v13, v32

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move/from16 v32, v13

    move/from16 v26, v14

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznk;

    .line 71
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/measurement/zznr;->zza()Lcom/google/android/gms/internal/measurement/zznh;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v32

    move/from16 v13, v26

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/measurement/zznk;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zznh;Z[IIILcom/google/android/gms/internal/measurement/zznm;Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzoe;Lcom/google/android/gms/internal/measurement/zzlq;Lcom/google/android/gms/internal/measurement/zznc;)V

    return-object v0

    .line 72
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzob;

    const/4 v0, 0x0

    .line 73
    throw v0

    .array-data 1
    .end array-data
.end method

.method private static zzm(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzn(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzo(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzq(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzr(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzs(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzt(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzu(I)Lcom/google/android/gms/internal/measurement/zzmg;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmg;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final zzv(I)Lcom/google/android/gms/internal/measurement/zzns;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzns;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Lcom/google/android/gms/internal/measurement/zznp;

    move-result-object v2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    .line 3
    aput-object v1, v0, p1

    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzw(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final zzx(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzL(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzns;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzy(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzL(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzns;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzns;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    sget-object v8, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    const v10, 0xfffff

    move v1, v9

    move v11, v1

    move v12, v11

    move v0, v10

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    array-length v3, v2

    if-ge v11, v3, :cond_1c

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result v4

    .line 2
    aget v13, v2, v11

    add-int/lit8 v5, v11, 0x2

    .line 3
    aget v2, v2, v5

    and-int v5, v2, v10

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v4, v14, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v10, :cond_0

    move v0, v9

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    .line 4
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_1
    move v1, v0

    move v0, v5

    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    shl-int v2, v15, v2

    move v14, v0

    move/from16 v16, v1

    move v5, v2

    goto :goto_2

    :cond_2
    move v14, v0

    move/from16 v16, v1

    move v5, v9

    :goto_2
    and-int v0, v3, v10

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlv;->zzJ:Lcom/google/android/gms/internal/measurement/zzlv;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzlv;->zzW:Lcom/google/android/gms/internal/measurement/zzlv;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()I

    :cond_3
    int-to-long v2, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_19

    .line 7
    :pswitch_0
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    .line 9
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    .line 10
    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzw(ILcom/google/android/gms/internal/measurement/zznh;Lcom/google/android/gms/internal/measurement/zzns;)I

    move-result v0

    goto/16 :goto_13

    .line 11
    :pswitch_1
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 12
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto/16 :goto_16

    .line 15
    :pswitch_2
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 16
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    goto/16 :goto_16

    .line 19
    :pswitch_3
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_18

    .line 21
    :pswitch_4
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_17

    .line 23
    :pswitch_5
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 24
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto/16 :goto_16

    .line 27
    :pswitch_6
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 28
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v1

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    goto/16 :goto_16

    .line 31
    :pswitch_7
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 32
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzld;

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v1

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_14

    .line 36
    :pswitch_8
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 37
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;)I

    move-result v0

    goto/16 :goto_13

    .line 39
    :pswitch_9
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 40
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzld;

    if-eqz v2, :cond_4

    .line 41
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzld;

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v1

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_14

    .line 45
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzy(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_16

    .line 48
    :pswitch_a
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_15

    .line 50
    :pswitch_b
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_17

    .line 52
    :pswitch_c
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_18

    .line 54
    :pswitch_d
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 55
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 57
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto/16 :goto_16

    .line 58
    :pswitch_e
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 59
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 61
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto/16 :goto_16

    .line 62
    :pswitch_f
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 63
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 65
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto/16 :goto_16

    .line 66
    :pswitch_10
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_17

    .line 68
    :pswitch_11
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_18

    .line 70
    :pswitch_12
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzw(I)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v0, Lcom/google/android/gms/internal/measurement/zznb;

    .line 72
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzna;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznb;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznb;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_19

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 292
    throw v0

    .line 75
    :pswitch_13
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    .line 77
    sget v2, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v9

    goto :goto_4

    :cond_6
    move v3, v9

    move v4, v3

    :goto_3
    if-ge v3, v2, :cond_7

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-static {v13, v5, v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzw(ILcom/google/android/gms/internal/measurement/zznh;Lcom/google/android/gms/internal/measurement/zzns;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/2addr v12, v4

    goto/16 :goto_19

    .line 80
    :pswitch_14
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzj(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 82
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 84
    :pswitch_15
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzi(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 86
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 88
    :pswitch_16
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 90
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 92
    :pswitch_17
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 93
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 94
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 96
    :pswitch_18
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zza(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 98
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 99
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 100
    :pswitch_19
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzk(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 102
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 104
    :pswitch_1a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 107
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 108
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 109
    :pswitch_1b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 111
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 113
    :pswitch_1c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 115
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 116
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_5

    .line 117
    :pswitch_1d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 119
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 120
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_5

    .line 121
    :pswitch_1e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 122
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzl(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 123
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_5

    .line 125
    :pswitch_1f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzg(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 127
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_5

    .line 129
    :pswitch_20
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzc(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 131
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 132
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_5

    .line 133
    :pswitch_21
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zze(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 135
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    .line 136
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_6
    add-int/2addr v12, v1

    goto/16 :goto_19

    .line 137
    :pswitch_22
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_7
    move v0, v9

    goto/16 :goto_13

    :cond_9
    shl-int/lit8 v2, v13, 0x3

    .line 140
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzj(Ljava/util/List;)I

    move-result v0

    .line 141
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    :goto_8
    mul-int/2addr v1, v2

    goto/16 :goto_16

    .line 142
    :pswitch_23
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    shl-int/lit8 v2, v13, 0x3

    .line 145
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzi(Ljava/util/List;)I

    move-result v0

    .line 146
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_8

    .line 147
    :pswitch_24
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 148
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/zznu;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    .line 149
    :pswitch_25
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 150
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    .line 151
    :pswitch_26
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 152
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 153
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    shl-int/lit8 v2, v13, 0x3

    .line 154
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zza(Ljava/util/List;)I

    move-result v0

    .line 155
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_8

    .line 156
    :pswitch_27
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    shl-int/lit8 v2, v13, 0x3

    .line 159
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzk(Ljava/util/List;)I

    move-result v0

    .line 160
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_8

    .line 161
    :pswitch_28
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v9

    goto/16 :goto_6

    :cond_d
    shl-int/lit8 v2, v13, 0x3

    .line 164
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v9

    .line 165
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 166
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzld;

    .line 167
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v3

    .line 168
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 169
    :pswitch_29
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    .line 170
    sget v2, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v9

    goto :goto_c

    :cond_e
    shl-int/lit8 v3, v13, 0x3

    .line 172
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v9

    :goto_a
    if-ge v4, v2, :cond_10

    .line 173
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v13, v5, Lcom/google/android/gms/internal/measurement/zzms;

    if-eqz v13, :cond_f

    .line 174
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzms;

    .line 175
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzms;->zza()I

    move-result v5

    .line 176
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v13

    add-int/2addr v13, v5

    add-int/2addr v3, v13

    goto :goto_b

    .line 177
    :cond_f
    check-cast v5, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzx(Lcom/google/android/gms/internal/measurement/zznh;Lcom/google/android/gms/internal/measurement/zzns;)I

    move-result v5

    add-int/2addr v3, v5

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_10
    :goto_c
    add-int/2addr v12, v3

    goto/16 :goto_19

    .line 178
    :pswitch_2a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_11

    :cond_11
    shl-int/lit8 v2, v13, 0x3

    .line 180
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/zzmt;

    if-eqz v3, :cond_13

    .line 186
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmt;

    move v3, v9

    :goto_d
    if-ge v3, v1, :cond_19

    .line 187
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzld;

    if-eqz v5, :cond_12

    .line 188
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzld;

    .line 189
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v4

    .line 190
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_e

    .line 191
    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzy(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    move v3, v9

    :goto_f
    if-ge v3, v1, :cond_19

    .line 181
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzld;

    if-eqz v5, :cond_14

    .line 182
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzld;

    .line 183
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v4

    .line 184
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_10

    .line 185
    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzy(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 192
    :pswitch_2b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_7

    :cond_15
    shl-int/lit8 v1, v13, 0x3

    .line 195
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    add-int/2addr v1, v15

    mul-int/2addr v0, v1

    goto/16 :goto_13

    .line 196
    :pswitch_2c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    .line 198
    :pswitch_2d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/zznu;->zzd(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_13

    .line 200
    :pswitch_2e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_7

    :cond_16
    shl-int/lit8 v2, v13, 0x3

    .line 203
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzf(Ljava/util/List;)I

    move-result v0

    .line 204
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_8

    .line 205
    :pswitch_2f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 206
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_7

    :cond_17
    shl-int/lit8 v2, v13, 0x3

    .line 208
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzl(Ljava/util/List;)I

    move-result v0

    .line 209
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto/16 :goto_8

    .line 210
    :pswitch_30
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 211
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    :goto_11
    move v2, v9

    goto :goto_12

    :cond_18
    shl-int/lit8 v1, v13, 0x3

    .line 213
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zznu;->zzg(Ljava/util/List;)I

    move-result v2

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 215
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    :cond_19
    :goto_12
    add-int/2addr v12, v2

    goto/16 :goto_19

    .line 216
    :pswitch_31
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 217
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/zznu;->zzb(ILjava/util/List;Z)I

    move-result v0

    goto :goto_13

    .line 218
    :pswitch_32
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 219
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/measurement/zznu;->zzd(ILjava/util/List;Z)I

    move-result v0

    :goto_13
    add-int/2addr v12, v0

    goto/16 :goto_19

    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v11

    move-wide v9, v3

    move v3, v14

    move/from16 v4, v16

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 221
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    .line 222
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    .line 223
    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzw(ILcom/google/android/gms/internal/measurement/zznh;Lcom/google/android/gms/internal/measurement/zzns;)I

    move-result v0

    goto :goto_13

    :pswitch_34
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 225
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 226
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 227
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto/16 :goto_16

    :pswitch_35
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 229
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 230
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 231
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    goto/16 :goto_16

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 233
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_38
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 237
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 239
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto/16 :goto_16

    :pswitch_39
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 241
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 242
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 243
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v1

    goto/16 :goto_16

    :pswitch_3a
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 245
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzld;

    .line 246
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v1

    .line 248
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    :goto_14
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_13

    :pswitch_3b
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 249
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 250
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zzh(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;)I

    move-result v0

    goto/16 :goto_13

    :pswitch_3c
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 253
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzld;

    if-eqz v2, :cond_1a

    .line 254
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzld;

    .line 255
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v1

    .line 257
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_14

    .line 258
    :cond_1a
    check-cast v1, Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 260
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzy(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_16

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 261
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 262
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    :goto_15
    add-int/2addr v0, v15

    goto/16 :goto_13

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 264
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_17

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 266
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_40
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 268
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 269
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 270
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto :goto_16

    :pswitch_41
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 271
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 272
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 273
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 274
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    goto :goto_16

    :pswitch_42
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 276
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 277
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    .line 278
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzA(J)I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    goto/16 :goto_13

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    :goto_17
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_13

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    :goto_18
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_13

    :cond_1b
    :goto_19
    add-int/lit8 v11, v11, 0x3

    move v0, v14

    move/from16 v1, v16

    const/4 v9, 0x0

    const v10, 0xfffff

    goto/16 :goto_0

    .line 283
    :cond_1c
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 284
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzof;

    .line 285
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzof;->zza()I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    if-eqz v0, :cond_1f

    .line 286
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()I

    move-result v1

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_1a
    if-ge v9, v1, :cond_1d

    .line 287
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/measurement/zzoa;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zznw;

    .line 288
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zznw;->zza()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlt;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/zzlu;->zzb(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)I

    move-result v2

    add-int v18, v18, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    .line 289
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlt;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzlu;->zzb(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    goto :goto_1b

    :cond_1e
    add-int v12, v12, v18

    :cond_1f
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result v3

    .line 2
    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto/16 :goto_2

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto/16 :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzN(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzmk;->zza(Z)I

    move-result v2

    goto/16 :goto_3

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzn(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_3

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzm(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 45
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_1
    add-int/2addr v1, v6

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzmk;->zza(Z)I

    move-result v2

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    :goto_3
    add-int/2addr v1, v2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzoa;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzks;)I
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v12, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzA(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move/from16 v1, p3

    move v3, v10

    move v4, v3

    move v5, v4

    const/4 v2, -0x1

    const v6, 0xfffff

    :goto_0
    const/16 v16, 0x0

    if-ge v1, v14, :cond_83

    add-int/lit8 v4, v1, 0x1

    .line 2
    aget-byte v1, v15, v1

    if-gez v1, :cond_0

    .line 3
    invoke-static {v1, v15, v4, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzi(I[BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v4, v12, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    goto :goto_1

    :cond_0
    move/from16 v35, v4

    move v4, v1

    move/from16 v1, v35

    :goto_1
    ushr-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-le v8, v2, :cond_2

    div-int/2addr v3, v9

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zznk;->zze:I

    if-lt v8, v2, :cond_1

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zznk;->zzf:I

    if-gt v8, v2, :cond_1

    .line 5
    invoke-direct {v0, v8, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzq(II)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    .line 264
    :cond_2
    iget v2, v0, Lcom/google/android/gms/internal/measurement/zznk;->zze:I

    if-lt v8, v2, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/measurement/zznk;->zzf:I

    if-gt v8, v2, :cond_3

    .line 4
    invoke-direct {v0, v8, v10}, Lcom/google/android/gms/internal/measurement/zznk;->zzq(II)I

    move-result v2

    :goto_2
    move v3, v2

    const/4 v2, -0x1

    goto :goto_3

    :cond_3
    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_3
    if-ne v3, v2, :cond_4

    move v3, v1

    move/from16 v18, v2

    move v9, v4

    move/from16 v21, v5

    move/from16 v17, v6

    move/from16 v19, v10

    move-object v4, v11

    move-object v5, v12

    move v0, v13

    move v13, v8

    :goto_4
    move-object v8, v7

    goto/16 :goto_4d

    :cond_4
    and-int/lit8 v2, v4, 0x7

    .line 271
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    add-int/lit8 v19, v3, 0x1

    .line 6
    aget v10, v9, v19

    move/from16 v19, v4

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result v4

    const v17, 0xfffff

    and-int v13, v10, v17

    int-to-long v13, v13

    move/from16 v21, v8

    const/high16 v22, 0x20000000

    const-string v8, "Protocol message had invalid UTF-8."

    const-wide/16 v24, 0x0

    move-object/from16 v26, v8

    const-string v8, ""

    move-object/from16 v28, v8

    const-string v8, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v29, v8

    const/16 v8, 0x11

    if-gt v4, v8, :cond_1d

    add-int/lit8 v8, v3, 0x2

    .line 7
    aget v8, v9, v8

    ushr-int/lit8 v9, v8, 0x14

    const/16 v23, 0x1

    shl-int v9, v23, v9

    move/from16 v32, v10

    const v10, 0xfffff

    and-int/2addr v8, v10

    move-wide/from16 v33, v13

    if-eq v8, v6, :cond_7

    if-eq v6, v10, :cond_5

    int-to-long v13, v6

    .line 8
    invoke-virtual {v11, v7, v13, v14, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    if-ne v8, v10, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    int-to-long v5, v8

    .line 9
    invoke-virtual {v11, v7, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :goto_5
    move/from16 v17, v8

    goto :goto_6

    :cond_7
    move/from16 v17, v6

    :goto_6
    packed-switch v4, :pswitch_data_0

    move v6, v1

    move v14, v3

    move/from16 v13, v19

    const/4 v1, 0x3

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    or-int/2addr v5, v9

    .line 10
    invoke-direct {v0, v7, v14}, Lcom/google/android/gms/internal/measurement/zznk;->zzx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    shl-int/lit8 v2, v21, 0x3

    or-int/lit8 v2, v2, 0x4

    .line 11
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v9

    move/from16 v3, v21

    const v4, 0xfffff

    move-object v8, v1

    const/16 v18, -0x1

    move/from16 v19, v10

    move-object/from16 v10, p2

    move/from16 p3, v5

    move-object v5, v11

    move v11, v6

    move-object v6, v12

    move/from16 v12, p4

    move/from16 v20, v13

    move v13, v2

    move/from16 v2, p4

    move v6, v14

    move-object/from16 v14, p6

    .line 12
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;[BIIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v8

    .line 13
    invoke-direct {v0, v7, v6, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzF(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v13, p5

    move-object/from16 v12, p6

    move v14, v2

    move v2, v3

    move-object v11, v5

    move v3, v6

    move v1, v8

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v4, v20

    move/from16 v5, p3

    goto/16 :goto_0

    :pswitch_0
    if-nez v2, :cond_8

    or-int v8, v5, v9

    .line 14
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v9

    iget-wide v1, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc(J)J

    move-result-wide v5

    move-object v1, v11

    const/4 v13, -0x1

    move-object/from16 v2, p1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v5, v8

    move v1, v9

    goto/16 :goto_8

    :cond_8
    move/from16 v2, p4

    move v9, v1

    move v6, v3

    move v8, v5

    move v4, v10

    move-object v5, v11

    move-object v1, v12

    move/from16 v20, v19

    goto/16 :goto_9

    :pswitch_1
    move v14, v3

    move/from16 v13, v19

    if-nez v2, :cond_b

    or-int/2addr v5, v9

    .line 17
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)I

    move-result v2

    move-wide/from16 v3, v33

    .line 19
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_2
    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    if-nez v2, :cond_b

    .line 20
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 21
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/measurement/zznk;->zzu(I)Lcom/google/android/gms/internal/measurement/zzmg;

    move-result-object v6

    const/high16 v8, -0x80000000

    and-int v8, v32, v8

    if-eqz v8, :cond_a

    if-eqz v6, :cond_a

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    .line 23
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v3

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v13, v2}, Lcom/google/android/gms/internal/measurement/zzof;->zzj(ILjava/lang/Object;)V

    goto :goto_8

    :cond_a
    :goto_7
    or-int/2addr v5, v9

    .line 22
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v6, 0x2

    if-ne v2, v6, :cond_b

    or-int/2addr v5, v9

    .line 24
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zza([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    .line 25
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move v14, v3

    move/from16 v13, v19

    const/4 v6, 0x2

    if-ne v2, v6, :cond_b

    or-int v8, v5, v9

    .line 26
    invoke-direct {v0, v7, v14}, Lcom/google/android/gms/internal/measurement/zznk;->zzx(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 27
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v2

    move v6, v1

    move-object v1, v9

    move-object/from16 v3, p2

    move v4, v6

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 28
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;[BIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    .line 29
    invoke-direct {v0, v7, v14, v9}, Lcom/google/android/gms/internal/measurement/zznk;->zzF(Ljava/lang/Object;ILjava/lang/Object;)V

    move v5, v8

    :goto_8
    move v4, v13

    move v3, v14

    move/from16 v6, v17

    move/from16 v2, v21

    const/4 v10, 0x0

    goto/16 :goto_14

    :cond_b
    move/from16 v2, p4

    move v9, v1

    move v8, v5

    move v4, v10

    move-object v5, v11

    move-object v1, v12

    move/from16 v20, v13

    move v6, v14

    :goto_9
    move/from16 v3, v21

    goto/16 :goto_11

    :pswitch_5
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1a

    and-int v1, v32, v22

    if-eqz v1, :cond_17

    .line 32
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v2, :cond_16

    or-int/2addr v5, v9

    if-nez v2, :cond_c

    move-object/from16 v8, v28

    .line 279
    iput-object v8, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    move/from16 v16, v5

    const/4 v10, 0x0

    goto/16 :goto_e

    .line 33
    :cond_c
    sget v6, Lcom/google/android/gms/internal/measurement/zzoo;->zza:I

    .line 34
    array-length v6, v15

    sub-int v8, v6, v1

    or-int v9, v1, v2

    sub-int/2addr v8, v2

    or-int/2addr v8, v9

    if-ltz v8, :cond_15

    add-int v6, v1, v2

    .line 280
    new-array v2, v2, [C

    const/4 v8, 0x0

    :goto_a
    if-ge v1, v6, :cond_d

    .line 35
    aget-byte v9, v15, v1

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzom;->zzd(B)Z

    move-result v16

    if-eqz v16, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v16, v8, 0x1

    int-to-char v9, v9

    .line 36
    aput-char v9, v2, v8

    move/from16 v8, v16

    goto :goto_a

    :cond_d
    :goto_b
    if-ge v1, v6, :cond_14

    add-int/lit8 v9, v1, 0x1

    .line 37
    aget-byte v1, v15, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzom;->zzd(B)Z

    move-result v16

    if-eqz v16, :cond_e

    add-int/lit8 v16, v8, 0x1

    int-to-char v1, v1

    .line 41
    aput-char v1, v2, v8

    move v1, v9

    :goto_c
    move/from16 v8, v16

    if-ge v1, v6, :cond_d

    .line 42
    aget-byte v9, v15, v1

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzom;->zzd(B)Z

    move-result v16

    if-eqz v16, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v16, v8, 0x1

    int-to-char v9, v9

    .line 43
    aput-char v9, v2, v8

    goto :goto_c

    :cond_e
    const/16 v10, -0x20

    if-ge v1, v10, :cond_10

    if-ge v9, v6, :cond_f

    add-int/lit8 v10, v8, 0x1

    add-int/lit8 v16, v9, 0x1

    .line 40
    aget-byte v9, v15, v9

    invoke-static {v1, v9, v2, v8}, Lcom/google/android/gms/internal/measurement/zzom;->zzc(BB[CI)V

    move v8, v10

    move/from16 v1, v16

    :goto_d
    const v10, 0xfffff

    goto :goto_b

    .line 43
    :cond_f
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    move-object/from16 v10, v26

    .line 285
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 286
    throw v1

    :cond_10
    move/from16 v16, v5

    move-object/from16 v10, v26

    const/16 v5, -0x10

    if-ge v1, v5, :cond_12

    add-int/lit8 v5, v6, -0x1

    if-ge v9, v5, :cond_11

    add-int/lit8 v5, v8, 0x1

    add-int/lit8 v22, v9, 0x1

    .line 39
    aget-byte v9, v15, v9

    add-int/lit8 v23, v22, 0x1

    move/from16 p3, v5

    aget-byte v5, v15, v22

    invoke-static {v1, v9, v5, v2, v8}, Lcom/google/android/gms/internal/measurement/zzom;->zzb(BBB[CI)V

    move/from16 v8, p3

    move-object/from16 v26, v10

    move/from16 v5, v16

    move/from16 v1, v23

    goto :goto_d

    .line 40
    :cond_11
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 283
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 284
    throw v1

    :cond_12
    add-int/lit8 v5, v6, -0x2

    if-ge v9, v5, :cond_13

    add-int/lit8 v5, v9, 0x1

    .line 38
    aget-byte v28, v15, v9

    add-int/lit8 v9, v5, 0x1

    aget-byte v29, v15, v5

    add-int/lit8 v5, v9, 0x1

    aget-byte v30, v15, v9

    move/from16 v27, v1

    move-object/from16 v31, v2

    move/from16 v32, v8

    invoke-static/range {v27 .. v32}, Lcom/google/android/gms/internal/measurement/zzom;->zza(BBBB[CI)V

    add-int/lit8 v8, v8, 0x2

    move v1, v5

    move-object/from16 v26, v10

    move/from16 v5, v16

    goto :goto_d

    .line 39
    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 281
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 282
    throw v1

    :cond_14
    move/from16 v16, v5

    .line 38
    new-instance v1, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v1, v2, v10, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    move v1, v6

    :goto_e
    move/from16 v5, v16

    goto :goto_10

    :cond_15
    const/4 v10, 0x0

    .line 34
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 280
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_16
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    move-object/from16 v2, v29

    .line 278
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 279
    throw v1

    :cond_17
    move-object/from16 v8, v28

    move-object/from16 v2, v29

    const/4 v10, 0x0

    .line 30
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v6, v12, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v6, :cond_19

    or-int v2, v5, v9

    if-nez v6, :cond_18

    .line 277
    iput-object v8, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    goto :goto_f

    :cond_18
    new-instance v5, Ljava/lang/String;

    .line 31
    sget-object v8, Lcom/google/android/gms/internal/measurement/zzmk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v15, v1, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    add-int/2addr v1, v6

    :goto_f
    move v5, v2

    .line 279
    :goto_10
    iget-object v2, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    .line 44
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_13

    .line 30
    :cond_19
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 276
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 277
    throw v1

    :cond_1a
    move/from16 v2, p4

    move v8, v5

    move v9, v6

    move-object v5, v11

    move-object v1, v12

    move/from16 v20, v13

    move v6, v14

    move/from16 v3, v21

    const v4, 0xfffff

    :goto_11
    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_16

    :pswitch_6
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v10, 0x0

    if-nez v2, :cond_1c

    or-int/2addr v5, v9

    .line 45
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget-wide v8, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    cmp-long v2, v8, v24

    if-eqz v2, :cond_1b

    const/4 v8, 0x1

    goto :goto_12

    :cond_1b
    move v8, v10

    .line 46
    :goto_12
    invoke-static {v7, v3, v4, v8}, Lcom/google/android/gms/internal/measurement/zzol;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_13

    :pswitch_7
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v1, 0x5

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v6, 0x4

    or-int/2addr v5, v9

    .line 47
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v2

    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_13

    :pswitch_8
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    add-int/lit8 v8, v6, 0x8

    or-int/2addr v9, v5

    .line 48
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v5

    move-object v1, v11

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v1, v8

    move v5, v9

    goto/16 :goto_13

    :pswitch_9
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v10, 0x0

    if-nez v2, :cond_1c

    or-int/2addr v5, v9

    .line 49
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 50
    invoke-virtual {v11, v7, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_13

    :pswitch_a
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v10, 0x0

    if-nez v2, :cond_1c

    or-int v8, v5, v9

    .line 51
    invoke-static {v15, v6, v12}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v9

    iget-wide v5, v12, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    move-object v1, v11

    move-object/from16 v2, p1

    .line 52
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v5, v8

    move v1, v9

    goto :goto_13

    :pswitch_b
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v1, 0x5

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v6, 0x4

    or-int/2addr v5, v9

    .line 53
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 54
    invoke-static {v7, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzp(Ljava/lang/Object;JF)V

    goto :goto_13

    :pswitch_c
    move v6, v1

    move v14, v3

    move/from16 v13, v19

    move-wide/from16 v3, v33

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-ne v2, v1, :cond_1c

    add-int/lit8 v1, v6, 0x8

    or-int/2addr v5, v9

    .line 55
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 56
    invoke-static {v7, v3, v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzol;->zzo(Ljava/lang/Object;JD)V

    :goto_13
    move v4, v13

    move v3, v14

    move/from16 v6, v17

    move/from16 v2, v21

    :goto_14
    move/from16 v14, p4

    :goto_15
    move/from16 v13, p5

    goto/16 :goto_0

    :cond_1c
    move/from16 v2, p4

    move v8, v5

    move v9, v6

    move/from16 v19, v10

    move-object v5, v11

    move-object v1, v12

    move/from16 v20, v13

    move v6, v14

    move/from16 v3, v21

    const v4, 0xfffff

    const/16 v18, -0x1

    :goto_16
    move/from16 v0, p5

    move v13, v3

    move-object v4, v5

    move v10, v6

    move/from16 v21, v8

    move v3, v9

    move/from16 v9, v20

    move-object v5, v1

    goto/16 :goto_4

    :cond_1d
    move/from16 v17, v6

    move/from16 v32, v10

    move/from16 v20, v19

    move/from16 v23, v21

    move-object/from16 v10, v26

    move-object/from16 v8, v28

    const/16 v18, -0x1

    const/16 v19, 0x0

    move v6, v3

    move/from16 v21, v5

    move-object v5, v11

    move-object/from16 v3, v29

    move-wide/from16 v35, v13

    move v13, v1

    move-object v1, v12

    move-wide/from16 v11, v35

    const/16 v14, 0x1b

    if-ne v4, v14, :cond_21

    const/4 v14, 0x2

    if-ne v2, v14, :cond_20

    .line 57
    invoke-virtual {v5, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmj;

    .line 58
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 59
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v3

    if-nez v3, :cond_1e

    const/16 v3, 0xa

    goto :goto_17

    :cond_1e
    add-int/2addr v3, v3

    .line 60
    :goto_17
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzmj;->zzd(I)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v2

    .line 61
    invoke-virtual {v5, v7, v11, v12, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 62
    :cond_1f
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v8

    move/from16 v9, v20

    move-object/from16 v10, p2

    move v11, v13

    move/from16 v12, p4

    move-object v13, v2

    move/from16 v2, p4

    move-object/from16 v14, p6

    .line 63
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Lcom/google/android/gms/internal/measurement/zzns;I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result v3

    move/from16 v13, p5

    move-object v12, v1

    move v14, v2

    move v1, v3

    move-object v11, v5

    move v3, v6

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v2, v23

    goto/16 :goto_0

    :cond_20
    move/from16 v2, p4

    move-object v14, v7

    move v2, v13

    move/from16 v13, v20

    move/from16 v8, v23

    move v7, v6

    move-object/from16 v35, v5

    move-object v5, v1

    move-object/from16 v1, v35

    goto/16 :goto_43

    :cond_21
    move/from16 v14, p4

    move/from16 v26, v6

    const/16 v6, 0x31

    if-gt v4, v6, :cond_71

    move-object/from16 v28, v10

    move/from16 v6, v32

    int-to-long v9, v6

    .line 64
    invoke-virtual {v5, v7, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzmj;

    .line 65
    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v22

    if-nez v22, :cond_22

    .line 66
    invoke-interface {v6}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v22

    move-object/from16 v29, v8

    add-int v8, v22, v22

    .line 67
    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/measurement/zzmj;->zzd(I)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v6

    .line 68
    invoke-virtual {v5, v7, v11, v12, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_18

    :cond_22
    move-object/from16 v29, v8

    :goto_18
    move-object v12, v6

    const-string v6, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v4, :pswitch_data_1

    move-object v9, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 p3, v23

    const/4 v1, 0x3

    move-object v12, v5

    if-ne v2, v1, :cond_6e

    and-int/lit8 v1, v13, -0x8

    or-int/lit8 v10, v1, 0x4

    move/from16 v11, v26

    .line 69
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v20

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v5, v10

    move-object/from16 v6, p6

    .line 70
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Lcom/google/android/gms/internal/measurement/zzns;[BIIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    .line 71
    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3f

    :pswitch_d
    const/4 v4, 0x2

    if-ne v2, v4, :cond_25

    .line 75
    sget v2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 76
    check-cast v12, Lcom/google/android/gms/internal/measurement/zzmw;

    .line 77
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int/2addr v3, v2

    :goto_19
    if-ge v2, v3, :cond_23

    .line 78
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget-wide v8, v1, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 79
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    goto :goto_19

    :cond_23
    if-ne v2, v3, :cond_24

    move-object v9, v1

    move v1, v2

    move-object v12, v5

    move v7, v13

    move/from16 v13, v20

    move/from16 p3, v23

    goto/16 :goto_3e

    .line 330
    :cond_24
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 287
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 288
    throw v1

    :cond_25
    if-nez v2, :cond_27

    .line 80
    sget v2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 81
    check-cast v12, Lcom/google/android/gms/internal/measurement/zzmw;

    .line 82
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget-wide v3, v1, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 83
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc(J)J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    :goto_1a
    if-ge v2, v14, :cond_26

    .line 84
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    move/from16 v11, v20

    if-ne v11, v4, :cond_2b

    .line 85
    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget-wide v3, v1, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc(J)J

    move-result-wide v3

    .line 86
    invoke-virtual {v12, v3, v4}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    move/from16 v20, v11

    goto :goto_1a

    :cond_26
    move/from16 v11, v20

    goto :goto_1d

    :cond_27
    move-object v9, v1

    move-object v12, v5

    move v7, v13

    move/from16 v13, v20

    move/from16 p3, v23

    goto/16 :goto_40

    :pswitch_e
    move/from16 v11, v20

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 87
    sget v2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 88
    check-cast v12, Lcom/google/android/gms/internal/measurement/zzme;

    .line 89
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int/2addr v3, v2

    :goto_1b
    if-ge v2, v3, :cond_28

    .line 90
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v4, v1, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 91
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    goto :goto_1b

    :cond_28
    if-ne v2, v3, :cond_29

    goto :goto_1d

    .line 288
    :cond_29
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 289
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 290
    throw v1

    :cond_2a
    if-nez v2, :cond_35

    .line 92
    sget v2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 93
    check-cast v12, Lcom/google/android/gms/internal/measurement/zzme;

    .line 94
    invoke-static {v15, v13, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 95
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    :goto_1c
    if-ge v2, v14, :cond_2b

    .line 96
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v11, v4, :cond_2b

    .line 97
    invoke-static {v15, v3, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)I

    move-result v3

    .line 98
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    goto :goto_1c

    :cond_2b
    :goto_1d
    move-object v9, v1

    move v1, v2

    move-object v12, v5

    move v7, v13

    move/from16 p3, v23

    move v13, v11

    goto/16 :goto_3e

    :pswitch_f
    move/from16 v11, v20

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 99
    invoke-static {v15, v13, v12, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf([BILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    move-object v10, v1

    move-object/from16 p3, v5

    move/from16 v9, v23

    move/from16 v8, v26

    goto :goto_1e

    :cond_2c
    if-nez v2, :cond_34

    move-object v10, v1

    move v1, v11

    move-object/from16 v2, p2

    move/from16 v9, v23

    move v3, v13

    move/from16 v4, p4

    move-object v8, v5

    move-object v5, v12

    move-object/from16 p3, v8

    move/from16 v8, v26

    move-object/from16 v6, p6

    .line 100
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzj(I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    .line 101
    :goto_1e
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zznk;->zzu(I)Lcom/google/android/gms/internal/measurement/zzmg;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zznk;->zzl:Lcom/google/android/gms/internal/measurement/zzoe;

    .line 102
    sget v4, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    if-eqz v1, :cond_32

    .line 103
    instance-of v4, v12, Ljava/util/RandomAccess;

    if-eqz v4, :cond_30

    .line 104
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v20, v2

    move-object/from16 v2, v16

    move/from16 v5, v19

    move v6, v5

    :goto_1f
    if-ge v5, v4, :cond_2f

    .line 105
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(I)Z

    move-result v22

    if-eqz v22, :cond_2e

    if-eq v5, v6, :cond_2d

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 107
    :cond_2e
    invoke-static {v7, v9, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzoe;)Ljava/lang/Object;

    move-result-object v2

    :goto_20
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_1f

    :cond_2f
    if-eq v6, v4, :cond_33

    .line 108
    invoke-interface {v12, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_22

    :cond_30
    move/from16 v20, v2

    .line 109
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v16

    :cond_31
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 111
    invoke-static {v7, v9, v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzoe;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    :cond_32
    move/from16 v20, v2

    :cond_33
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move/from16 p3, v9

    move-object v9, v10

    move v7, v13

    move/from16 v1, v20

    :goto_23
    move v13, v11

    move v11, v8

    goto/16 :goto_42

    :cond_34
    move-object/from16 v0, p0

    :cond_35
    move-object v9, v1

    move-object v12, v5

    move v7, v13

    move/from16 p3, v23

    move v13, v11

    goto/16 :goto_40

    :pswitch_10
    move-object v10, v1

    move-object/from16 p3, v5

    move/from16 v11, v20

    move/from16 v9, v23

    move/from16 v8, v26

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3d

    .line 113
    invoke-static {v15, v13, v10}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v1, :cond_3c

    .line 114
    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_3b

    if-nez v1, :cond_36

    .line 115
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzld;->zzb:Lcom/google/android/gms/internal/measurement/zzld;

    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 116
    :cond_36
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/measurement/zzld;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzld;

    move-result-object v2

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    :goto_24
    add-int/2addr v0, v1

    :goto_25
    if-ge v0, v14, :cond_3a

    .line 117
    invoke-static {v15, v0, v10}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v10, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v11, v2, :cond_3a

    .line 118
    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v0

    iget v1, v10, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v1, :cond_39

    .line 119
    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_38

    if-nez v1, :cond_37

    .line 298
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzld;->zzb:Lcom/google/android/gms/internal/measurement/zzld;

    .line 120
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 121
    :cond_37
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/measurement/zzld;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzld;

    move-result-object v2

    invoke-interface {v12, v2}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 119
    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 297
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 298
    throw v0

    .line 118
    :cond_39
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 295
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 296
    throw v0

    :cond_3a
    move-object/from16 v12, p3

    move v1, v0

    move/from16 p3, v9

    move-object v9, v10

    move v7, v13

    move-object/from16 v0, p0

    goto :goto_23

    .line 114
    :cond_3b
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 293
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 294
    throw v0

    .line 113
    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 291
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 292
    throw v0

    :cond_3d
    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move/from16 p3, v9

    move-object v9, v10

    move v7, v13

    goto :goto_26

    :pswitch_11
    move-object v10, v1

    move-object/from16 p3, v5

    move/from16 v11, v20

    move/from16 v9, v23

    move/from16 v8, v26

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3e

    move-object/from16 v0, p0

    .line 122
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    move-object/from16 v5, p3

    move v4, v8

    move-object v8, v1

    move v1, v9

    move v9, v11

    move-object v6, v10

    move-object/from16 v10, p2

    move v2, v11

    move v11, v13

    move-object v3, v12

    move/from16 v12, p4

    move v7, v13

    move-object v13, v3

    move v3, v14

    move-object/from16 v14, p6

    .line 123
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zze(Lcom/google/android/gms/internal/measurement/zzns;I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result v8

    move/from16 p3, v1

    move v13, v2

    move v14, v3

    move v11, v4

    move-object v12, v5

    move-object v9, v6

    move v1, v8

    goto/16 :goto_42

    :cond_3e
    move-object/from16 v0, p0

    move v7, v13

    move-object/from16 v12, p3

    move/from16 p3, v9

    move-object v9, v10

    :goto_26
    move v13, v11

    move v11, v8

    goto/16 :goto_41

    :pswitch_12
    move-object v6, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 v1, v23

    move/from16 v4, v26

    const/4 v11, 0x2

    if-ne v2, v11, :cond_4c

    const-wide/32 v11, 0x20000000

    and-long/2addr v9, v11

    cmp-long v2, v9, v24

    if-nez v2, :cond_44

    .line 124
    invoke-static {v15, v7, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v9, v6, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v9, :cond_43

    if-nez v9, :cond_3f

    move-object/from16 v10, v29

    .line 125
    invoke-interface {v8, v10}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3f
    move-object/from16 v10, v29

    .line 132
    new-instance v11, Ljava/lang/String;

    .line 126
    sget-object v12, Lcom/google/android/gms/internal/measurement/zzmk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v2, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 127
    invoke-interface {v8, v11}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/2addr v2, v9

    :goto_28
    if-ge v2, v14, :cond_42

    .line 128
    invoke-static {v15, v2, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v9

    iget v11, v6, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v11, :cond_42

    .line 129
    invoke-static {v15, v9, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v9, v6, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v9, :cond_41

    if-nez v9, :cond_40

    .line 130
    invoke-interface {v8, v10}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_40
    new-instance v11, Ljava/lang/String;

    .line 131
    sget-object v12, Lcom/google/android/gms/internal/measurement/zzmk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v2, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 132
    invoke-interface {v8, v11}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 129
    :cond_41
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 301
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 302
    throw v1

    :cond_42
    move/from16 p3, v1

    move v1, v2

    move v11, v4

    move-object v12, v5

    move-object v9, v6

    goto/16 :goto_42

    .line 124
    :cond_43
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 299
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 300
    throw v1

    :cond_44
    move-object/from16 v10, v29

    .line 133
    invoke-static {v15, v7, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v9, v6, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v9, :cond_4b

    if-nez v9, :cond_45

    .line 134
    invoke-interface {v8, v10}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    move/from16 v23, v1

    goto :goto_29

    :cond_45
    add-int v11, v2, v9

    .line 135
    invoke-static {v15, v2, v11}, Lcom/google/android/gms/internal/measurement/zzoo;->zzd([BII)Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 306
    new-instance v12, Ljava/lang/String;

    move/from16 v23, v1

    .line 136
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzmk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v12, v15, v2, v9, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 137
    invoke-interface {v8, v12}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    move v2, v11

    :goto_29
    if-ge v2, v14, :cond_49

    .line 138
    invoke-static {v15, v2, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v9, v6, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v9, :cond_49

    .line 139
    invoke-static {v15, v1, v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v1, v6, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ltz v1, :cond_48

    if-nez v1, :cond_46

    .line 140
    invoke-interface {v8, v10}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_46
    add-int v9, v2, v1

    .line 141
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/measurement/zzoo;->zzd([BII)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 310
    new-instance v11, Ljava/lang/String;

    .line 142
    sget-object v12, Lcom/google/android/gms/internal/measurement/zzmk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v2, v1, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 143
    invoke-interface {v8, v11}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    move v2, v9

    goto :goto_29

    .line 141
    :cond_47
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    move-object/from16 v3, v28

    .line 309
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 310
    throw v1

    .line 139
    :cond_48
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 307
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 308
    throw v1

    :cond_49
    move v1, v2

    move v11, v4

    move-object v12, v5

    move-object v9, v6

    goto/16 :goto_34

    :cond_4a
    move-object/from16 v3, v28

    .line 135
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 305
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 306
    throw v1

    .line 133
    :cond_4b
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 303
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 304
    throw v1

    :cond_4c
    move/from16 p3, v1

    move v11, v4

    move-object v12, v5

    move-object v9, v6

    goto/16 :goto_41

    :pswitch_13
    move-object v9, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 v4, v26

    const/4 v1, 0x2

    if-ne v2, v1, :cond_50

    .line 144
    sget v1, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 145
    move-object v12, v8

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzku;

    .line 146
    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int/2addr v2, v1

    :goto_2a
    if-ge v1, v2, :cond_4e

    .line 147
    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget-wide v10, v9, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    cmp-long v3, v10, v24

    if-eqz v3, :cond_4d

    const/4 v10, 0x1

    goto :goto_2b

    :cond_4d
    move/from16 v10, v19

    .line 148
    :goto_2b
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/measurement/zzku;->zze(Z)V

    goto :goto_2a

    :cond_4e
    if-ne v1, v2, :cond_4f

    goto/16 :goto_33

    .line 290
    :cond_4f
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 311
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 312
    throw v1

    :cond_50
    if-nez v2, :cond_5b

    .line 149
    sget v1, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 150
    move-object v12, v8

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzku;

    .line 151
    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget-wide v2, v9, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    cmp-long v2, v2, v24

    if-eqz v2, :cond_51

    const/4 v10, 0x1

    goto :goto_2c

    :cond_51
    move/from16 v10, v19

    .line 152
    :goto_2c
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/measurement/zzku;->zze(Z)V

    :goto_2d
    if-ge v1, v14, :cond_5c

    .line 153
    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v3, :cond_5c

    .line 154
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget-wide v2, v9, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    cmp-long v2, v2, v24

    if-eqz v2, :cond_52

    const/4 v10, 0x1

    goto :goto_2e

    :cond_52
    move/from16 v10, v19

    .line 155
    :goto_2e
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/measurement/zzku;->zze(Z)V

    goto :goto_2d

    :pswitch_14
    move-object v9, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 v4, v26

    const/4 v1, 0x2

    if-ne v2, v1, :cond_56

    .line 156
    sget v1, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 157
    move-object v12, v8

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzme;

    .line 158
    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int v3, v1, v2

    .line 159
    array-length v8, v15

    if-gt v3, v8, :cond_55

    .line 160
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzme;->size()I

    move-result v8

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v8, v2

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/measurement/zzme;->zzi(I)V

    :goto_2f
    if-ge v1, v3, :cond_53

    .line 161
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2f

    :cond_53
    if-ne v1, v3, :cond_54

    goto/16 :goto_33

    .line 312
    :cond_54
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 315
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 316
    throw v1

    .line 159
    :cond_55
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 313
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 314
    throw v1

    :cond_56
    const/4 v1, 0x5

    if-ne v2, v1, :cond_5b

    add-int/lit8 v1, v7, 0x4

    .line 162
    sget v2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 163
    move-object v12, v8

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzme;

    .line 164
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    :goto_30
    if-ge v1, v14, :cond_5c

    .line 165
    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v3, :cond_5c

    .line 166
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/zzme;->zzh(I)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_30

    :pswitch_15
    move-object v9, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 v4, v26

    const/4 v1, 0x2

    if-ne v2, v1, :cond_5a

    .line 167
    sget v1, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 168
    move-object v12, v8

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzmw;

    .line 169
    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int v3, v1, v2

    .line 170
    array-length v8, v15

    if-gt v3, v8, :cond_59

    .line 171
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzmw;->size()I

    move-result v8

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v8, v2

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/measurement/zzmw;->zzh(I)V

    :goto_31
    if-ge v1, v3, :cond_57

    .line 172
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_31

    :cond_57
    if-ne v1, v3, :cond_58

    goto :goto_33

    .line 316
    :cond_58
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 319
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 320
    throw v1

    .line 170
    :cond_59
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 317
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 318
    throw v1

    :cond_5a
    const/4 v1, 0x1

    if-ne v2, v1, :cond_5b

    add-int/lit8 v1, v7, 0x8

    .line 173
    sget v2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 174
    move-object v12, v8

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzmw;

    .line 175
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    :goto_32
    if-ge v1, v14, :cond_5c

    .line 176
    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v3, :cond_5c

    .line 177
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v10

    invoke-virtual {v12, v10, v11}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_32

    :cond_5b
    move v11, v4

    move-object v12, v5

    goto :goto_36

    :pswitch_16
    move-object v9, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 v4, v26

    const/4 v1, 0x2

    if-ne v2, v1, :cond_5d

    .line 178
    invoke-static {v15, v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzf([BILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    :cond_5c
    :goto_33
    move v11, v4

    move-object v12, v5

    :goto_34
    move/from16 p3, v23

    goto/16 :goto_42

    :cond_5d
    if-nez v2, :cond_5f

    move/from16 v10, v23

    move v1, v13

    move-object/from16 v2, p2

    move v3, v7

    move v11, v4

    move/from16 v4, p4

    move-object v12, v5

    move-object v5, v8

    move-object/from16 v6, p6

    .line 179
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzj(I[BIILcom/google/android/gms/internal/measurement/zzmj;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    :cond_5e
    :goto_35
    move/from16 p3, v10

    goto/16 :goto_42

    :cond_5f
    move-object v12, v5

    move v11, v4

    :goto_36
    move/from16 p3, v23

    goto/16 :goto_41

    :pswitch_17
    move-object v9, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 v10, v23

    move/from16 v11, v26

    const/4 v1, 0x2

    move-object v12, v5

    if-ne v2, v1, :cond_62

    .line 180
    sget v1, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 181
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmw;

    .line 182
    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int/2addr v3, v2

    :goto_37
    if-ge v2, v3, :cond_60

    .line 183
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget-wide v4, v9, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 184
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    goto :goto_37

    :cond_60
    if-ne v2, v3, :cond_61

    goto :goto_39

    .line 320
    :cond_61
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 321
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 322
    throw v1

    :cond_62
    if-nez v2, :cond_68

    .line 185
    sget v1, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 186
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmw;

    .line 187
    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget-wide v3, v9, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 188
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    :goto_38
    if-ge v2, v14, :cond_63

    .line 189
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v3

    iget v4, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v4, :cond_63

    .line 190
    invoke-static {v15, v3, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget-wide v3, v9, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 191
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzmw;->zzg(J)V

    goto :goto_38

    :cond_63
    :goto_39
    move v1, v2

    goto :goto_35

    :pswitch_18
    move-object v9, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 v10, v23

    move/from16 v11, v26

    const/4 v1, 0x2

    move-object v12, v5

    if-ne v2, v1, :cond_67

    .line 192
    sget v1, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 193
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlw;

    .line 194
    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int v4, v2, v3

    .line 195
    array-length v5, v15

    if-gt v4, v5, :cond_66

    .line 196
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlw;->size()I

    move-result v5

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzlw;->zzg(I)V

    :goto_3a
    if-ge v2, v4, :cond_64

    .line 197
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 198
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzlw;->zzf(F)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_3a

    :cond_64
    if-ne v2, v4, :cond_65

    goto :goto_39

    .line 322
    :cond_65
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 325
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 326
    throw v1

    .line 195
    :cond_66
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 323
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 324
    throw v1

    :cond_67
    const/4 v1, 0x5

    if-ne v2, v1, :cond_68

    add-int/lit8 v1, v7, 0x4

    .line 199
    sget v2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 200
    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlw;

    .line 201
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 202
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzlw;->zzf(F)V

    :goto_3b
    if-ge v1, v14, :cond_5e

    .line 203
    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v3

    iget v4, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v4, :cond_5e

    .line 204
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 205
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzlw;->zzf(F)V

    add-int/lit8 v1, v3, 0x4

    goto :goto_3b

    :cond_68
    move/from16 p3, v10

    goto/16 :goto_41

    :pswitch_19
    move-object v9, v1

    move-object v8, v12

    move v7, v13

    move/from16 v13, v20

    move/from16 v10, v23

    move/from16 v11, v26

    const/4 v1, 0x2

    move-object v12, v5

    if-ne v2, v1, :cond_6c

    .line 206
    sget v1, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 207
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzlm;

    .line 208
    invoke-static {v15, v7, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    add-int v4, v2, v3

    .line 209
    array-length v5, v15

    if-gt v4, v5, :cond_6b

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlm;->size()I

    move-result v5

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzg(I)V

    :goto_3c
    if-ge v2, v4, :cond_69

    .line 211
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v22

    move/from16 p3, v10

    move/from16 v26, v11

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    .line 212
    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(D)V

    add-int/lit8 v2, v2, 0x8

    move/from16 v10, p3

    move/from16 v11, v26

    goto :goto_3c

    :cond_69
    move/from16 p3, v10

    move/from16 v26, v11

    if-ne v2, v4, :cond_6a

    move v1, v2

    goto :goto_3e

    .line 359
    :cond_6a
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 329
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 330
    throw v1

    .line 209
    :cond_6b
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 327
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 328
    throw v1

    :cond_6c
    move/from16 p3, v10

    move/from16 v26, v11

    const/4 v1, 0x1

    if-ne v2, v1, :cond_6e

    add-int/lit8 v1, v7, 0x8

    .line 213
    sget v2, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 214
    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzlm;

    .line 215
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 216
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(D)V

    :goto_3d
    if-ge v1, v14, :cond_6d

    .line 217
    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v3

    iget v4, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v4, :cond_6d

    .line 218
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 219
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(D)V

    add-int/lit8 v1, v3, 0x8

    goto :goto_3d

    :cond_6d
    :goto_3e
    move/from16 v11, v26

    goto :goto_42

    :goto_3f
    if-ge v1, v14, :cond_6f

    .line 72
    invoke-static {v15, v1, v9}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v3

    iget v2, v9, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-ne v13, v2, :cond_6f

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v5, v10

    move-object/from16 v6, p6

    .line 73
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzc(Lcom/google/android/gms/internal/measurement/zzns;[BIIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    .line 74
    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_6e
    :goto_40
    move/from16 v11, v26

    :goto_41
    move v1, v7

    :cond_6f
    :goto_42
    if-eq v1, v7, :cond_70

    move-object/from16 v7, p1

    move/from16 v2, p3

    move v3, v11

    move-object v11, v12

    move v4, v13

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v5, v21

    move/from16 v13, p5

    move-object v12, v9

    goto/16 :goto_0

    :cond_70
    move-object/from16 v8, p1

    move/from16 v0, p5

    move v3, v1

    move-object v5, v9

    move v10, v11

    move-object v4, v12

    move v9, v13

    move/from16 v13, p3

    goto/16 :goto_4d

    :cond_71
    move-object v3, v10

    move/from16 v7, v26

    move/from16 v6, v32

    move-object v10, v8

    move/from16 v8, v23

    move-object/from16 v35, v5

    move-object v5, v1

    move-object/from16 v1, v35

    move/from16 v36, v20

    move/from16 v20, v13

    move/from16 v13, v36

    const/16 v14, 0x32

    if-ne v4, v14, :cond_74

    const/4 v14, 0x2

    if-ne v2, v14, :cond_73

    .line 331
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/zznk;->zzw(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v14, p1

    .line 332
    invoke-virtual {v1, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 333
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zznb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zznb;->zze()Z

    move-result v4

    if-nez v4, :cond_72

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznb;->zza()Lcom/google/android/gms/internal/measurement/zznb;

    move-result-object v4

    .line 334
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zznb;->zzb()Lcom/google/android/gms/internal/measurement/zznb;

    move-result-object v4

    .line 335
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/zznc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v1, v14, v11, v12, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 337
    :cond_72
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzna;

    .line 338
    throw v16

    :cond_73
    move-object/from16 v14, p1

    move/from16 v2, v20

    :goto_43
    move/from16 v0, p5

    move-object v4, v1

    move v3, v2

    move v10, v7

    move v9, v13

    move v13, v8

    move-object v8, v14

    goto/16 :goto_4d

    :cond_74
    move-object/from16 v14, p1

    add-int/lit8 v23, v7, 0x2

    .line 220
    aget v9, v9, v23

    move/from16 v32, v6

    const v6, 0xfffff

    and-int/2addr v9, v6

    move/from16 v26, v7

    int-to-long v6, v9

    packed-switch v4, :pswitch_data_2

    :cond_75
    move-object v4, v1

    move v9, v13

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    goto/16 :goto_4b

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v2, v4, :cond_75

    and-int/lit8 v2, v13, -0x8

    or-int/lit8 v2, v2, 0x4

    move/from16 v4, v26

    .line 221
    invoke-direct {v0, v14, v8, v4}, Lcom/google/android/gms/internal/measurement/zznk;->zzy(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v3

    .line 222
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v9

    move v6, v8

    move-object v8, v3

    move-object/from16 v10, p2

    move/from16 v11, v20

    move/from16 v12, p4

    move v7, v13

    move v13, v2

    move-object v2, v14

    move-object/from16 v14, p6

    .line 223
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;[BIIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v8

    .line 224
    invoke-direct {v0, v2, v6, v4, v3}, Lcom/google/android/gms/internal/measurement/zznk;->zzG(Ljava/lang/Object;IILjava/lang/Object;)V

    move v13, v6

    move v9, v7

    move/from16 v14, v20

    move-object v4, v1

    move v1, v8

    move-object v8, v2

    goto/16 :goto_4c

    :pswitch_1b
    move v9, v13

    move/from16 v4, v26

    move v13, v8

    move-object v8, v14

    if-nez v2, :cond_76

    move/from16 v14, v20

    .line 225
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    move/from16 p3, v2

    iget-wide v2, v5, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 226
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v8, v11, v12, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 227
    invoke-virtual {v1, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v26, v4

    move-object v4, v1

    move/from16 v1, p3

    goto/16 :goto_4c

    :cond_76
    move/from16 v14, v20

    goto/16 :goto_46

    :pswitch_1c
    move v9, v13

    move/from16 v4, v26

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-nez v2, :cond_79

    .line 228
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 229
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v11, v12, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 230
    invoke-virtual {v1, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_1d
    move v9, v13

    move/from16 v4, v26

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-nez v2, :cond_79

    .line 231
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget v3, v5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 232
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zznk;->zzu(I)Lcom/google/android/gms/internal/measurement/zzmg;

    move-result-object v10

    if-eqz v10, :cond_78

    invoke-interface {v10, v3}, Lcom/google/android/gms/internal/measurement/zzmg;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_77

    goto :goto_44

    .line 235
    :cond_77
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v6

    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v9, v3}, Lcom/google/android/gms/internal/measurement/zzof;->zzj(ILjava/lang/Object;)V

    goto :goto_45

    .line 233
    :cond_78
    :goto_44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v11, v12, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 234
    invoke-virtual {v1, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_1e
    move v9, v13

    move/from16 v4, v26

    const/4 v3, 0x2

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-ne v2, v3, :cond_79

    .line 236
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zza([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v2

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/zzks;->zzc:Ljava/lang/Object;

    .line 237
    invoke-virtual {v1, v8, v11, v12, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 238
    invoke-virtual {v1, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_45
    move/from16 v26, v4

    move-object v4, v1

    move v1, v2

    goto/16 :goto_4c

    :pswitch_1f
    move v9, v13

    move/from16 v4, v26

    const/4 v3, 0x2

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-ne v2, v3, :cond_79

    .line 239
    invoke-direct {v0, v8, v13, v4}, Lcom/google/android/gms/internal/measurement/zznk;->zzy(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v7

    .line 240
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v2

    move-object v10, v1

    move-object v1, v7

    move-object/from16 v3, p2

    move v11, v4

    move v4, v14

    move-object v12, v5

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 241
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;[BIILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    .line 242
    invoke-direct {v0, v8, v13, v11, v7}, Lcom/google/android/gms/internal/measurement/zznk;->zzG(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object v4, v10

    move/from16 v26, v11

    move-object v5, v12

    goto/16 :goto_4c

    :cond_79
    :goto_46
    move/from16 v26, v4

    move-object v4, v1

    goto/16 :goto_4b

    :pswitch_20
    move-object v4, v1

    move v9, v13

    const/4 v1, 0x2

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-ne v2, v1, :cond_7e

    .line 243
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    iget v2, v5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    if-nez v2, :cond_7a

    .line 244
    invoke-virtual {v4, v8, v11, v12, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_48

    :cond_7a
    and-int v10, v32, v22

    add-int v0, v1, v2

    if-eqz v10, :cond_7c

    .line 245
    invoke-static {v15, v1, v0}, Lcom/google/android/gms/internal/measurement/zzoo;->zzd([BII)Z

    move-result v10

    if-eqz v10, :cond_7b

    goto :goto_47

    .line 4
    :cond_7b
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 339
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 340
    throw v0

    .line 245
    :cond_7c
    :goto_47
    new-instance v3, Ljava/lang/String;

    .line 246
    sget-object v10, Lcom/google/android/gms/internal/measurement/zzmk;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v3, v15, v1, v2, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 247
    invoke-virtual {v4, v8, v11, v12, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v1, v0

    .line 248
    :goto_48
    invoke-virtual {v4, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4c

    :pswitch_21
    move-object v4, v1

    move v9, v13

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-nez v2, :cond_7e

    .line 249
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v0

    iget-wide v1, v5, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    cmp-long v1, v1, v24

    if-eqz v1, :cond_7d

    const/4 v10, 0x1

    goto :goto_49

    :cond_7d
    move/from16 v10, v19

    .line 250
    :goto_49
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v8, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 251
    invoke-virtual {v4, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4a

    :pswitch_22
    move-object v4, v1

    move v9, v13

    const/4 v0, 0x5

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-ne v2, v0, :cond_7e

    add-int/lit8 v1, v14, 0x4

    .line 252
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v8, v11, v12, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 253
    invoke-virtual {v4, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4c

    :pswitch_23
    move-object v4, v1

    move v9, v13

    const/4 v0, 0x1

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-ne v2, v0, :cond_7e

    add-int/lit8 v1, v14, 0x8

    .line 254
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v8, v11, v12, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 255
    invoke-virtual {v4, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4c

    :pswitch_24
    move-object v4, v1

    move v9, v13

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-nez v2, :cond_7e

    .line 256
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v0

    iget v1, v5, Lcom/google/android/gms/internal/measurement/zzks;->zza:I

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 258
    invoke-virtual {v4, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4a

    :pswitch_25
    move-object v4, v1

    move v9, v13

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-nez v2, :cond_7e

    .line 259
    invoke-static {v15, v14, v5}, Lcom/google/android/gms/internal/measurement/zzkt;->zzk([BILcom/google/android/gms/internal/measurement/zzks;)I

    move-result v0

    iget-wide v1, v5, Lcom/google/android/gms/internal/measurement/zzks;->zzb:J

    .line 260
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v8, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 261
    invoke-virtual {v4, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4a
    move v1, v0

    goto :goto_4c

    :pswitch_26
    move-object v4, v1

    move v9, v13

    const/4 v0, 0x5

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-ne v2, v0, :cond_7e

    add-int/lit8 v1, v14, 0x4

    .line 262
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 263
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v4, v8, v11, v12, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 264
    invoke-virtual {v4, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4c

    :pswitch_27
    move-object v4, v1

    move v9, v13

    const/4 v0, 0x1

    move v13, v8

    move-object v8, v14

    move/from16 v14, v20

    if-ne v2, v0, :cond_7e

    add-int/lit8 v1, v14, 0x8

    .line 265
    invoke-static {v15, v14}, Lcom/google/android/gms/internal/measurement/zzkt;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v4, v8, v11, v12, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 267
    invoke-virtual {v4, v8, v6, v7, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4c

    :cond_7e
    :goto_4b
    move v1, v14

    :goto_4c
    if-eq v1, v14, :cond_7f

    move-object/from16 v0, p0

    move/from16 v14, p4

    move-object v11, v4

    move-object v12, v5

    move-object v7, v8

    move v4, v9

    move v2, v13

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v5, v21

    move/from16 v3, v26

    goto/16 :goto_15

    :cond_7f
    move/from16 v0, p5

    move v3, v1

    move/from16 v10, v26

    :goto_4d
    if-ne v9, v0, :cond_80

    if-eqz v0, :cond_80

    const v2, 0xfffff

    move-object/from16 v7, p0

    move v1, v3

    move-object v11, v4

    move v4, v9

    move/from16 v6, v17

    move/from16 v5, v21

    goto/16 :goto_4f

    :cond_80
    move-object/from16 v7, p0

    .line 357
    iget-boolean v1, v7, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    if-eqz v1, :cond_82

    iget-object v1, v5, Lcom/google/android/gms/internal/measurement/zzks;->zzd:Lcom/google/android/gms/internal/measurement/zzlp;

    .line 268
    sget v2, Lcom/google/android/gms/internal/measurement/zzlp;->zzb:I

    .line 269
    sget v2, Lcom/google/android/gms/internal/measurement/zznp;->zza:I

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzlp;->zza:Lcom/google/android/gms/internal/measurement/zzlp;

    if-eq v1, v2, :cond_82

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zznk;->zzg:Lcom/google/android/gms/internal/measurement/zznh;

    .line 272
    sget v6, Lcom/google/android/gms/internal/measurement/zzkt;->zza:I

    .line 273
    invoke-virtual {v1, v2, v13}, Lcom/google/android/gms/internal/measurement/zzlp;->zzb(Lcom/google/android/gms/internal/measurement/zznh;I)Lcom/google/android/gms/internal/measurement/zzmc;

    move-result-object v1

    if-nez v1, :cond_81

    .line 274
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v6

    move v1, v9

    move-object/from16 v2, p2

    move-object v11, v4

    move/from16 v4, p4

    move-object v5, v6

    move-object/from16 v6, p6

    .line 275
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzg(I[BIILcom/google/android/gms/internal/measurement/zzof;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    goto :goto_4e

    .line 358
    :cond_81
    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzma;

    .line 359
    throw v16

    :cond_82
    move-object v11, v4

    .line 270
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v5

    move v1, v9

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 271
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkt;->zzg(I[BIILcom/google/android/gms/internal/measurement/zzof;Lcom/google/android/gms/internal/measurement/zzks;)I

    move-result v1

    :goto_4e
    move/from16 v14, p4

    move-object/from16 v12, p6

    move v4, v9

    move v3, v10

    move v2, v13

    move/from16 v6, v17

    move/from16 v10, v19

    move/from16 v5, v21

    move v13, v0

    move-object v0, v7

    move-object v7, v8

    goto/16 :goto_0

    :cond_83
    move/from16 v21, v5

    move/from16 v17, v6

    move-object v8, v7

    move-object v7, v0

    move v0, v13

    const v2, 0xfffff

    :goto_4f
    if-eq v6, v2, :cond_84

    int-to-long v9, v6

    .line 341
    invoke-virtual {v11, v8, v9, v10, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_84
    iget v3, v7, Lcom/google/android/gms/internal/measurement/zznk;->zzj:I

    :goto_50
    iget v5, v7, Lcom/google/android/gms/internal/measurement/zznk;->zzk:I

    if-ge v3, v5, :cond_87

    iget-object v5, v7, Lcom/google/android/gms/internal/measurement/zznk;->zzi:[I

    iget-object v6, v7, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    .line 342
    aget v5, v5, v3

    .line 343
    aget v6, v6, v5

    .line 344
    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v6

    and-int/2addr v6, v2

    int-to-long v9, v6

    .line 345
    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_85

    goto :goto_51

    .line 346
    :cond_85
    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzu(I)Lcom/google/android/gms/internal/measurement/zzmg;

    move-result-object v9

    if-nez v9, :cond_86

    .line 347
    :goto_51
    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzof;

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 348
    :cond_86
    check-cast v6, Lcom/google/android/gms/internal/measurement/zznb;

    .line 349
    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 350
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzna;

    .line 351
    throw v16

    :cond_87
    const-string v2, "Failed to parse the message."

    if-nez v0, :cond_89

    move/from16 v3, p4

    if-ne v1, v3, :cond_88

    goto :goto_52

    .line 353
    :cond_88
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 354
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 355
    throw v0

    :cond_89
    move/from16 v3, p4

    if-gt v1, v3, :cond_8a

    if-ne v4, v0, :cond_8a

    :goto_52
    return v1

    :cond_8a
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    .line 356
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Ljava/lang/String;)V

    .line 357
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzg:Lcom/google/android/gms/internal/measurement/zznh;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcj()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzL(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzmd;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcu(I)V

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzmd;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcs()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 10
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    .line 11
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 12
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zznb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zznb;->zzc()V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmj;

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()V

    goto :goto_1

    .line 8
    :cond_2
    aget v2, v0, v1

    .line 9
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzns;->zzf(Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzns;->zzf(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzl:Lcom/google/android/gms/internal/measurement/zzoe;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzoe;->zza(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzm:Lcom/google/android/gms/internal/measurement/zzlq;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlq;->zza(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzA(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result v2

    .line 3
    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzC(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzE(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzC(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzE(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 20
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    .line 21
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zznc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 4
    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmj;

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmj;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v5

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v5

    .line 9
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/measurement/zzmj;->zzd(I)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmj;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 11
    :goto_1
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzr(Ljava/lang/Object;JJ)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 28
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzq(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzr(Ljava/lang/Object;JJ)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 34
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzq(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 37
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzq(Ljava/lang/Object;JI)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 40
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzq(Ljava/lang/Object;JI)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 43
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzB(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 47
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 50
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzm(Ljava/lang/Object;JZ)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 53
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzq(Ljava/lang/Object;JI)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 56
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzr(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 59
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzq(Ljava/lang/Object;JI)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 62
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzr(Ljava/lang/Object;JJ)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 65
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzr(Ljava/lang/Object;JJ)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 68
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzp(Ljava/lang/Object;JF)V

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    goto :goto_2

    .line 71
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzI(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzol;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/zzol;->zzo(Ljava/lang/Object;JD)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzD(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzl:Lcom/google/android/gms/internal/measurement/zzoe;

    .line 74
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznu;->zzp(Lcom/google/android/gms/internal/measurement/zzoe;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzm:Lcom/google/android/gms/internal/measurement/zzlq;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznu;->zzo(Lcom/google/android/gms/internal/measurement/zzlq;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzks;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zznk;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzks;)I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzor;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzoa;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlu;->zze()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v10, v0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    sget-object v12, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    const v13, 0xfffff

    move v0, v13

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_1
    array-length v2, v11

    if-ge v15, v2, :cond_8

    .line 5
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result v3

    .line 6
    aget v5, v11, v15

    const/16 v4, 0x11

    const/4 v14, 0x1

    if-gt v3, v4, :cond_3

    add-int/lit8 v4, v15, 0x2

    .line 7
    aget v4, v11, v4

    and-int v9, v4, v13

    if-eq v9, v0, :cond_2

    if-ne v9, v13, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    int-to-long v0, v9

    .line 8
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_2
    move v1, v0

    move v0, v9

    :cond_2
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v14, v4

    move v9, v0

    move/from16 v16, v1

    move/from16 v17, v4

    goto :goto_3

    :cond_3
    move v9, v0

    move/from16 v16, v1

    const/16 v17, 0x0

    :goto_3
    if-nez v10, :cond_7

    and-int v0, v2, v13

    int-to-long v1, v0

    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_4
    move-object/from16 v18, v11

    goto/16 :goto_7

    .line 117
    :pswitch_0
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    .line 119
    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;)V

    goto :goto_4

    .line 120
    :pswitch_1
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzD(IJ)V

    goto :goto_4

    .line 122
    :pswitch_2
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzB(II)V

    goto :goto_4

    .line 124
    :pswitch_3
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzz(IJ)V

    goto :goto_4

    .line 126
    :pswitch_4
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzx(II)V

    goto :goto_4

    .line 128
    :pswitch_5
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzi(II)V

    goto :goto_4

    .line 130
    :pswitch_6
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzI(II)V

    goto :goto_4

    .line 132
    :pswitch_7
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzld;

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzd(ILcom/google/android/gms/internal/measurement/zzld;)V

    goto :goto_4

    .line 134
    :pswitch_8
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 136
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;)V

    goto/16 :goto_4

    .line 137
    :pswitch_9
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, v8}, Lcom/google/android/gms/internal/measurement/zznk;->zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzor;)V

    goto/16 :goto_4

    .line 139
    :pswitch_a
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzN(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzb(IZ)V

    goto/16 :goto_4

    .line 141
    :pswitch_b
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzk(II)V

    goto/16 :goto_4

    .line 143
    :pswitch_c
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzm(IJ)V

    goto/16 :goto_4

    .line 145
    :pswitch_d
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzo(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzr(II)V

    goto/16 :goto_4

    .line 147
    :pswitch_e
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzK(IJ)V

    goto/16 :goto_4

    .line 149
    :pswitch_f
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzt(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzt(IJ)V

    goto/16 :goto_4

    .line 151
    :pswitch_10
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzn(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzo(IF)V

    goto/16 :goto_4

    .line 153
    :pswitch_11
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzm(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzf(ID)V

    goto/16 :goto_4

    .line 155
    :pswitch_12
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_4

    .line 202
    :cond_5
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 203
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzna;

    const/4 v0, 0x0

    .line 204
    throw v0

    .line 110
    :pswitch_13
    aget v0, v11, v15

    .line 111
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 112
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v2

    .line 113
    sget v3, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    if-eqz v1, :cond_4

    .line 114
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    .line 115
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzll;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzll;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 107
    :pswitch_14
    aget v0, v11, v15

    .line 108
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 109
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 104
    :pswitch_15
    aget v0, v11, v15

    .line 105
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 106
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 101
    :pswitch_16
    aget v0, v11, v15

    .line 102
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 103
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 98
    :pswitch_17
    aget v0, v11, v15

    .line 99
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 100
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 95
    :pswitch_18
    aget v0, v11, v15

    .line 96
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 97
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 92
    :pswitch_19
    aget v0, v11, v15

    .line 93
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 94
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 89
    :pswitch_1a
    aget v0, v11, v15

    .line 90
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 91
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 86
    :pswitch_1b
    aget v0, v11, v15

    .line 87
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 88
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 83
    :pswitch_1c
    aget v0, v11, v15

    .line 84
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 85
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 80
    :pswitch_1d
    aget v0, v11, v15

    .line 81
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 82
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 77
    :pswitch_1e
    aget v0, v11, v15

    .line 78
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 79
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 74
    :pswitch_1f
    aget v0, v11, v15

    .line 75
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 76
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 71
    :pswitch_20
    aget v0, v11, v15

    .line 72
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 73
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 68
    :pswitch_21
    aget v0, v11, v15

    .line 69
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 70
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 65
    :pswitch_22
    aget v0, v11, v15

    .line 66
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    .line 67
    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzB(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v3, 0x0

    .line 62
    aget v0, v11, v15

    .line 63
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 64
    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzA(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v3, 0x0

    .line 59
    aget v0, v11, v15

    .line 60
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 61
    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzz(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v3, 0x0

    .line 56
    aget v0, v11, v15

    .line 57
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 58
    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzy(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v3, 0x0

    .line 53
    aget v0, v11, v15

    .line 54
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 55
    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzs(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v3, 0x0

    .line 50
    aget v0, v11, v15

    .line 51
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 52
    invoke-static {v0, v1, v8, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzC(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    .line 45
    :pswitch_28
    aget v0, v11, v15

    .line 46
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 47
    sget v2, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    if-eqz v1, :cond_4

    .line 48
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 49
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zze(ILjava/util/List;)V

    goto/16 :goto_4

    .line 38
    :pswitch_29
    aget v0, v11, v15

    .line 39
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 40
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v2

    .line 41
    sget v3, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    if-eqz v1, :cond_4

    .line 42
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    .line 43
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 44
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v8

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzll;

    invoke-virtual {v5, v0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzll;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 33
    :pswitch_2a
    aget v0, v11, v15

    .line 34
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 35
    sget v2, Lcom/google/android/gms/internal/measurement/zznu;->zza:I

    if-eqz v1, :cond_4

    .line 36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 37
    invoke-interface {v8, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzH(ILjava/util/List;)V

    goto/16 :goto_4

    .line 30
    :pswitch_2b
    aget v0, v11, v15

    .line 31
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v14, 0x0

    .line 32
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v14, 0x0

    .line 27
    aget v0, v11, v15

    .line 28
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 29
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzt(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v14, 0x0

    .line 24
    aget v0, v11, v15

    .line 25
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 26
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzu(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v14, 0x0

    .line 21
    aget v0, v11, v15

    .line 22
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 23
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzw(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v14, 0x0

    .line 18
    aget v0, v11, v15

    .line 19
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 20
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzD(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v14, 0x0

    .line 15
    aget v0, v11, v15

    .line 16
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 17
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzx(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v14, 0x0

    .line 12
    aget v0, v11, v15

    .line 13
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 14
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzv(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v14, 0x0

    .line 9
    aget v0, v11, v15

    .line 10
    invoke-virtual {v12, v7, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 11
    invoke-static {v0, v1, v8, v14}, Lcom/google/android/gms/internal/measurement/zznu;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/measurement/zzor;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide v3, v1

    move-object/from16 v1, p1

    move v2, v15

    move-wide v13, v3

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v18, v11

    move v11, v5

    move/from16 v5, v17

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    .line 158
    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;)V

    goto/16 :goto_7

    :pswitch_34
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzD(IJ)V

    goto/16 :goto_7

    :pswitch_35
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzB(II)V

    goto/16 :goto_7

    :pswitch_36
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzz(IJ)V

    goto/16 :goto_7

    :pswitch_37
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzx(II)V

    goto/16 :goto_7

    :pswitch_38
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzi(II)V

    goto/16 :goto_7

    :pswitch_39
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzI(II)V

    goto/16 :goto_7

    :pswitch_3a
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzld;

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzd(ILcom/google/android/gms/internal/measurement/zzld;)V

    goto/16 :goto_7

    :pswitch_3b
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 175
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzns;)V

    goto/16 :goto_7

    :pswitch_3c
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 176
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v0, v8}, Lcom/google/android/gms/internal/measurement/zznk;->zzO(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/zzor;)V

    goto/16 :goto_7

    :pswitch_3d
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/measurement/zzol;->zzw(Ljava/lang/Object;J)Z

    move-result v0

    .line 180
    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzb(IZ)V

    goto/16 :goto_7

    :pswitch_3e
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 182
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzk(II)V

    goto/16 :goto_7

    :pswitch_3f
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzm(IJ)V

    goto/16 :goto_7

    :pswitch_40
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 185
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzr(II)V

    goto/16 :goto_7

    :pswitch_41
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzK(IJ)V

    goto/16 :goto_7

    :pswitch_42
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzt(IJ)V

    goto :goto_7

    :pswitch_43
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/measurement/zzol;->zzb(Ljava/lang/Object;J)F

    move-result v0

    .line 193
    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/measurement/zzor;->zzo(IF)V

    goto :goto_7

    :pswitch_44
    move-wide v13, v1

    move-object/from16 v18, v11

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    .line 194
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/measurement/zzol;->zza(Ljava/lang/Object;J)D

    move-result-wide v0

    .line 196
    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/measurement/zzor;->zzf(ID)V

    :cond_6
    :goto_7
    add-int/lit8 v15, v15, 0x3

    move v0, v9

    move/from16 v1, v16

    move-object/from16 v11, v18

    const v13, 0xfffff

    goto/16 :goto_1

    .line 205
    :cond_7
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmb;

    const/4 v0, 0x0

    .line 206
    throw v0

    :cond_8
    const/4 v0, 0x0

    if-nez v10, :cond_9

    .line 197
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 198
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzof;

    .line 199
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/zzof;->zzl(Lcom/google/android/gms/internal/measurement/zzor;)V

    return-void

    .line 200
    :cond_9
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmb;

    .line 201
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzp(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zznu;->zzE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzw(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzb(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zza(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzol;->zza(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 53
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 54
    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmd;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    if-eqz v0, :cond_4

    .line 56
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    .line 57
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    .line 1
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/measurement/zznk;->zzj:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zznk;->zzi:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/zznk;->zzc:[I

    aget v11, v2, v10

    .line 2
    aget v12, v4, v11

    .line 3
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzs(I)I

    move-result v13

    add-int/lit8 v2, v11, 0x2

    .line 4
    aget v2, v4, v2

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/measurement/zznk;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zznk;->zzr(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v13, v9

    int-to-long v0, v0

    .line 13
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/zznb;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzw(I)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzna;

    const/4 v0, 0x0

    .line 22
    throw v0

    .line 16
    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzM(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzns;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_7
    and-int v0, v13, v9

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/zzol;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 9
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v1

    move v2, v8

    .line 10
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/zzns;->zzk(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznk;->zzJ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/measurement/zznk;->zzv(I)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/measurement/zznk;->zzK(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzns;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/zznk;->zzh:Z

    if-eqz v0, :cond_c

    .line 23
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzma;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzma;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlu;->zzh()Z

    move-result v0

    if-nez v0, :cond_c

    return v8

    :cond_c
    return v3

    nop

    .array-data 1
    .end array-data
.end method
