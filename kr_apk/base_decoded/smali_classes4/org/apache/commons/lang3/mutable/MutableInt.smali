.class public Lorg/apache/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 549
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 559
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 669
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 779
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 789
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 1899
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public add(Ljava/lang/Number;)V
    .locals 1

    .line 2009
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public addAndGet(I)I
    .locals 1

    .line 2339
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    .array-data 1
    .end array-data
.end method

.method public addAndGet(Ljava/lang/Number;)I
    .locals 1

    .line 2479
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 299
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->compareTo(Lorg/apache/commons/lang3/mutable/MutableInt;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableInt;)I
    .locals 1

    .line 3689
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    iget p1, p1, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public decrement()V
    .locals 1

    .line 1539
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public decrementAndGet()I
    .locals 1

    .line 1779
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public doubleValue()D
    .locals 2

    .line 3199
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 3439
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3449
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public floatValue()F
    .locals 1

    .line 3099
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public getAndAdd(I)I
    .locals 1

    .line 2609
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr p1, v0

    .line 2619
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    .array-data 1
    .end array-data
.end method

.method public getAndAdd(Ljava/lang/Number;)I
    .locals 1

    .line 2759
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 2769
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    .array-data 1
    .end array-data
.end method

.method public getAndDecrement()I
    .locals 2

    .line 1649
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v1, v0, -0x1

    .line 1659
    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAndIncrement()I
    .locals 2

    .line 1309
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v1, v0, 0x1

    .line 1319
    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 899
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 3569
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public increment()V
    .locals 1

    .line 1199
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public incrementAndGet()I
    .locals 1

    .line 1439
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public intValue()I
    .locals 1

    .line 2899
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public longValue()J
    .locals 2

    .line 2999
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public setValue(I)V
    .locals 0

    .line 989
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0

    .line 1099
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public subtract(I)V
    .locals 1

    .line 2109
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 1

    .line 2219
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 1

    .line 3299
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 3799
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
