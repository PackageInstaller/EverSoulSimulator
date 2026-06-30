.class final Lorg/apache/commons/lang3/CharRange;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/CharRange$CharacterIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method private constructor <init>(CCZ)V
    .locals 1

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-le p1, p2, :cond_0

    move v0, p2

    move p2, p1

    move p1, v0

    .line 749
    :cond_0
    iput-char p1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    .line 759
    iput-char p2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    .line 769
    iput-boolean p3, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lorg/apache/commons/lang3/CharRange;)Z
    .locals 0

    .line 339
    iget-boolean p0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lorg/apache/commons/lang3/CharRange;)C
    .locals 0

    .line 339
    iget-char p0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Lorg/apache/commons/lang3/CharRange;)C
    .locals 0

    .line 339
    iget-char p0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static is(C)Lorg/apache/commons/lang3/CharRange;
    .locals 2

    .line 889
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isIn(CC)Lorg/apache/commons/lang3/CharRange;
    .locals 2

    .line 1139
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNot(C)Lorg/apache/commons/lang3/CharRange;
    .locals 2

    .line 1009
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isNotIn(CC)Lorg/apache/commons/lang3/CharRange;
    .locals 2

    .line 1269
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public contains(C)Z
    .locals 3

    .line 1709
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .array-data 1
    .end array-data
.end method

.method public contains(Lorg/apache/commons/lang3/CharRange;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const v3, 0x5d192caf

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 1829
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1839
    iget-boolean v2, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_5

    .line 1849
    iget-boolean v2, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_2

    .line 1859
    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt v2, v3, :cond_1

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char p1, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt v2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 1879
    :cond_2
    iget-char v2, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt v2, v3, :cond_4

    iget-char p1, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-le p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    return v0

    .line 1899
    :cond_5
    iget-boolean v2, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_7

    .line 1909
    iget-char p1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-nez p1, :cond_6

    iget-char p1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    const v2, 0xffff

    if-ne p1, v2, :cond_6

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    return v0

    .line 1929
    :cond_7
    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-gt v2, v3, :cond_8

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char p1, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-lt v2, p1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2099
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang3/CharRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2129
    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/CharRange;

    .line 2139
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-ne v1, v3, :cond_2

    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    iget-boolean p1, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnd()C
    .locals 1

    .line 1469
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStart()C
    .locals 1

    .line 1379
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 2239
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isNegated()Z
    .locals 1

    .line 1589
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 2599
    new-instance v0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang3/CharRange;Lorg/apache/commons/lang3/CharRange$1;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2339
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2349
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2359
    invoke-virtual {p0}, Lorg/apache/commons/lang3/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5e

    .line 2369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2389
    :cond_0
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2399
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2d

    .line 2409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2419
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2439
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    .line 2459
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
