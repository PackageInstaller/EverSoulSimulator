.class final Lcom/google/android/gms/internal/auth/zzga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/auth/zzgi<",
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

.field private final zzg:Lcom/google/android/gms/internal/auth/zzfx;

.field private final zzh:[I

.field private final zzi:I

.field private final zzj:I

.field private final zzk:Lcom/google/android/gms/internal/auth/zzfl;

.field private final zzl:Lcom/google/android/gms/internal/auth/zzgz;

.field private final zzm:Lcom/google/android/gms/internal/auth/zzem;

.field private final zzn:Lcom/google/android/gms/internal/auth/zzgc;

.field private final zzo:Lcom/google/android/gms/internal/auth/zzfs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/auth/zzga;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhj;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfx;IZ[IIILcom/google/android/gms/internal/auth/zzgc;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/auth/zzga;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/auth/zzga;->zzf:I

    iput-object p8, p0, Lcom/google/android/gms/internal/auth/zzga;->zzh:[I

    iput p9, p0, Lcom/google/android/gms/internal/auth/zzga;->zzi:I

    iput p10, p0, Lcom/google/android/gms/internal/auth/zzga;->zzj:I

    iput-object p11, p0, Lcom/google/android/gms/internal/auth/zzga;->zzn:Lcom/google/android/gms/internal/auth/zzgc;

    iput-object p12, p0, Lcom/google/android/gms/internal/auth/zzga;->zzk:Lcom/google/android/gms/internal/auth/zzfl;

    iput-object p13, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    iput-object p14, p0, Lcom/google/android/gms/internal/auth/zzga;->zzm:Lcom/google/android/gms/internal/auth/zzem;

    iput-object p5, p0, Lcom/google/android/gms/internal/auth/zzga;->zzg:Lcom/google/android/gms/internal/auth/zzfx;

    iput-object p15, p0, Lcom/google/android/gms/internal/auth/zzga;->zzo:Lcom/google/android/gms/internal/auth/zzfs;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzA(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzB(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzC(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzA(Ljava/lang/Object;II)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

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

.method private final zzE(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

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
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

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
    instance-of p2, p1, Lcom/google/android/gms/internal/auth/zzef;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

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
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

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

.method private final zzF(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

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

.method private static zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgi;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/auth/zzgi;->zzi(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method private static zzH(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzev;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzev;->zzm()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzI(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

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

.method static zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zzd()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static zzj(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/zzfu;Lcom/google/android/gms/internal/auth/zzgc;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfs;)Lcom/google/android/gms/internal/auth/zzga;
    .locals 30

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzgh;

    if-eqz v1, :cond_36

    check-cast v0, Lcom/google/android/gms/internal/auth/zzgh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zzd()Ljava/lang/String;

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

    sget-object v7, Lcom/google/android/gms/internal/auth/zzga;->zza:[I

    move v11, v3

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    move/from16 v18, v16

    move-object/from16 v17, v7

    move/from16 v7, v18

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

    move-object/from16 v17, v7

    move v13, v9

    move/from16 v18, v14

    move v7, v4

    move v14, v10

    move v4, v15

    .line 6
    :goto_a
    sget-object v9, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zze()[Ljava/lang/Object;

    move-result-object v10

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zza()Lcom/google/android/gms/internal/auth/zzfx;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    add-int v19, v18, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 26
    new-array v11, v11, [I

    .line 27
    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v20, v3

    move/from16 v21, v20

    move/from16 v22, v18

    move/from16 v23, v19

    :goto_b
    if-ge v4, v2, :cond_35

    add-int/lit8 v24, v4, 0x1

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v25, v3, 0x1

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v25

    goto :goto_c

    :cond_15
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v25

    goto :goto_d

    :cond_16
    move/from16 v3, v24

    :goto_d
    add-int/lit8 v24, v3, 0x1

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_18

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v8, v24

    const/16 v24, 0xd

    :goto_e
    add-int/lit8 v25, v8, 0x1

    .line 31
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_17

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v3, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v25

    goto :goto_e

    :cond_17
    shl-int v8, v8, v24

    or-int/2addr v3, v8

    move/from16 v8, v25

    goto :goto_f

    :cond_18
    move/from16 v8, v24

    :goto_f
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_19

    add-int/lit8 v6, v20, 0x1

    .line 32
    aput v21, v17, v20

    move/from16 v20, v6

    :cond_19
    and-int/lit16 v6, v3, 0xff

    const/16 v5, 0x33

    if-lt v6, v5, :cond_22

    add-int/lit8 v5, v8, 0x1

    .line 33
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v8, v2, :cond_1b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v28, 0xd

    :goto_10
    add-int/lit8 v29, v5, 0x1

    .line 34
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v2, :cond_1a

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v28

    or-int/2addr v8, v2

    add-int/lit8 v28, v28, 0xd

    move/from16 v5, v29

    const v2, 0xd800

    goto :goto_10

    :cond_1a
    shl-int v2, v5, v28

    or-int/2addr v8, v2

    move/from16 v5, v29

    :cond_1b
    add-int/lit8 v2, v6, -0x33

    move/from16 v28, v5

    const/16 v5, 0x9

    if-eq v2, v5, :cond_1e

    const/16 v5, 0x11

    if-ne v2, v5, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v5, 0xc

    if-ne v2, v5, :cond_1f

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zzc()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1d

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_1f

    :cond_1d
    div-int/lit8 v2, v21, 0x3

    add-int/2addr v2, v2

    add-int/2addr v2, v5

    add-int/lit8 v5, v16, 0x1

    .line 37
    aget-object v16, v10, v16

    aput-object v16, v12, v2

    goto :goto_12

    .line 34
    :cond_1e
    :goto_11
    div-int/lit8 v2, v21, 0x3

    add-int/2addr v2, v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    add-int/lit8 v5, v16, 0x1

    .line 35
    aget-object v16, v10, v16

    aput-object v16, v12, v2

    :goto_12
    move/from16 v16, v5

    :cond_1f
    add-int/2addr v8, v8

    .line 38
    aget-object v2, v10, v8

    .line 39
    instance-of v5, v2, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_20

    .line 40
    check-cast v2, Ljava/lang/reflect/Field;

    goto :goto_13

    .line 41
    :cond_20
    check-cast v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    aput-object v2, v10, v8

    :goto_13
    move v5, v13

    move/from16 v29, v14

    .line 43
    invoke-virtual {v9, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    add-int/lit8 v8, v8, 0x1

    .line 44
    aget-object v13, v10, v8

    .line 45
    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    .line 46
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_14

    .line 47
    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/auth/zzga;->zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 48
    aput-object v13, v10, v8

    .line 49
    :goto_14
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v8, v13

    move/from16 v27, v5

    move/from16 v24, v8

    move/from16 v25, v28

    const/4 v8, 0x0

    move-object/from16 v28, v1

    goto/16 :goto_1f

    :cond_22
    move/from16 v26, v2

    move v5, v13

    move/from16 v29, v14

    add-int/lit8 v2, v16, 0x1

    .line 50
    aget-object v13, v10, v16

    check-cast v13, Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/auth/zzga;->zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v14, 0x9

    if-eq v6, v14, :cond_2b

    const/16 v14, 0x11

    if-ne v6, v14, :cond_23

    goto/16 :goto_19

    :cond_23
    const/16 v14, 0x1b

    if-eq v6, v14, :cond_2a

    const/16 v14, 0x31

    if-ne v6, v14, :cond_24

    goto :goto_17

    :cond_24
    const/16 v14, 0xc

    if-eq v6, v14, :cond_28

    const/16 v14, 0x1e

    if-eq v6, v14, :cond_28

    const/16 v14, 0x2c

    if-ne v6, v14, :cond_25

    goto :goto_16

    :cond_25
    const/16 v14, 0x32

    if-ne v6, v14, :cond_27

    add-int/lit8 v14, v22, 0x1

    .line 55
    aput v21, v17, v22

    div-int/lit8 v22, v21, 0x3

    add-int/lit8 v27, v2, 0x1

    .line 56
    aget-object v2, v10, v2

    add-int v22, v22, v22

    aput-object v2, v12, v22

    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_26

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v2, v27, 0x1

    .line 57
    aget-object v27, v10, v27

    aput-object v27, v12, v22

    move/from16 v27, v5

    move/from16 v22, v14

    goto :goto_15

    :cond_26
    move/from16 v22, v14

    move/from16 v2, v27

    :cond_27
    move/from16 v27, v5

    :goto_15
    const/4 v5, 0x1

    goto :goto_1a

    .line 53
    :cond_28
    :goto_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zzc()I

    move-result v14

    move/from16 v27, v5

    const/4 v5, 0x1

    if-eq v14, v5, :cond_29

    and-int/lit16 v14, v3, 0x800

    if-eqz v14, :cond_2c

    :cond_29
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    add-int/lit8 v24, v2, 0x1

    .line 54
    aget-object v2, v10, v2

    aput-object v2, v12, v14

    goto :goto_18

    :cond_2a
    :goto_17
    move/from16 v27, v5

    const/4 v5, 0x1

    .line 65
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    add-int/lit8 v24, v2, 0x1

    .line 52
    aget-object v2, v10, v2

    aput-object v2, v12, v14

    :goto_18
    move/from16 v2, v24

    goto :goto_1a

    :cond_2b
    :goto_19
    move/from16 v27, v5

    const/4 v5, 0x1

    .line 50
    div-int/lit8 v14, v21, 0x3

    add-int/2addr v14, v14

    add-int/2addr v14, v5

    .line 51
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v12, v14

    .line 58
    :cond_2c
    :goto_1a
    invoke-virtual {v9, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    and-int/lit16 v14, v3, 0x1000

    const v24, 0xfffff

    if-eqz v14, :cond_30

    const/16 v14, 0x11

    if-gt v6, v14, :cond_30

    add-int/lit8 v14, v8, 0x1

    .line 59
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v5, 0xd800

    if-lt v8, v5, :cond_2e

    and-int/lit16 v8, v8, 0x1fff

    const/16 v24, 0xd

    :goto_1b
    add-int/lit8 v25, v14, 0x1

    .line 60
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_2d

    and-int/lit16 v14, v14, 0x1fff

    shl-int v14, v14, v24

    or-int/2addr v8, v14

    add-int/lit8 v24, v24, 0xd

    move/from16 v14, v25

    goto :goto_1b

    :cond_2d
    shl-int v14, v14, v24

    or-int/2addr v8, v14

    goto :goto_1c

    :cond_2e
    move/from16 v25, v14

    :goto_1c
    add-int v14, v7, v7

    div-int/lit8 v24, v8, 0x20

    add-int v14, v14, v24

    .line 61
    aget-object v5, v10, v14

    move-object/from16 v28, v1

    .line 62
    instance-of v1, v5, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2f

    .line 63
    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_1d

    .line 64
    :cond_2f
    check-cast v5, Ljava/lang/String;

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/auth/zzga;->zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 65
    aput-object v5, v10, v14

    :goto_1d
    move v14, v2

    .line 66
    invoke-virtual {v9, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v8, v8, 0x20

    move/from16 v24, v1

    goto :goto_1e

    :cond_30
    move-object/from16 v28, v1

    move v14, v2

    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_1e
    const/16 v1, 0x12

    if-lt v6, v1, :cond_31

    const/16 v1, 0x31

    if-gt v6, v1, :cond_31

    add-int/lit8 v1, v23, 0x1

    .line 67
    aput v13, v17, v23

    move/from16 v23, v1

    :cond_31
    move v2, v13

    move/from16 v16, v14

    :goto_1f
    add-int/lit8 v1, v21, 0x1

    .line 68
    aput v4, v11, v21

    add-int/lit8 v4, v1, 0x1

    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_32

    const/high16 v5, 0x20000000

    goto :goto_20

    :cond_32
    const/4 v5, 0x0

    :goto_20
    and-int/lit16 v13, v3, 0x100

    if-eqz v13, :cond_33

    const/high16 v13, 0x10000000

    goto :goto_21

    :cond_33
    const/4 v13, 0x0

    :goto_21
    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_34

    const/high16 v3, -0x80000000

    goto :goto_22

    :cond_34
    const/4 v3, 0x0

    :goto_22
    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v5, v13

    or-int/2addr v3, v5

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    .line 69
    aput v2, v11, v1

    add-int/lit8 v21, v4, 0x1

    shl-int/lit8 v1, v8, 0x14

    or-int v1, v1, v24

    .line 70
    aput v1, v11, v4

    move/from16 v4, v25

    move/from16 v2, v26

    move/from16 v13, v27

    move-object/from16 v1, v28

    move/from16 v14, v29

    const/4 v3, 0x0

    const v5, 0xd800

    goto/16 :goto_b

    :cond_35
    move/from16 v27, v13

    move/from16 v29, v14

    .line 57
    new-instance v1, Lcom/google/android/gms/internal/auth/zzga;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zza()Lcom/google/android/gms/internal/auth/zzfx;

    move-result-object v14

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zzc()I

    move-result v15

    const/16 v16, 0x0

    move-object v9, v1

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v27

    move/from16 v13, v29

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/auth/zzga;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfx;IZ[IIILcom/google/android/gms/internal/auth/zzgc;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfs;)V

    return-object v1

    .line 73
    :cond_36
    check-cast v0, Lcom/google/android/gms/internal/auth/zzgw;

    const/4 v0, 0x0

    .line 74
    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzk(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzl(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzm(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzn(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzo(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzp(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzq(I)Lcom/google/android/gms/internal/auth/zzey;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzey;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final zzr(I)Lcom/google/android/gms/internal/auth/zzgi;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/zzgi;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgf;->zza()Lcom/google/android/gms/internal/auth/zzgf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzgf;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzs(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final zzt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method private final zzu(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method private static zzv(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method private static zzw(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

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

.method private final zzx(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 4
    aget p3, v0, p3

    .line 5
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

.method private final zzy(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    aget v0, v0, p3

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object v5

    .line 12
    invoke-interface {p2, v5, v1}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/auth/zzga;->zzA(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v2, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/internal/auth/zzgi;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

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

.method private final zzz(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 2
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v3

    int-to-long v5, v5

    const/16 v7, 0x25

    const/16 v8, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 7
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_2

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzfa;->zza(Z)I

    move-result v3

    goto/16 :goto_3

    .line 28
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 30
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_2

    .line 32
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 34
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_2

    .line 36
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzga;->zzp(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_2

    .line 38
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_3

    .line 41
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 46
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 53
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 55
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzfa;->zza(Z)I

    move-result v3

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 64
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 65
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 66
    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    :goto_2
    ushr-long v5, v3, v8

    xor-long/2addr v3, v5

    long-to-int v3, v3

    :goto_3
    add-int/2addr v2, v3

    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 67
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    return v2

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

.method final zzb(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I
    .locals 39
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
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzga;->zzw(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move/from16 v1, p3

    move v3, v10

    move v4, v3

    move v5, v4

    const/4 v2, -0x1

    const v6, 0xfffff

    :goto_0
    const/16 v16, 0x0

    if-ge v1, v14, :cond_79

    add-int/lit8 v4, v1, 0x1

    .line 2
    aget-byte v1, v15, v1

    if-gez v1, :cond_0

    .line 3
    invoke-static {v1, v15, v4, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzi(I[BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v4, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    goto :goto_1

    :cond_0
    move/from16 v37, v4

    move v4, v1

    move/from16 v1, v37

    :goto_1
    ushr-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-le v8, v2, :cond_2

    div-int/2addr v3, v9

    iget v2, v0, Lcom/google/android/gms/internal/auth/zzga;->zze:I

    if-lt v8, v2, :cond_1

    iget v2, v0, Lcom/google/android/gms/internal/auth/zzga;->zzf:I

    if-gt v8, v2, :cond_1

    .line 5
    invoke-direct {v0, v8, v3}, Lcom/google/android/gms/internal/auth/zzga;->zzm(II)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    .line 244
    :cond_2
    iget v2, v0, Lcom/google/android/gms/internal/auth/zzga;->zze:I

    if-lt v8, v2, :cond_3

    iget v2, v0, Lcom/google/android/gms/internal/auth/zzga;->zzf:I

    if-gt v8, v2, :cond_3

    .line 4
    invoke-direct {v0, v8, v10}, Lcom/google/android/gms/internal/auth/zzga;->zzm(II)I

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

    move/from16 v25, v5

    move/from16 v28, v6

    move v1, v8

    move/from16 v19, v10

    move-object/from16 v26, v11

    move-object v5, v12

    move v8, v13

    move v6, v14

    goto/16 :goto_4a

    :cond_4
    and-int/lit8 v2, v4, 0x7

    .line 294
    iget-object v9, v0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    add-int/lit8 v19, v3, 0x1

    .line 6
    aget v10, v9, v19

    move/from16 v19, v4

    invoke-static {v10}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v4

    const v17, 0xfffff

    and-int v13, v10, v17

    int-to-long v13, v13

    move/from16 v21, v8

    const/high16 v22, 0x20000000

    const-wide/16 v23, 0x0

    const-string v8, ""

    move-object/from16 v26, v8

    const/16 v8, 0x11

    if-gt v4, v8, :cond_1e

    add-int/lit8 v8, v3, 0x2

    .line 7
    aget v8, v9, v8

    ushr-int/lit8 v9, v8, 0x14

    const/16 v25, 0x1

    shl-int v27, v25, v9

    const v9, 0xfffff

    and-int/2addr v8, v9

    move/from16 v17, v10

    if-eq v8, v6, :cond_7

    if-eq v6, v9, :cond_5

    int-to-long v9, v6

    .line 8
    invoke-virtual {v11, v7, v9, v10, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v9, 0xfffff

    :cond_5
    if-ne v8, v9, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    int-to-long v5, v8

    .line 9
    invoke-virtual {v11, v7, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    :goto_4
    move/from16 v25, v5

    move/from16 v28, v8

    goto :goto_5

    :cond_7
    move/from16 v25, v5

    move/from16 v28, v6

    :goto_5
    packed-switch v4, :pswitch_data_0

    move v10, v3

    move/from16 v9, v19

    const/4 v3, 0x3

    const/4 v8, 0x0

    if-ne v2, v3, :cond_1d

    .line 10
    invoke-direct {v0, v7, v10}, Lcom/google/android/gms/internal/auth/zzga;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    shl-int/lit8 v3, v21, 0x3

    or-int/lit8 v13, v3, 0x4

    .line 11
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v3

    move v5, v8

    move/from16 v4, v21

    const v6, 0xfffff

    move-object v8, v2

    move v14, v9

    const/16 v18, -0x1

    move-object v9, v3

    move/from16 v19, v5

    move v3, v10

    move-object/from16 v10, p2

    move-object v5, v11

    move v11, v1

    move-object v1, v12

    move/from16 v12, p4

    move/from16 v6, p4

    move/from16 v20, v14

    move-object/from16 v14, p6

    .line 12
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/auth/zzdu;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    .line 13
    invoke-direct {v0, v7, v3, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzB(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v2, v25, v27

    move/from16 v13, p5

    move-object v12, v1

    move-object v11, v5

    move v14, v6

    move v1, v8

    move/from16 v10, v19

    move/from16 v6, v28

    move v5, v2

    move v2, v4

    move/from16 v4, v20

    goto/16 :goto_0

    :pswitch_0
    if-nez v2, :cond_8

    .line 14
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    iget-wide v1, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v5

    move-object v1, v11

    const/4 v10, -0x1

    move-object/from16 v2, p1

    move v10, v3

    move/from16 v9, v19

    move-wide v3, v13

    .line 16
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v25, v27

    move/from16 v14, p4

    move/from16 v13, p5

    move v1, v8

    goto/16 :goto_8

    :cond_8
    move/from16 v9, v19

    move/from16 v6, p4

    move/from16 v20, v9

    goto/16 :goto_f

    :pswitch_1
    move v10, v3

    move/from16 v9, v19

    if-nez v2, :cond_b

    .line 17
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v2

    .line 19
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_2
    move v10, v3

    move/from16 v9, v19

    if-nez v2, :cond_b

    .line 20
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 21
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->zzq(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v3

    const/high16 v4, -0x80000000

    and-int v4, v17, v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    .line 22
    invoke-interface {v3}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    .line 24
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzga;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Lcom/google/android/gms/internal/auth/zzha;->zzh(ILjava/lang/Object;)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v9

    move v3, v10

    move/from16 v2, v21

    move/from16 v5, v25

    goto :goto_9

    .line 23
    :cond_a
    :goto_6
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move v10, v3

    move/from16 v9, v19

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 25
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zza([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 26
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move v10, v3

    move/from16 v9, v19

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 27
    invoke-direct {v0, v7, v10}, Lcom/google/android/gms/internal/auth/zzga;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 28
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move v5, v1

    move-object v1, v8

    move-object/from16 v3, p2

    move v4, v5

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    .line 30
    invoke-direct {v0, v7, v10, v8}, Lcom/google/android/gms/internal/auth/zzga;->zzB(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_7
    or-int v5, v25, v27

    move/from16 v14, p4

    move/from16 v13, p5

    :goto_8
    move v4, v9

    move v3, v10

    move/from16 v2, v21

    :goto_9
    move/from16 v6, v28

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_b
    move/from16 v6, p4

    goto/16 :goto_e

    :pswitch_5
    move v5, v1

    move v10, v3

    move/from16 v9, v19

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1a

    and-int v1, v17, v22

    if-eqz v1, :cond_17

    .line 31
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v2, :cond_16

    if-nez v2, :cond_c

    move-object/from16 v3, v26

    .line 250
    iput-object v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    const/4 v8, 0x0

    goto/16 :goto_d

    .line 32
    :cond_c
    sget v3, Lcom/google/android/gms/internal/auth/zzhn;->zza:I

    .line 33
    array-length v3, v15

    sub-int v4, v3, v1

    or-int v5, v1, v2

    sub-int/2addr v4, v2

    or-int/2addr v4, v5

    if-ltz v4, :cond_15

    add-int v3, v1, v2

    .line 251
    new-array v2, v2, [C

    const/4 v4, 0x0

    :goto_a
    if-ge v1, v3, :cond_d

    .line 34
    aget-byte v5, v15, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/auth/zzhk;->zzd(B)Z

    move-result v6

    if-eqz v6, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 35
    aput-char v5, v2, v4

    move v4, v6

    goto :goto_a

    :cond_d
    :goto_b
    if-ge v1, v3, :cond_14

    add-int/lit8 v5, v1, 0x1

    .line 36
    aget-byte v1, v15, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzhk;->zzd(B)Z

    move-result v6

    if-eqz v6, :cond_e

    add-int/lit8 v6, v4, 0x1

    int-to-char v1, v1

    .line 40
    aput-char v1, v2, v4

    move v1, v5

    :goto_c
    move v4, v6

    if-ge v1, v3, :cond_d

    .line 41
    aget-byte v5, v15, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/auth/zzhk;->zzd(B)Z

    move-result v6

    if-eqz v6, :cond_d

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 42
    aput-char v5, v2, v4

    goto :goto_c

    :cond_e
    const/16 v6, -0x20

    if-ge v1, v6, :cond_10

    if-ge v5, v3, :cond_f

    add-int/lit8 v6, v5, 0x1

    .line 39
    aget-byte v5, v15, v5

    add-int/lit8 v8, v4, 0x1

    invoke-static {v1, v5, v2, v4}, Lcom/google/android/gms/internal/auth/zzhk;->zzc(BB[CI)V

    move v1, v6

    move v4, v8

    goto :goto_b

    .line 254
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_10
    const/16 v6, -0x10

    if-ge v1, v6, :cond_12

    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_11

    add-int/lit8 v6, v5, 0x1

    .line 38
    aget-byte v5, v15, v5

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v15, v6

    add-int/lit8 v16, v4, 0x1

    invoke-static {v1, v5, v6, v2, v4}, Lcom/google/android/gms/internal/auth/zzhk;->zzb(BBB[CI)V

    move v1, v8

    move/from16 v4, v16

    goto :goto_b

    .line 253
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_12
    add-int/lit8 v6, v3, -0x2

    if-ge v5, v6, :cond_13

    add-int/lit8 v6, v5, 0x1

    .line 37
    aget-byte v30, v15, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v31, v15, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v32, v15, v5

    move/from16 v29, v1

    move-object/from16 v33, v2

    move/from16 v34, v4

    invoke-static/range {v29 .. v34}, Lcom/google/android/gms/internal/auth/zzhk;->zza(BBBB[CI)V

    add-int/lit8 v4, v4, 0x2

    move v1, v6

    goto :goto_b

    .line 252
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 37
    :cond_14
    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v1, v2, v8, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    move v1, v3

    goto :goto_d

    :cond_15
    const/4 v8, 0x0

    .line 33
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 250
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_17
    move-object/from16 v3, v26

    const/4 v8, 0x0

    .line 43
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v2, :cond_19

    if-nez v2, :cond_18

    .line 255
    iput-object v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    goto :goto_d

    :cond_18
    new-instance v3, Ljava/lang/String;

    .line 44
    sget-object v4, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v3, v15, v1, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    add-int/2addr v1, v2

    .line 250
    :goto_d
    iget-object v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 45
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_11

    .line 255
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_1a
    move/from16 v6, p4

    move v1, v5

    :goto_e
    move/from16 v20, v9

    move v3, v10

    :goto_f
    move-object v5, v11

    move/from16 v4, v21

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_14

    :pswitch_6
    move v5, v1

    move v10, v3

    move/from16 v9, v19

    const/4 v8, 0x0

    if-nez v2, :cond_1c

    .line 46
    invoke-static {v15, v5, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v2, v2, v23

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_10

    :cond_1b
    move v2, v8

    .line 47
    :goto_10
    invoke-static {v7, v13, v14, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzk(Ljava/lang/Object;JZ)V

    goto/16 :goto_11

    :pswitch_7
    move v5, v1

    move v10, v3

    move/from16 v9, v19

    const/4 v1, 0x5

    const/4 v8, 0x0

    if-ne v2, v1, :cond_1c

    .line 48
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v5, 0x4

    goto/16 :goto_11

    :pswitch_8
    move v5, v1

    move v10, v3

    move/from16 v9, v19

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-ne v2, v1, :cond_1c

    .line 49
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v16

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide v3, v13

    move v13, v5

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v1, v13, 0x8

    goto/16 :goto_11

    :cond_1c
    move/from16 v6, p4

    move v1, v5

    goto/16 :goto_13

    :pswitch_9
    move v10, v3

    move/from16 v9, v19

    const/4 v8, 0x0

    if-nez v2, :cond_1d

    .line 50
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 51
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_11

    :pswitch_a
    move v10, v3

    move/from16 v9, v19

    const/4 v8, 0x0

    if-nez v2, :cond_1d

    .line 52
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v16

    iget-wide v5, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    move-object v1, v11

    move-object/from16 v2, p1

    move-wide v3, v13

    .line 53
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v25, v27

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v9

    move v3, v10

    move/from16 v1, v16

    goto :goto_12

    :pswitch_b
    move v10, v3

    move/from16 v9, v19

    const/4 v3, 0x5

    const/4 v8, 0x0

    if-ne v2, v3, :cond_1d

    .line 54
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 55
    invoke-static {v7, v13, v14, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzm(Ljava/lang/Object;JF)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_11

    :pswitch_c
    move v10, v3

    move/from16 v9, v19

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_1d

    .line 56
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 57
    invoke-static {v7, v13, v14, v2, v3}, Lcom/google/android/gms/internal/auth/zzhj;->zzl(Ljava/lang/Object;JD)V

    add-int/lit8 v1, v1, 0x8

    :goto_11
    or-int v5, v25, v27

    move/from16 v14, p4

    move/from16 v13, p5

    move v4, v9

    move v3, v10

    :goto_12
    move/from16 v2, v21

    move/from16 v6, v28

    move v10, v8

    goto/16 :goto_0

    :cond_1d
    move/from16 v6, p4

    :goto_13
    move/from16 v19, v8

    move/from16 v20, v9

    move v3, v10

    move-object v5, v11

    move/from16 v4, v21

    const/16 v18, -0x1

    :goto_14
    move/from16 v8, p5

    move v10, v3

    move-object/from16 v26, v5

    move-object v5, v12

    move v3, v1

    move v1, v4

    :goto_15
    move/from16 v4, v20

    goto/16 :goto_4a

    :cond_1e
    move v8, v3

    move/from16 v28, v6

    move/from16 v17, v10

    move/from16 v20, v19

    move/from16 v10, v21

    move-object/from16 v3, v26

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v6, p4

    move/from16 v21, v5

    const/16 v5, 0x1b

    const/16 v25, 0xa

    if-ne v4, v5, :cond_22

    const/4 v5, 0x2

    if-ne v2, v5, :cond_21

    .line 58
    invoke-virtual {v11, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/auth/zzez;

    .line 59
    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v3

    if-nez v3, :cond_20

    .line 60
    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/zzez;->size()I

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_16

    :cond_1f
    add-int v25, v3, v3

    :goto_16
    move/from16 v3, v25

    .line 61
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/zzez;->zzd(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v2

    .line 62
    invoke-virtual {v11, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_20
    move-object v13, v2

    .line 63
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move v5, v8

    move-object v8, v2

    move/from16 v9, v20

    move v2, v10

    move-object/from16 v10, p2

    move-object v3, v11

    move v11, v1

    move-object v4, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    .line 64
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/auth/zzdu;->zze(Lcom/google/android/gms/internal/auth/zzgi;I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    move/from16 v13, p5

    move-object v11, v3

    move-object v12, v4

    move v3, v5

    move v14, v6

    move/from16 v10, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v28

    goto/16 :goto_0

    :cond_21
    move v3, v10

    move-object/from16 v26, v11

    move/from16 v5, v20

    move/from16 v25, v21

    move v11, v1

    move v1, v8

    goto/16 :goto_40

    :cond_22
    move v5, v8

    const/16 v8, 0x31

    if-gt v4, v8, :cond_66

    move/from16 v8, v17

    int-to-long v8, v8

    move/from16 v17, v5

    sget-object v5, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 65
    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v26, v11

    move-object/from16 v11, v22

    check-cast v11, Lcom/google/android/gms/internal/auth/zzez;

    .line 66
    invoke-interface {v11}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v22

    if-nez v22, :cond_24

    .line 67
    invoke-interface {v11}, Lcom/google/android/gms/internal/auth/zzez;->size()I

    move-result v22

    if-nez v22, :cond_23

    goto :goto_17

    :cond_23
    add-int v25, v22, v22

    :goto_17
    move-object/from16 v27, v3

    move/from16 v3, v25

    .line 68
    invoke-interface {v11, v3}, Lcom/google/android/gms/internal/auth/zzez;->zzd(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v3

    .line 69
    invoke-virtual {v5, v7, v13, v14, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v13, v3

    goto :goto_18

    :cond_24
    move-object/from16 v27, v3

    move-object v13, v11

    :goto_18
    packed-switch v4, :pswitch_data_1

    move v11, v1

    move v14, v6

    move v9, v10

    move/from16 v10, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v8, v26

    const/4 v1, 0x3

    if-ne v2, v1, :cond_63

    .line 70
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v17

    and-int/lit8 v1, v7, -0x8

    or-int/lit8 v20, v1, 0x4

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v5, v20

    move-object/from16 v6, p6

    .line 71
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzc(Lcom/google/android/gms/internal/auth/zzgi;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 72
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    :pswitch_d
    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    .line 76
    check-cast v13, Lcom/google/android/gms/internal/auth/zzfm;

    .line 77
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v3, v2

    :goto_19
    if-ge v2, v3, :cond_25

    .line 78
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v4, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 79
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    goto :goto_19

    :cond_25
    if-ne v2, v3, :cond_26

    move v11, v1

    move v1, v2

    move v14, v6

    move v9, v10

    move/from16 v10, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v8, v26

    goto/16 :goto_3f

    .line 256
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_27
    if-nez v2, :cond_29

    .line 80
    check-cast v13, Lcom/google/android/gms/internal/auth/zzfm;

    .line 81
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 82
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    :goto_1a
    if-ge v2, v6, :cond_28

    .line 83
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    move/from16 v14, v20

    if-ne v14, v4, :cond_2d

    .line 84
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v3

    .line 85
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    move/from16 v20, v14

    goto :goto_1a

    :cond_28
    move/from16 v14, v20

    goto :goto_1d

    :cond_29
    move v11, v1

    move v14, v6

    move v9, v10

    move/from16 v10, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v8, v26

    goto/16 :goto_3e

    :pswitch_e
    move/from16 v14, v20

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 86
    check-cast v13, Lcom/google/android/gms/internal/auth/zzew;

    .line 87
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v3, v2

    :goto_1b
    if-ge v2, v3, :cond_2a

    .line 88
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v4, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 89
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    goto :goto_1b

    :cond_2a
    if-ne v2, v3, :cond_2b

    goto :goto_1d

    .line 257
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_2c
    if-nez v2, :cond_2e

    .line 90
    check-cast v13, Lcom/google/android/gms/internal/auth/zzew;

    .line 91
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 92
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    :goto_1c
    if-ge v2, v6, :cond_2d

    .line 93
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v4, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v14, v4, :cond_2d

    .line 94
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v3

    .line 95
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    goto :goto_1c

    :cond_2d
    :goto_1d
    move v11, v1

    move v1, v2

    move v9, v10

    move v7, v14

    move/from16 v10, v17

    move/from16 v25, v21

    move-object/from16 v8, v26

    goto/16 :goto_36

    :cond_2e
    move v11, v1

    move v9, v10

    move v7, v14

    move/from16 v10, v17

    move/from16 v25, v21

    goto/16 :goto_24

    :pswitch_f
    move/from16 v14, v20

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 96
    invoke-static {v15, v1, v13, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzf([BILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    move v11, v1

    move v8, v6

    move/from16 v9, v17

    move/from16 v25, v21

    goto :goto_1e

    :cond_2f
    if-nez v2, :cond_37

    move v11, v1

    move v1, v14

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v9, v17

    move/from16 v25, v21

    move-object v5, v13

    move v8, v6

    move-object/from16 v6, p6

    .line 97
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzj(I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    .line 98
    :goto_1e
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzq(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 99
    sget v4, Lcom/google/android/gms/internal/auth/zzgk;->zza:I

    if-eqz v1, :cond_35

    .line 100
    instance-of v4, v13, Ljava/util/RandomAccess;

    if-eqz v4, :cond_33

    .line 101
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move/from16 p3, v2

    move-object/from16 v2, v16

    move/from16 v5, v19

    move v6, v5

    :goto_1f
    if-ge v5, v4, :cond_32

    .line 102
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v17

    if-eqz v17, :cond_31

    if-eq v5, v6, :cond_30

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 105
    :cond_31
    invoke-static {v7, v10, v0, v2, v3}, Lcom/google/android/gms/internal/auth/zzgk;->zzc(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/auth/zzgz;)Ljava/lang/Object;

    move-result-object v2

    :goto_20
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_1f

    :cond_32
    if-eq v6, v4, :cond_36

    .line 106
    invoke-interface {v13, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_22

    :cond_33
    move/from16 p3, v2

    .line 107
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v16

    :cond_34
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 109
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v5

    if-nez v5, :cond_34

    .line 110
    invoke-static {v7, v10, v4, v2, v3}, Lcom/google/android/gms/internal/auth/zzgk;->zzc(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/auth/zzgz;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    :cond_35
    move/from16 p3, v2

    :cond_36
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v7, v14

    :goto_23
    move v14, v8

    move-object/from16 v8, v26

    move/from16 v37, v10

    move v10, v9

    move/from16 v9, v37

    goto/16 :goto_3f

    :cond_37
    move/from16 v25, v21

    move-object/from16 v0, p0

    move v11, v1

    move v9, v10

    move v7, v14

    move/from16 v10, v17

    :goto_24
    move-object/from16 v8, v26

    goto/16 :goto_2b

    :pswitch_10
    move v11, v1

    move v8, v6

    move/from16 v9, v17

    move/from16 v14, v20

    move/from16 v25, v21

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3f

    .line 112
    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v1, :cond_3e

    .line 113
    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_3d

    if-nez v1, :cond_38

    .line 114
    sget-object v1, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 115
    :cond_38
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/auth/zzef;->zzk([BII)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/2addr v0, v1

    :goto_26
    if-ge v0, v8, :cond_3c

    .line 116
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v14, v2, :cond_3c

    .line 117
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v1, :cond_3b

    .line 118
    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_3a

    if-nez v1, :cond_39

    .line 261
    sget-object v1, Lcom/google/android/gms/internal/auth/zzef;->zzb:Lcom/google/android/gms/internal/auth/zzef;

    .line 119
    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 120
    :cond_39
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/auth/zzef;->zzk([BII)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v2

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 261
    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    .line 260
    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :cond_3c
    move v1, v0

    move v7, v14

    move-object/from16 v0, p0

    goto :goto_23

    .line 259
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    .line 258
    :cond_3e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    :pswitch_11
    move v11, v1

    move v8, v6

    move/from16 v9, v17

    move/from16 v14, v20

    move/from16 v25, v21

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3f

    move-object/from16 v0, p0

    .line 121
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v1

    move v6, v8

    move-object v8, v1

    move v5, v9

    move v9, v14

    move v4, v10

    move-object/from16 v10, p2

    move v1, v11

    move-object/from16 v3, v26

    move-object v2, v12

    move/from16 v12, p4

    move v7, v14

    move-object/from16 v14, p6

    .line 122
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/auth/zzdu;->zze(Lcom/google/android/gms/internal/auth/zzgi;I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    move-object v12, v2

    move v9, v4

    move v10, v5

    move v14, v6

    move v1, v8

    move-object v8, v3

    goto/16 :goto_3f

    :cond_3f
    move-object/from16 v0, p0

    move v7, v14

    move v14, v8

    move-object/from16 v8, v26

    move/from16 v37, v10

    move v10, v9

    move/from16 v9, v37

    goto/16 :goto_3e

    :pswitch_12
    move v4, v10

    move/from16 v5, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v3, v26

    const/4 v10, 0x2

    if-ne v2, v10, :cond_4b

    const-wide/32 v10, 0x20000000

    and-long/2addr v8, v10

    cmp-long v2, v8, v23

    if-nez v2, :cond_44

    .line 134
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v8, :cond_43

    if-nez v8, :cond_40

    move-object/from16 v10, v27

    .line 135
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_40
    move-object/from16 v10, v27

    .line 142
    new-instance v9, Ljava/lang/String;

    .line 136
    sget-object v11, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v2, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 137
    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/2addr v2, v8

    :goto_28
    if-ge v2, v6, :cond_58

    .line 138
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v9, :cond_58

    .line 139
    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v8, :cond_42

    if-nez v8, :cond_41

    .line 140
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_41
    new-instance v9, Ljava/lang/String;

    .line 141
    sget-object v11, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v2, v8, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 142
    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 267
    :cond_42
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 266
    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_44
    move-object/from16 v10, v27

    .line 123
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v8, :cond_4a

    if-nez v8, :cond_45

    .line 124
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_45
    add-int v9, v2, v8

    .line 125
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/auth/zzhn;->zzc([BII)Z

    move-result v11

    if-eqz v11, :cond_49

    .line 263
    new-instance v11, Ljava/lang/String;

    .line 126
    sget-object v14, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v2, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 127
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    :goto_29
    move v2, v9

    :goto_2a
    if-ge v2, v6, :cond_58

    .line 128
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v9, :cond_58

    .line 129
    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ltz v8, :cond_48

    if-nez v8, :cond_46

    .line 130
    invoke-interface {v13, v10}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_46
    add-int v9, v2, v8

    .line 131
    invoke-static {v15, v2, v9}, Lcom/google/android/gms/internal/auth/zzhn;->zzc([BII)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 265
    new-instance v11, Ljava/lang/String;

    .line 132
    sget-object v14, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v2, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 133
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 265
    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 264
    :cond_48
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 263
    :cond_49
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 262
    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzc()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_4b
    move v11, v1

    move-object v8, v3

    move v9, v4

    move v10, v5

    :goto_2b
    move v14, v6

    goto/16 :goto_3e

    :pswitch_13
    move v4, v10

    move/from16 v5, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v3, v26

    const/4 v8, 0x2

    if-ne v2, v8, :cond_4f

    .line 143
    check-cast v13, Lcom/google/android/gms/internal/auth/zzdv;

    .line 144
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v8, v2

    :goto_2c
    if-ge v2, v8, :cond_4d

    .line 145
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v9, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v9, v9, v23

    if-eqz v9, :cond_4c

    const/4 v10, 0x1

    goto :goto_2d

    :cond_4c
    move/from16 v10, v19

    .line 146
    :goto_2d
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/auth/zzdv;->zze(Z)V

    goto :goto_2c

    :cond_4d
    if-ne v2, v8, :cond_4e

    goto/16 :goto_35

    .line 268
    :cond_4e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_4f
    if-nez v2, :cond_4b

    .line 147
    check-cast v13, Lcom/google/android/gms/internal/auth/zzdv;

    .line 148
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v8, v8, v23

    if-eqz v8, :cond_50

    const/4 v10, 0x1

    goto :goto_2e

    :cond_50
    move/from16 v10, v19

    .line 149
    :goto_2e
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/auth/zzdv;->zze(Z)V

    :goto_2f
    if-ge v2, v6, :cond_58

    .line 150
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v9, :cond_58

    .line 151
    invoke-static {v15, v8, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v8, v8, v23

    if-eqz v8, :cond_51

    const/4 v10, 0x1

    goto :goto_30

    :cond_51
    move/from16 v10, v19

    .line 152
    :goto_30
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/auth/zzdv;->zze(Z)V

    goto :goto_2f

    :pswitch_14
    move v4, v10

    move/from16 v5, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v3, v26

    const/4 v8, 0x2

    if-ne v2, v8, :cond_54

    .line 153
    check-cast v13, Lcom/google/android/gms/internal/auth/zzew;

    .line 154
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v8, v2

    :goto_31
    if-ge v2, v8, :cond_52

    .line 155
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v9

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_31

    :cond_52
    if-ne v2, v8, :cond_53

    goto/16 :goto_35

    .line 269
    :cond_53
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_54
    const/4 v8, 0x5

    if-ne v2, v8, :cond_4b

    .line 156
    check-cast v13, Lcom/google/android/gms/internal/auth/zzew;

    .line 157
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    add-int/lit8 v2, v1, 0x4

    :goto_32
    if-ge v2, v6, :cond_58

    .line 158
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v9, :cond_58

    .line 159
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/auth/zzew;->zze(I)V

    add-int/lit8 v2, v8, 0x4

    goto :goto_32

    :pswitch_15
    move v4, v10

    move/from16 v5, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v3, v26

    const/4 v8, 0x2

    if-ne v2, v8, :cond_57

    .line 160
    check-cast v13, Lcom/google/android/gms/internal/auth/zzfm;

    .line 161
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v8, v2

    :goto_33
    if-ge v2, v8, :cond_55

    .line 162
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_33

    :cond_55
    if-ne v2, v8, :cond_56

    goto :goto_35

    .line 270
    :cond_56
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_57
    const/4 v8, 0x1

    if-ne v2, v8, :cond_4b

    .line 163
    check-cast v13, Lcom/google/android/gms/internal/auth/zzfm;

    .line 164
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    add-int/lit8 v2, v1, 0x8

    :goto_34
    if-ge v2, v6, :cond_58

    .line 165
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    iget v9, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v9, :cond_58

    .line 166
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    add-int/lit8 v2, v8, 0x8

    goto :goto_34

    :pswitch_16
    move v4, v10

    move/from16 v5, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v3, v26

    const/4 v8, 0x2

    if-ne v2, v8, :cond_59

    .line 167
    invoke-static {v15, v1, v13, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzf([BILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    :cond_58
    :goto_35
    move v11, v1

    move v1, v2

    move-object v8, v3

    move v9, v4

    move v10, v5

    :goto_36
    move v14, v6

    goto/16 :goto_3f

    :cond_59
    if-nez v2, :cond_4b

    move v11, v1

    move v1, v7

    move-object/from16 v2, p2

    move-object v8, v3

    move v3, v11

    move v9, v4

    move/from16 v4, p4

    move v10, v5

    move-object v5, v13

    move v14, v6

    move-object/from16 v6, p6

    .line 168
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzj(I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    goto/16 :goto_3f

    :pswitch_17
    move v11, v1

    move v14, v6

    move v9, v10

    move/from16 v10, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v8, v26

    const/4 v1, 0x2

    if-ne v2, v1, :cond_5c

    .line 169
    check-cast v13, Lcom/google/android/gms/internal/auth/zzfm;

    .line 170
    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v2, v1

    :goto_37
    if-ge v1, v2, :cond_5a

    .line 171
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 172
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    goto :goto_37

    :cond_5a
    if-ne v1, v2, :cond_5b

    goto/16 :goto_3f

    .line 271
    :cond_5b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_5c
    if-nez v2, :cond_63

    .line 173
    check-cast v13, Lcom/google/android/gms/internal/auth/zzfm;

    .line 174
    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 175
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    :goto_38
    if-ge v1, v14, :cond_64

    .line 176
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v3, :cond_64

    .line 177
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 178
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/auth/zzfm;->zze(J)V

    goto :goto_38

    :pswitch_18
    move v11, v1

    move v14, v6

    move v9, v10

    move/from16 v10, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v8, v26

    const/4 v1, 0x2

    if-ne v2, v1, :cond_5f

    .line 179
    check-cast v13, Lcom/google/android/gms/internal/auth/zzer;

    .line 180
    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v2, v1

    :goto_39
    if-ge v1, v2, :cond_5d

    .line 181
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 182
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/auth/zzer;->zze(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_39

    :cond_5d
    if-ne v1, v2, :cond_5e

    goto/16 :goto_3f

    .line 272
    :cond_5e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_5f
    const/4 v1, 0x5

    if-ne v2, v1, :cond_63

    .line 183
    check-cast v13, Lcom/google/android/gms/internal/auth/zzer;

    .line 184
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 185
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/auth/zzer;->zze(F)V

    add-int/lit8 v1, v11, 0x4

    :goto_3a
    if-ge v1, v14, :cond_64

    .line 186
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v3, :cond_64

    .line 187
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 188
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/auth/zzer;->zze(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_3a

    :pswitch_19
    move v11, v1

    move v14, v6

    move v9, v10

    move/from16 v10, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move-object/from16 v8, v26

    const/4 v1, 0x2

    if-ne v2, v1, :cond_62

    .line 189
    check-cast v13, Lcom/google/android/gms/internal/auth/zzek;

    .line 190
    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    add-int/2addr v2, v1

    :goto_3b
    if-ge v1, v2, :cond_60

    .line 191
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 192
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/auth/zzek;->zze(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3b

    :cond_60
    if-ne v1, v2, :cond_61

    goto :goto_3f

    .line 273
    :cond_61
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzf()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_62
    const/4 v1, 0x1

    if-ne v2, v1, :cond_63

    .line 193
    check-cast v13, Lcom/google/android/gms/internal/auth/zzek;

    .line 194
    invoke-static {v15, v11}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 195
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/auth/zzek;->zze(D)V

    add-int/lit8 v1, v11, 0x8

    :goto_3c
    if-ge v1, v14, :cond_64

    .line 196
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v3, :cond_64

    .line 197
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 198
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/auth/zzek;->zze(D)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_3c

    :goto_3d
    if-ge v1, v14, :cond_64

    .line 73
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-ne v7, v2, :cond_64

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, v20

    move-object/from16 v6, p6

    .line 74
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzc(Lcom/google/android/gms/internal/auth/zzgi;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-object v2, v12, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 75
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/auth/zzez;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_63
    :goto_3e
    move v1, v11

    :cond_64
    :goto_3f
    if-eq v1, v11, :cond_65

    move/from16 v13, p5

    move v4, v7

    move-object v11, v8

    move v2, v9

    move v3, v10

    move/from16 v10, v19

    move/from16 v5, v25

    move/from16 v6, v28

    move-object/from16 v7, p1

    goto/16 :goto_0

    :cond_65
    move v3, v1

    move v4, v7

    move-object/from16 v26, v8

    move v1, v9

    move-object v5, v12

    move v6, v14

    move-object/from16 v7, p1

    move/from16 v8, p5

    goto/16 :goto_4a

    :cond_66
    move-object/from16 v26, v11

    move/from16 v8, v17

    move/from16 v7, v20

    move/from16 v25, v21

    move v11, v1

    move v1, v5

    move/from16 v37, v10

    move-object v10, v3

    move/from16 v3, v37

    const/16 v5, 0x32

    if-ne v4, v5, :cond_69

    const/4 v5, 0x2

    if-ne v2, v5, :cond_68

    .line 188
    sget-object v2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 274
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzs(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, p1

    .line 275
    invoke-virtual {v2, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 276
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/auth/zzfr;->zze()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfr;->zza()Lcom/google/android/gms/internal/auth/zzfr;

    move-result-object v4

    .line 277
    invoke-virtual {v4}, Lcom/google/android/gms/internal/auth/zzfr;->zzb()Lcom/google/android/gms/internal/auth/zzfr;

    move-result-object v4

    .line 278
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/auth/zzfs;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v2, v7, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 280
    :cond_67
    check-cast v1, Lcom/google/android/gms/internal/auth/zzfq;

    .line 281
    throw v16

    :cond_68
    move v5, v7

    move-object/from16 v7, p1

    :goto_40
    move/from16 v8, p5

    move v10, v1

    move v1, v3

    move v4, v5

    move v3, v11

    move-object v5, v12

    goto/16 :goto_4a

    :cond_69
    move v5, v7

    move-object/from16 v7, p1

    add-int/lit8 v17, v1, 0x2

    sget-object v6, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 199
    aget v9, v9, v17

    move-object/from16 v17, v6

    const v6, 0xfffff

    and-int/2addr v9, v6

    int-to-long v6, v9

    packed-switch v4, :pswitch_data_2

    :cond_6a
    move-object/from16 v7, p1

    move/from16 v6, p4

    move/from16 v17, v1

    move v1, v3

    move/from16 v20, v5

    move v8, v11

    move-object v5, v12

    goto/16 :goto_48

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6a

    move-object/from16 v7, p1

    .line 200
    invoke-direct {v0, v7, v3, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzu(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v4, v5, -0x8

    or-int/lit8 v13, v4, 0x4

    .line 201
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v9

    move-object v8, v2

    move-object/from16 v10, p2

    move v6, v11

    move-object v4, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    .line 202
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/auth/zzdu;->zzl(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    .line 203
    invoke-direct {v0, v7, v3, v1, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzC(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v17, v1

    move v1, v3

    move/from16 v20, v5

    move v2, v8

    move-object v5, v4

    move v8, v6

    move/from16 v6, p4

    goto/16 :goto_49

    :pswitch_1b
    move-object v4, v12

    move-wide/from16 v37, v6

    move-object/from16 v7, p1

    move v6, v11

    move-wide/from16 v11, v37

    if-nez v2, :cond_6d

    .line 204
    invoke-static {v15, v6, v4}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v8, v4, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 205
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/auth/zzej;->zzc(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v9, v17

    invoke-virtual {v9, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 206
    invoke-virtual {v9, v7, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_42

    :pswitch_1c
    move-object v4, v12

    move-object/from16 v9, v17

    move-wide/from16 v37, v6

    move-object/from16 v7, p1

    move v6, v11

    move-wide/from16 v11, v37

    if-nez v2, :cond_6d

    .line 207
    invoke-static {v15, v6, v4}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v4, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 208
    invoke-static {v8}, Lcom/google/android/gms/internal/auth/zzej;->zzb(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 209
    invoke-virtual {v9, v7, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :pswitch_1d
    move-object v4, v12

    move-object/from16 v9, v17

    move-wide/from16 v37, v6

    move-object/from16 v7, p1

    move v6, v11

    move-wide/from16 v11, v37

    if-nez v2, :cond_6d

    .line 210
    invoke-static {v15, v6, v4}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v8, v4, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 211
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzq(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v10

    if-eqz v10, :cond_6c

    .line 212
    invoke-interface {v10}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v10

    if-eqz v10, :cond_6b

    goto :goto_41

    .line 215
    :cond_6b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzga;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v9

    int-to-long v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Lcom/google/android/gms/internal/auth/zzha;->zzh(ILjava/lang/Object;)V

    goto :goto_42

    .line 213
    :cond_6c
    :goto_41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 214
    invoke-virtual {v9, v7, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_42

    :pswitch_1e
    move-object v4, v12

    move-object/from16 v9, v17

    const/4 v8, 0x2

    move-wide/from16 v37, v6

    move-object/from16 v7, p1

    move v6, v11

    move-wide/from16 v11, v37

    if-ne v2, v8, :cond_6d

    .line 216
    invoke-static {v15, v6, v4}, Lcom/google/android/gms/internal/auth/zzdu;->zza([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-object v8, v4, Lcom/google/android/gms/internal/auth/zzdt;->zzc:Ljava/lang/Object;

    .line 217
    invoke-virtual {v9, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 218
    invoke-virtual {v9, v7, v11, v12, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_42
    move/from16 v17, v1

    move v1, v3

    move/from16 v20, v5

    move v8, v6

    move/from16 v6, p4

    move-object v5, v4

    goto/16 :goto_49

    :cond_6d
    move/from16 v17, v1

    move v1, v3

    move/from16 v20, v5

    move v8, v6

    move/from16 v6, p4

    move-object v5, v4

    goto/16 :goto_48

    :pswitch_1f
    move-object/from16 v7, p1

    move v6, v11

    move-object v4, v12

    const/4 v8, 0x2

    if-ne v2, v8, :cond_6e

    .line 219
    invoke-direct {v0, v7, v3, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzu(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v8

    .line 220
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move v9, v1

    move-object v1, v8

    move v10, v3

    move-object/from16 v3, p2

    move-object v11, v4

    move v4, v6

    move v13, v5

    move-object/from16 v12, v26

    move/from16 v5, p4

    move/from16 v14, p4

    move v11, v6

    const v12, 0xfffff

    move-object/from16 v6, p6

    .line 221
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzm(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    .line 222
    invoke-direct {v0, v7, v10, v9, v8}, Lcom/google/android/gms/internal/auth/zzga;->zzC(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object/from16 v5, p6

    move v2, v1

    move/from16 v17, v9

    move v1, v10

    move v8, v11

    move/from16 v20, v13

    move v6, v14

    goto/16 :goto_49

    :cond_6e
    move/from16 v17, v1

    move v1, v3

    move/from16 v20, v5

    move v8, v6

    move/from16 v6, p4

    move-object/from16 v5, p6

    goto/16 :goto_48

    :pswitch_20
    move-wide/from16 v35, v6

    move-object/from16 v9, v17

    move-object/from16 v4, v26

    move-object/from16 v7, p1

    move/from16 v6, p4

    move/from16 v17, v1

    move v1, v3

    move v3, v5

    move-object v5, v12

    const/4 v12, 0x2

    if-ne v2, v12, :cond_72

    .line 223
    invoke-static {v15, v11, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v12, v5, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    if-nez v12, :cond_6f

    .line 224
    invoke-virtual {v9, v7, v13, v14, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_43
    move-wide/from16 v12, v35

    goto :goto_45

    :cond_6f
    and-int v8, v8, v22

    if-eqz v8, :cond_71

    add-int v8, v2, v12

    .line 225
    invoke-static {v15, v2, v8}, Lcom/google/android/gms/internal/auth/zzhn;->zzc([BII)Z

    move-result v8

    if-eqz v8, :cond_70

    goto :goto_44

    .line 282
    :cond_70
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzb()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 225
    :cond_71
    :goto_44
    new-instance v8, Ljava/lang/String;

    .line 226
    sget-object v10, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v15, v2, v12, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 227
    invoke-virtual {v9, v7, v13, v14, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v12

    goto :goto_43

    .line 228
    :goto_45
    invoke-virtual {v9, v7, v12, v13, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v20, v3

    move-object/from16 v26, v4

    move v8, v11

    goto/16 :goto_49

    :cond_72
    move/from16 v20, v3

    move-object/from16 v26, v4

    goto :goto_47

    :pswitch_21
    move/from16 v20, v5

    move-object v5, v12

    move-object/from16 v9, v17

    move/from16 v17, v1

    move v1, v3

    move-wide v3, v6

    move-object/from16 v7, p1

    move/from16 v6, p4

    if-nez v2, :cond_74

    .line 229
    invoke-static {v15, v11, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    move v8, v11

    iget-wide v10, v5, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    cmp-long v10, v10, v23

    if-eqz v10, :cond_73

    const/4 v10, 0x1

    goto :goto_46

    :cond_73
    move/from16 v10, v19

    .line 230
    :goto_46
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v7, v13, v14, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 231
    invoke-virtual {v9, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :cond_74
    :goto_47
    move v8, v11

    goto/16 :goto_48

    :pswitch_22
    move/from16 v20, v5

    move v8, v11

    move-object v5, v12

    move-object/from16 v9, v17

    const/4 v10, 0x5

    move/from16 v17, v1

    move v1, v3

    move-wide v3, v6

    move-object/from16 v7, p1

    move/from16 v6, p4

    if-ne v2, v10, :cond_75

    .line 232
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v8, 0x4

    .line 233
    invoke-virtual {v9, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_23
    move/from16 v20, v5

    move v8, v11

    move-object v5, v12

    move-object/from16 v9, v17

    const/4 v10, 0x1

    move/from16 v17, v1

    move v1, v3

    move-wide v3, v6

    move-object/from16 v7, p1

    move/from16 v6, p4

    if-ne v2, v10, :cond_75

    .line 234
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v8, 0x8

    .line 235
    invoke-virtual {v9, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_24
    move/from16 v20, v5

    move v8, v11

    move-object v5, v12

    move-object/from16 v9, v17

    move/from16 v17, v1

    move v1, v3

    move-wide v3, v6

    move-object/from16 v7, p1

    move/from16 v6, p4

    if-nez v2, :cond_75

    .line 236
    invoke-static {v15, v8, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzh([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v10, v5, Lcom/google/android/gms/internal/auth/zzdt;->zza:I

    .line 237
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v13, v14, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 238
    invoke-virtual {v9, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_49

    :pswitch_25
    move/from16 v20, v5

    move v8, v11

    move-object v5, v12

    move-object/from16 v9, v17

    move/from16 v17, v1

    move v1, v3

    move-wide v3, v6

    move-object/from16 v7, p1

    move/from16 v6, p4

    if-nez v2, :cond_75

    .line 239
    invoke-static {v15, v8, v5}, Lcom/google/android/gms/internal/auth/zzdu;->zzk([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v10, v5, Lcom/google/android/gms/internal/auth/zzdt;->zzb:J

    .line 240
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v7, v13, v14, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 241
    invoke-virtual {v9, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_26
    move/from16 v20, v5

    move v8, v11

    move-object v5, v12

    move-object/from16 v9, v17

    const/4 v10, 0x5

    move/from16 v17, v1

    move v1, v3

    move-wide v3, v6

    move-object/from16 v7, p1

    move/from16 v6, p4

    if-ne v2, v10, :cond_75

    .line 242
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/auth/zzdu;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 243
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v9, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v8, 0x4

    .line 244
    invoke-virtual {v9, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :pswitch_27
    move/from16 v20, v5

    move v8, v11

    move-object v5, v12

    move-object/from16 v9, v17

    const/4 v10, 0x1

    move/from16 v17, v1

    move v1, v3

    move-wide v3, v6

    move-object/from16 v7, p1

    move/from16 v6, p4

    if-ne v2, v10, :cond_75

    .line 245
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/auth/zzdu;->zzn([BI)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    .line 246
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v9, v7, v13, v14, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v8, 0x8

    .line 247
    invoke-virtual {v9, v7, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_49

    :cond_75
    :goto_48
    move v2, v8

    :goto_49
    if-eq v2, v8, :cond_76

    move/from16 v13, p5

    move-object v12, v5

    move v14, v6

    move/from16 v3, v17

    move/from16 v10, v19

    move/from16 v4, v20

    move/from16 v5, v25

    move-object/from16 v11, v26

    move/from16 v6, v28

    move/from16 v37, v2

    move v2, v1

    move/from16 v1, v37

    goto/16 :goto_0

    :cond_76
    move/from16 v8, p5

    move v3, v2

    move/from16 v10, v17

    goto/16 :goto_15

    :goto_4a
    if-ne v4, v8, :cond_78

    if-nez v8, :cond_77

    goto :goto_4b

    :cond_77
    move v1, v3

    move v9, v6

    move/from16 v5, v25

    move-object/from16 v13, v26

    move/from16 v6, v28

    goto :goto_4c

    .line 248
    :cond_78
    :goto_4b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzga;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v9

    move v11, v1

    move v1, v4

    move-object/from16 v2, p2

    move v12, v4

    move-object/from16 v13, v26

    move/from16 v4, p4

    move-object v5, v9

    move v9, v6

    move-object/from16 v6, p6

    .line 249
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->zzg(I[BIILcom/google/android/gms/internal/auth/zzha;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    move v14, v9

    move v3, v10

    move v2, v11

    move v4, v12

    move-object v11, v13

    move/from16 v10, v19

    move/from16 v5, v25

    move/from16 v6, v28

    move-object/from16 v12, p6

    move v13, v8

    goto/16 :goto_0

    :cond_79
    move/from16 v25, v5

    move/from16 v28, v6

    move v8, v13

    move v9, v14

    move-object v13, v11

    :goto_4c
    const v2, 0xfffff

    if-eq v6, v2, :cond_7a

    int-to-long v2, v6

    .line 283
    invoke-virtual {v13, v7, v2, v3, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7a
    iget v2, v0, Lcom/google/android/gms/internal/auth/zzga;->zzi:I

    :goto_4d
    iget v3, v0, Lcom/google/android/gms/internal/auth/zzga;->zzj:I

    if-ge v2, v3, :cond_7d

    iget-object v3, v0, Lcom/google/android/gms/internal/auth/zzga;->zzh:[I

    .line 284
    aget v3, v3, v2

    iget-object v5, v0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 285
    aget v5, v5, v3

    .line 286
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v5

    const v6, 0xfffff

    and-int/2addr v5, v6

    int-to-long v10, v5

    .line 287
    invoke-static {v7, v10, v11}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7b

    goto :goto_4e

    .line 288
    :cond_7b
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/auth/zzga;->zzq(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v10

    if-nez v10, :cond_7c

    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 289
    :cond_7c
    check-cast v5, Lcom/google/android/gms/internal/auth/zzfr;

    .line 290
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/auth/zzga;->zzs(I)Ljava/lang/Object;

    move-result-object v1

    .line 291
    check-cast v1, Lcom/google/android/gms/internal/auth/zzfq;

    .line 292
    throw v16

    :cond_7d
    if-nez v8, :cond_7f

    if-ne v1, v9, :cond_7e

    goto :goto_4f

    .line 293
    :cond_7e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzd()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_7f
    if-gt v1, v9, :cond_80

    if-ne v4, v8, :cond_80

    :goto_4f
    return v1

    .line 294
    :cond_80
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->zzd()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

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

.method public final zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzg:Lcom/google/android/gms/internal/auth/zzfx;

    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->zzc()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->zzH(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzev;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    const v2, 0x7fffffff

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/auth/zzev;->zzl(I)V

    iput v1, v0, Lcom/google/android/gms/internal/auth/zzev;->zza:I

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->zzj()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

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

    .line 8
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    .line 9
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 10
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/auth/zzfr;->zzc()V

    .line 11
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzga;->zzk:Lcom/google/android/gms/internal/auth/zzfl;

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/auth/zzfl;->zza(Ljava/lang/Object;J)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 6
    aget v2, v2, v1

    .line 7
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/zzgi;->zze(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/auth/zzgi;->zze(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zze(Ljava/lang/Object;)V

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

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->zzw(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 3
    aget v3, v3, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v1

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzy(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzA(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzy(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzA(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 12
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/auth/zzgk;->zza:I

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/zzfs;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->zzk:Lcom/google/android/gms/internal/auth/zzfl;

    .line 16
    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzfl;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 18
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 21
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 24
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 27
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 30
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 33
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 36
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 39
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzx(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 40
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzp(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 43
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzk(Ljava/lang/Object;JZ)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 46
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_1

    .line 49
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_1

    .line 52
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzn(Ljava/lang/Object;JI)V

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_1

    .line 55
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_1

    .line 58
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzo(Ljava/lang/Object;JJ)V

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_1

    .line 61
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzm(Ljava/lang/Object;JF)V

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    goto :goto_1

    .line 64
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzE(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->zzl(Ljava/lang/Object;JD)V

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzz(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 67
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgk;->zzd(Lcom/google/android/gms/internal/auth/zzgz;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

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

.method public final zzg(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdt;)V
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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/zzga;->zzb(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzl(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 3
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v7

    .line 4
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 31
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgk;->zzf(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzt(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 49
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzga;->zzD(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 52
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzhj;->zza(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->zzl:Lcom/google/android/gms/internal/auth/zzgz;

    .line 54
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

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

.method public final zzi(Ljava/lang/Object;)Z
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
    iget v2, v6, Lcom/google/android/gms/internal/auth/zzga;->zzi:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/auth/zzga;->zzh:[I

    aget v11, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    .line 2
    aget v12, v2, v11

    .line 3
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzga;->zzo(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/auth/zzga;->zzc:[I

    add-int/lit8 v4, v11, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/auth/zzga;->zzb:Lsun/misc/Unsafe;

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzga;->zzF(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/auth/zzga;->zzn(I)I

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
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/auth/zzfr;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzga;->zzs(I)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/auth/zzfq;

    const/4 v0, 0x0

    .line 22
    throw v0

    .line 16
    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/auth/zzga;->zzI(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgi;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_7
    and-int v0, v13, v9

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/auth/zzhj;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 9
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

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
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/auth/zzgi;->zzi(Ljava/lang/Object;)Z

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzga;->zzF(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzga;->zzr(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/auth/zzga;->zzG(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgi;)Z

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
    return v3

    nop

    .array-data 1
    .end array-data
.end method
