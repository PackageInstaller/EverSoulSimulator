.class public Lorg/apache/commons/lang3/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/mutable/MutableFloat;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x158f131a2L


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 529
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 539
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 649
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 769
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .line 2069
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method

.method public add(Ljava/lang/Number;)V
    .locals 1

    .line 2179
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method

.method public addAndGet(F)F
    .locals 1

    .line 2509
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    .array-data 1
    .end array-data
.end method

.method public addAndGet(Ljava/lang/Number;)F
    .locals 1

    .line 2649
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 279
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableFloat;->compareTo(Lorg/apache/commons/lang3/mutable/MutableFloat;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableFloat;)I
    .locals 1

    .line 4069
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    iget p1, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public decrement()V
    .locals 2

    .line 1709
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method

.method public decrementAndGet()F
    .locals 2

    .line 1949
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    .array-data 1
    .end array-data
.end method

.method public doubleValue()D
    .locals 2

    .line 3369
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 3839
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    iget p1, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 3849
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public floatValue()F
    .locals 1

    .line 3269
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAndAdd(F)F
    .locals 1

    .line 2779
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr p1, v0

    .line 2789
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    .array-data 1
    .end array-data
.end method

.method public getAndAdd(Ljava/lang/Number;)F
    .locals 1

    .line 2929
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 2939
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    .array-data 1
    .end array-data
.end method

.method public getAndDecrement()F
    .locals 2

    .line 1819
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    .line 1829
    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAndIncrement()F
    .locals 2

    .line 1479
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    .line 1489
    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    .array-data 1
    .end array-data
.end method

.method public getValue()Ljava/lang/Float;
    .locals 1

    .line 879
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableFloat;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 3949
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public increment()V
    .locals 2

    .line 1369
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method

.method public incrementAndGet()F
    .locals 2

    .line 1609
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0

    .array-data 1
    .end array-data
.end method

.method public intValue()I
    .locals 1

    .line 3069
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-int v0, v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public isInfinite()Z
    .locals 1

    .line 1269
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isNaN()Z
    .locals 1

    .line 1179
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public longValue()J
    .locals 2

    .line 3169
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public setValue(F)V
    .locals 0

    .line 969
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 0

    .line 1079
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 279
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableFloat;->setValue(Ljava/lang/Number;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public subtract(F)V
    .locals 1

    .line 2279
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 1

    .line 2389
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void

    .array-data 1
    .end array-data
.end method

.method public toFloat()Ljava/lang/Float;
    .locals 1

    .line 3469
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableFloat;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4179
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
