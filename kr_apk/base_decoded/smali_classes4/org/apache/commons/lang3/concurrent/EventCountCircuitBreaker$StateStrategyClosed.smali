.class Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;
.super Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateStrategyClosed"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 5229
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;-><init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V
    .locals 0

    .line 5229
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected fetchCheckInterval(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;)J
    .locals 2

    .line 5389
    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getOpeningInterval()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isStateTransition(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .locals 0

    .line 5309
    invoke-virtual {p3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->getEventCount()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->getOpeningThreshold()I

    move-result p1

    if-le p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method
