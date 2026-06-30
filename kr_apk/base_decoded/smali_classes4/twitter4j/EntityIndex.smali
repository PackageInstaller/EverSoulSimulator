.class abstract Ltwitter4j/EntityIndex;
.super Ljava/lang/Object;
.source "EntityIndex.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ltwitter4j/EntityIndex;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x34253b6026e7c95fL


# instance fields
.field private end:I

.field private start:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 249
    iput v0, p0, Ltwitter4j/EntityIndex;->start:I

    .line 259
    iput v0, p0, Ltwitter4j/EntityIndex;->end:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 229
    check-cast p1, Ltwitter4j/EntityIndex;

    invoke-virtual {p0, p1}, Ltwitter4j/EntityIndex;->compareTo(Ltwitter4j/EntityIndex;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public compareTo(Ltwitter4j/EntityIndex;)I
    .locals 4

    .line 299
    iget v0, p0, Ltwitter4j/EntityIndex;->start:I

    iget p1, p1, Ltwitter4j/EntityIndex;->start:I

    sub-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    long-to-int p1, v0

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method getEnd()I
    .locals 1

    .line 519
    iget v0, p0, Ltwitter4j/EntityIndex;->end:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method getStart()I
    .locals 1

    .line 479
    iget v0, p0, Ltwitter4j/EntityIndex;->start:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method setEnd(I)V
    .locals 0

    .line 439
    iput p1, p0, Ltwitter4j/EntityIndex;->end:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method setStart(I)V
    .locals 0

    .line 399
    iput p1, p0, Ltwitter4j/EntityIndex;->start:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method
