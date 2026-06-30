.class public final Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;
.super Ljava/lang/Object;
.source "InsecureSHA1PRNGKeyDerivator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInsecureSHA1PRNGKeyDerivator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsecureSHA1PRNGKeyDerivator.kt\ncom/kakaogame/util/InsecureSHA1PRNGKeyDerivator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,553:1\n1#2:554\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nH\u0002J\u0012\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\t\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0004R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;",
        "",
        "<init>",
        "()V",
        "seed",
        "",
        "seedLength",
        "",
        "copies",
        "nextBytes",
        "",
        "nextBIndex",
        "",
        "counter",
        "state",
        "updateSeed",
        "",
        "bytes",
        "setSeed",
        "Companion",
        "common-kakaogames_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BYTES_OFFSET:I = 0x51

.field private static final COUNTER_BASE:I = 0x0

.field public static final Companion:Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;

.field private static final DIGEST_LENGTH:I = 0x14

.field private static final END_FLAGS:[I

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final H0:I = 0x67452301

.field private static final H1:I = -0x10325477

.field private static final H2:I = -0x67452302

.field private static final H3:I = 0x10325476

.field private static final H4:I = -0x3c2d1e10

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final HASH_OFFSET:I = 0x52

.field private static final LEFT:[I

.field private static final MASK:[I

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I

.field private static final RIGHT2:[I

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I


# instance fields
.field private final transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private final transient nextBytes:[B

.field private final transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->Companion:Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2799
    fill-array-data v1, :array_0

    .line 2789
    sput-object v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    new-array v1, v0, [I

    .line 2829
    fill-array-data v1, :array_1

    .line 2819
    sput-object v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->RIGHT1:[I

    new-array v1, v0, [I

    .line 2859
    fill-array-data v1, :array_2

    .line 2849
    sput-object v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->RIGHT2:[I

    new-array v1, v0, [I

    .line 2889
    fill-array-data v1, :array_3

    .line 2879
    sput-object v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->LEFT:[I

    new-array v0, v0, [I

    .line 2919
    fill-array-data v0, :array_4

    .line 2909
    sput-object v0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->MASK:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x80000000
        0x800000
        0x8000
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x28
        0x30
        0x38
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x8
        0x10
        0x18
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x18
        0x10
        0x8
    .end array-data

    :array_4
    .array-data 4
        -0x1
        0xffffff
        0xffff
        0xff
    .end array-data

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x57

    new-array v0, v0, [I

    .line 369
    iput-object v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    const-wide/16 v0, 0x0

    .line 5469
    iput-wide v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    const/16 v2, 0x25

    new-array v2, v2, [I

    .line 5479
    iput-object v2, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v2, 0x14

    new-array v3, v2, [B

    .line 5489
    iput-object v3, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    .line 5499
    iput v2, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    .line 5509
    iput-wide v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    const/4 v0, 0x0

    .line 5519
    iput v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->state:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setSeed(Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;[B)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->setSeed([B)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final setSeed([B)V
    .locals 5

    if-eqz p1, :cond_2

    .line 939
    iget v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 959
    iget-object v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    iget-object v1, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v2, 0x52

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/4 v0, 0x1

    .line 979
    iput v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->state:I

    .line 989
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 999
    invoke-direct {p0, p1}, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->updateSeed([B)V

    :cond_1
    return-void

    .line 919
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const v0, 0x5d1e4ae7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final updateSeed([B)V
    .locals 4

    .line 769
    sget-object v0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->Companion:Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;

    iget-object v1, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;->access$updateHash(Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;[I[BII)V

    .line 779
    iget-wide v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final declared-synchronized nextBytes([B)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    if-eqz v0, :cond_11

    .line 1329
    :try_start_0
    iget-object v2, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v3, 0x51

    aget v4, v2, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x7

    shr-int/2addr v4, v5

    .line 1529
    :goto_0
    iget v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->state:I

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    if-eqz v9, :cond_10

    const/16 v9, 0x20

    const/16 v10, 0x30

    const-wide/16 v11, -0x1

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/16 v15, 0x14

    if-ne v7, v8, :cond_4

    .line 1549
    iget-object v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v8, 0x52

    invoke-static {v2, v8, v7, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v4, 0x3

    :goto_2
    const/16 v7, 0x12

    if-ge v2, v7, :cond_2

    .line 1719
    iget-object v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aput v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1749
    :cond_2
    iget-wide v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seedLength:J

    shl-long/2addr v7, v13

    const/16 v2, 0x40

    int-to-long v13, v2

    add-long/2addr v7, v13

    .line 1789
    iget-object v2, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v13, v2, v3

    if-ge v13, v10, :cond_3

    ushr-long v13, v7, v9

    long-to-int v13, v13

    const/16 v14, 0xe

    .line 1799
    aput v13, v2, v14

    and-long/2addr v7, v11

    long-to-int v7, v7

    const/16 v8, 0xf

    .line 1809
    aput v7, v2, v8

    goto :goto_3

    .line 1829
    :cond_3
    iget-object v2, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    ushr-long v13, v7, v9

    long-to-int v13, v13

    const/16 v14, 0x13

    aput v13, v2, v14

    and-long/2addr v7, v11

    long-to-int v7, v7

    .line 1839
    aput v7, v2, v15

    .line 1859
    :goto_3
    iput v15, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    .line 1879
    :cond_4
    iput v5, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->state:I

    .line 1889
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    .line 1899
    monitor-exit p0

    return-void

    .line 1949
    :cond_5
    :try_start_1
    iget v2, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    rsub-int/lit8 v5, v2, 0x14

    array-length v7, v0

    sub-int/2addr v7, v6

    if-ge v5, v7, :cond_6

    rsub-int/lit8 v5, v2, 0x14

    goto :goto_4

    :cond_6
    array-length v5, v0

    sub-int/2addr v5, v6

    :goto_4
    if-lez v5, :cond_7

    .line 1969
    iget-object v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    invoke-static {v7, v2, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1979
    iget v2, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v5, v6

    goto :goto_5

    :cond_7
    move v5, v6

    .line 2009
    :goto_5
    array-length v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v5, v2, :cond_8

    .line 2019
    monitor-exit p0

    return-void

    .line 2039
    :cond_8
    :try_start_2
    iget-object v2, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v2, v2, v3

    const/4 v7, 0x3

    and-int/2addr v2, v7

    :goto_6
    if-nez v2, :cond_9

    .line 2069
    iget-object v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    iget-wide v13, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    ushr-long v10, v13, v9

    long-to-int v10, v10

    aput v10, v7, v4

    add-int/lit8 v10, v4, 0x1

    const-wide/16 v11, -0x1

    and-long/2addr v13, v11

    long-to-int v11, v13

    .line 2079
    aput v11, v7, v10

    add-int/lit8 v10, v4, 0x2

    .line 2089
    sget-object v11, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    aget v11, v11, v6

    aput v11, v7, v10

    move/from16 v19, v4

    const-wide/16 v17, -0x1

    goto :goto_7

    .line 2109
    :cond_9
    iget-object v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    aget v10, v7, v4

    iget-wide v11, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    sget-object v13, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->RIGHT1:[I

    aget v13, v13, v2

    ushr-long v13, v11, v13

    sget-object v16, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->MASK:[I

    aget v8, v16, v2

    move/from16 v19, v4

    int-to-long v3, v8

    and-long/2addr v3, v13

    long-to-int v3, v3

    or-int/2addr v3, v10

    aput v3, v7, v19

    add-int/lit8 v4, v19, 0x1

    .line 2119
    sget-object v3, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->RIGHT2:[I

    aget v3, v3, v2

    ushr-long v13, v11, v3

    const-wide/16 v17, -0x1

    and-long v13, v13, v17

    long-to-int v3, v13

    aput v3, v7, v4

    add-int/lit8 v4, v19, 0x2

    .line 2129
    sget-object v3, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->LEFT:[I

    aget v3, v3, v2

    shl-long v10, v11, v3

    sget-object v3, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->END_FLAGS:[I

    aget v3, v3, v2

    int-to-long v12, v3

    or-long/2addr v10, v12

    long-to-int v3, v10

    aput v3, v7, v4

    .line 2149
    :goto_7
    iget-object v3, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v4, 0x51

    aget v7, v3, v4

    const/16 v4, 0x10

    const/16 v8, 0x30

    if-le v7, v8, :cond_a

    .line 2159
    iget-object v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    aget v10, v3, v4

    const/4 v11, 0x5

    aput v10, v7, v11

    const/16 v10, 0x11

    .line 2169
    aget v10, v3, v10

    const/4 v11, 0x6

    aput v10, v7, v11

    .line 2189
    :cond_a
    sget-object v7, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->Companion:Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;

    invoke-static {v7, v3}, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;->access$computeHash(Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;[I)V

    .line 2199
    iget-object v3, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/16 v10, 0x51

    aget v11, v3, v10

    const/16 v8, 0x30

    if-le v11, v8, :cond_b

    .line 2209
    iget-object v11, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    const/16 v12, 0x15

    invoke-static {v3, v6, v11, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2219
    iget-object v3, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    iget-object v11, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    const/4 v13, 0x5

    invoke-static {v3, v13, v11, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2229
    iget-object v3, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    invoke-static {v7, v3}, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;->access$computeHash(Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator$Companion;[I)V

    .line 2239
    iget-object v3, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->copies:[I

    iget-object v7, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    invoke-static {v3, v12, v7, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2259
    :cond_b
    iget-wide v3, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    const-wide/16 v11, 0x1

    add-long/2addr v3, v11

    iput-wide v3, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->counter:J

    move v3, v6

    move v4, v3

    const/4 v7, 0x5

    :goto_8
    if-ge v3, v7, :cond_c

    .line 2299
    iget-object v11, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->seed:[I

    add-int/lit8 v12, v3, 0x52

    aget v11, v11, v12

    .line 2309
    iget-object v12, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    ushr-int/lit8 v13, v11, 0x18

    int-to-byte v13, v13

    aput-byte v13, v12, v4

    add-int/lit8 v13, v4, 0x1

    ushr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    .line 2319
    aput-byte v14, v12, v13

    add-int/lit8 v13, v4, 0x2

    ushr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    .line 2339
    aput-byte v14, v12, v13

    add-int/lit8 v13, v4, 0x3

    int-to-byte v11, v11

    .line 2359
    aput-byte v11, v12, v13

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2399
    :cond_c
    iput v6, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    .line 2419
    array-length v3, v0

    sub-int/2addr v3, v5

    if-ge v15, v3, :cond_d

    move v3, v15

    goto :goto_9

    :cond_d
    array-length v3, v0

    sub-int/2addr v3, v5

    :goto_9
    if-lez v3, :cond_e

    .line 2439
    iget-object v4, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBytes:[B

    invoke-static {v4, v6, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    .line 2459
    iget v4, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/kakaogame/util/InsecureSHA1PRNGKeyDerivator;->nextBIndex:I

    .line 2479
    :cond_e
    array-length v3, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v5, v3, :cond_f

    .line 2519
    monitor-exit p0

    return-void

    :cond_f
    move v3, v10

    move-wide/from16 v11, v17

    move/from16 v4, v19

    move v10, v8

    goto/16 :goto_6

    :cond_10
    :try_start_3
    const-string v0, "No seed supplied!"

    .line 1529
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    goto :goto_a

    .line 1279
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "bytes == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method
