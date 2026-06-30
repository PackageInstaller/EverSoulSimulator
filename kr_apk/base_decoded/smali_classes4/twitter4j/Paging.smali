.class public final Ltwitter4j/Paging;
.super Ljava/lang/Object;
.source "Paging.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final COUNT:Ljava/lang/String; = "count"

.field private static final NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

.field private static final NULL_PARAMETER_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation
.end field

.field static final PER_PAGE:Ljava/lang/String; = "per_page"

.field static final S:[C

.field static final SMCP:[C

.field private static final serialVersionUID:J = -0x6448500cdfd4aeafL


# instance fields
.field private count:I

.field private maxId:J

.field private page:I

.field private sinceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x73

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 399
    sput-object v0, Ltwitter4j/Paging;->S:[C

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 419
    fill-array-data v0, :array_0

    sput-object v0, Ltwitter4j/Paging;->SMCP:[C

    new-array v0, v2, [Ltwitter4j/HttpParameter;

    .line 529
    sput-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_LIST:Ljava/util/List;

    return-void

    :array_0
    .array-data 2
        0x73s
        0x6ds
        0x63s
        0x70s
    .end array-data

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 339
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 349
    iput v0, p0, Ltwitter4j/Paging;->count:I

    const-wide/16 v0, -0x1

    .line 359
    iput-wide v0, p0, Ltwitter4j/Paging;->sinceId:J

    .line 369
    iput-wide v0, p0, Ltwitter4j/Paging;->maxId:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 339
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 349
    iput v0, p0, Ltwitter4j/Paging;->count:I

    const-wide/16 v0, -0x1

    .line 359
    iput-wide v0, p0, Ltwitter4j/Paging;->sinceId:J

    .line 369
    iput-wide v0, p0, Ltwitter4j/Paging;->maxId:J

    .line 1359
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setPage(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1439
    invoke-direct {p0, p1}, Ltwitter4j/Paging;-><init>(I)V

    .line 1449
    invoke-virtual {p0, p2}, Ltwitter4j/Paging;->setCount(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(IIJ)V
    .locals 0

    .line 1539
    invoke-direct {p0, p1, p2}, Ltwitter4j/Paging;-><init>(II)V

    .line 1549
    invoke-virtual {p0, p3, p4}, Ltwitter4j/Paging;->setSinceId(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(IIJJ)V
    .locals 0

    .line 1589
    invoke-direct {p0, p1, p2, p3, p4}, Ltwitter4j/Paging;-><init>(IIJ)V

    .line 1599
    invoke-virtual {p0, p5, p6}, Ltwitter4j/Paging;->setMaxId(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 1489
    invoke-direct {p0, p1}, Ltwitter4j/Paging;-><init>(I)V

    .line 1499
    invoke-virtual {p0, p2, p3}, Ltwitter4j/Paging;->setSinceId(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 339
    iput v0, p0, Ltwitter4j/Paging;->page:I

    .line 349
    iput v0, p0, Ltwitter4j/Paging;->count:I

    const-wide/16 v0, -0x1

    .line 359
    iput-wide v0, p0, Ltwitter4j/Paging;->sinceId:J

    .line 369
    iput-wide v0, p0, Ltwitter4j/Paging;->maxId:J

    .line 1399
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setSinceId(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CC",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1169
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 p1, -0x1

    if-nez v1, :cond_3

    cmp-long v0, p1, p5

    if-nez v0, :cond_2

    goto :goto_2

    .line 1239
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Paging parameter ["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "] is not supported with this operation."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    cmp-long p1, p1, p5

    if-eqz p1, :cond_4

    .line 1279
    new-instance p1, Ltwitter4j/HttpParameter;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method asPostParameterArray()[Ltwitter4j/HttpParameter;
    .locals 2

    .line 559
    sget-object v0, Ltwitter4j/Paging;->SMCP:[C

    const v1, -0x2244f47c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 569
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 579
    sget-object v0, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

    return-object v0

    .line 599
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/HttpParameter;
    .locals 8

    .line 1019
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v2, 0x73

    const v4, -0x4512303f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 1029
    invoke-virtual {p0}, Ltwitter4j/Paging;->getSinceId()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    const/16 v2, 0x6d

    const v4, -0x4512304f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 1039
    invoke-virtual {p0}, Ltwitter4j/Paging;->getMaxId()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    const/16 v2, 0x63

    .line 1049
    invoke-virtual {p0}, Ltwitter4j/Paging;->getCount()I

    move-result v0

    int-to-long v5, v0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    const/16 v2, 0x70

    const v4, 0x3369fb7b

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    .line 1059
    invoke-virtual {p0}, Ltwitter4j/Paging;->getPage()I

    move-result p2

    int-to-long v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 1069
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 1079
    sget-object p1, Ltwitter4j/Paging;->NULL_PARAMETER_ARRAY:[Ltwitter4j/HttpParameter;

    return-object p1

    .line 1099
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ltwitter4j/HttpParameter;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ltwitter4j/HttpParameter;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method asPostParameterList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .line 499
    sget-object v0, Ltwitter4j/Paging;->SMCP:[C

    const v1, -0x2244f47c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method asPostParameterList([C)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    const v0, -0x2244f47c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-virtual {p0, p1, v0}, Ltwitter4j/Paging;->asPostParameterList([CLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method asPostParameterList([CLjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .line 799
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v2, 0x73

    const v4, -0x4512303f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 809
    invoke-virtual {p0}, Ltwitter4j/Paging;->getSinceId()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    const/16 v2, 0x6d

    const v4, -0x4512304f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 819
    invoke-virtual {p0}, Ltwitter4j/Paging;->getMaxId()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    const/16 v2, 0x63

    .line 829
    invoke-virtual {p0}, Ltwitter4j/Paging;->getCount()I

    move-result v0

    int-to-long v5, v0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    const/16 v2, 0x70

    const v4, 0x3369fb7b

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    .line 839
    invoke-virtual {p0}, Ltwitter4j/Paging;->getPage()I

    move-result p2

    int-to-long v5, p2

    invoke-direct/range {v0 .. v6}, Ltwitter4j/Paging;->addPostParameter([CCLjava/util/List;Ljava/lang/String;J)V

    .line 849
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 859
    sget-object p1, Ltwitter4j/Paging;->NULL_PARAMETER_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    return-object v7

    .array-data 1
    .end array-data
.end method

.method public count(I)Ltwitter4j/Paging;
    .locals 0

    .line 1859
    invoke-virtual {p0, p1}, Ltwitter4j/Paging;->setCount(I)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2249
    :cond_0
    instance-of v1, p1, Ltwitter4j/Paging;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2269
    :cond_1
    check-cast p1, Ltwitter4j/Paging;

    .line 2289
    iget v1, p0, Ltwitter4j/Paging;->count:I

    iget v3, p1, Ltwitter4j/Paging;->count:I

    if-eq v1, v3, :cond_2

    return v2

    .line 2299
    :cond_2
    iget-wide v3, p0, Ltwitter4j/Paging;->maxId:J

    iget-wide v5, p1, Ltwitter4j/Paging;->maxId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 2309
    :cond_3
    iget v1, p0, Ltwitter4j/Paging;->page:I

    iget v3, p1, Ltwitter4j/Paging;->page:I

    if-eq v1, v3, :cond_4

    return v2

    .line 2319
    :cond_4
    iget-wide v3, p0, Ltwitter4j/Paging;->sinceId:J

    iget-wide v5, p1, Ltwitter4j/Paging;->sinceId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCount()I
    .locals 1

    .line 1749
    iget v0, p0, Ltwitter4j/Paging;->count:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMaxId()J
    .locals 2

    .line 2069
    iget-wide v0, p0, Ltwitter4j/Paging;->maxId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPage()I
    .locals 1

    .line 1639
    iget v0, p0, Ltwitter4j/Paging;->page:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSinceId()J
    .locals 2

    .line 1909
    iget-wide v0, p0, Ltwitter4j/Paging;->sinceId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 6

    .line 2389
    iget v0, p0, Ltwitter4j/Paging;->page:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2399
    iget v1, p0, Ltwitter4j/Paging;->count:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2409
    iget-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2419
    iget-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public maxId(J)Ltwitter4j/Paging;
    .locals 0

    .line 2179
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setMaxId(J)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setCount(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1819
    iput p1, p0, Ltwitter4j/Paging;->count:I

    return-void

    .line 1799
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x3369fb0b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public setMaxId(J)V
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2139
    iput-wide p1, p0, Ltwitter4j/Paging;->maxId:J

    return-void

    .line 2119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d0744e8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPage(I)V
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1709
    iput p1, p0, Ltwitter4j/Paging;->page:I

    return-void

    .line 1689
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d7b5a2d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public setSinceId(J)V
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1979
    iput-wide p1, p0, Ltwitter4j/Paging;->sinceId:J

    return-void

    .line 1959
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d1b72b7    # 7.00076E17f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public sinceId(J)Ltwitter4j/Paging;
    .locals 0

    .line 2019
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Paging;->setSinceId(J)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d074888

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/Paging;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1b7c97

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Paging;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1b7f47

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Paging;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x22499f14

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Paging;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
