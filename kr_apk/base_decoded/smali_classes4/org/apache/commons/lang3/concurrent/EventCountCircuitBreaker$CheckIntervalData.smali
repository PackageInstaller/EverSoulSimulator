.class Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
.super Ljava/lang/Object;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckIntervalData"
.end annotation


# instance fields
.field private final checkIntervalStart:J

.field private final eventCount:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 4419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4429
    iput p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->eventCount:I

    .line 4439
    iput-wide p2, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->checkIntervalStart:J

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getCheckIntervalStart()J
    .locals 2

    .line 4619
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->checkIntervalStart:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEventCount()I
    .locals 1

    .line 4529
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->eventCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public increment(I)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .locals 4

    if-nez p1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 4729
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result v1

    add-int/2addr v1, p1

    .line 4739
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getCheckIntervalStart()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
