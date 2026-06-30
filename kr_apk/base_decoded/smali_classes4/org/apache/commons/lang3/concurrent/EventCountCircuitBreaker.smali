.class public Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.super Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;,
        Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;,
        Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;,
        Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final STRATEGY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
            "Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;",
            ">;"
        }
    .end annotation
.end field

.field private final closingInterval:J

.field private final closingThreshold:I

.field private final openingInterval:J

.field private final openingThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1419
    invoke-static {}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->createStrategyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->STRATEGY_MAP:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p1

    .line 2159
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;-><init>(IJLjava/util/concurrent/TimeUnit;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;I)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-wide v6, p2

    move-object v8, p4

    .line 2009
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;-><init>(IJLjava/util/concurrent/TimeUnit;IJLjava/util/concurrent/TimeUnit;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;IJLjava/util/concurrent/TimeUnit;)V
    .locals 5

    .line 1779
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;-><init>()V

    .line 1789
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1799
    iput p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->openingThreshold:I

    .line 1809
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->openingInterval:J

    .line 1819
    iput p5, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->closingThreshold:I

    .line 1829
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->closingInterval:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private changeStateAndStartNewCheckInterval(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V
    .locals 4

    .line 3639
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->changeState(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    .line 3649
    iget-object p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->now()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static createStrategyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
            "Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;",
            ">;"
        }
    .end annotation

    .line 4179
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 4189
    sget-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    new-instance v2, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;-><init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4199
    sget-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    new-instance v2, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;-><init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private nextCheckIntervalData(ILorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;J)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .locals 0

    .line 3819
    invoke-static {p3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->stateStrategy(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;

    move-result-object p3

    invoke-virtual {p3, p0, p2, p4, p5}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;->isCheckIntervalFinished(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;J)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3829
    new-instance p2, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    invoke-direct {p2, p1, p4, p5}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    goto :goto_0

    .line 3849
    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->increment(I)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    move-result-object p2

    :goto_0
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method private performStateCheck(I)Z
    .locals 8

    .line 3259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->now()J

    move-result-wide v4

    .line 3269
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 3279
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    move-object v0, p0

    move v1, p1

    move-object v2, v7

    move-object v3, v6

    .line 3289
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->nextCheckIntervalData(ILorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;J)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    move-result-object v0

    .line 3299
    invoke-direct {p0, v7, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->updateCheckIntervalData(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3339
    invoke-static {v6}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->stateStrategy(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;

    move-result-object p1

    invoke-virtual {p1, p0, v7, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;->isStateTransition(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3349
    invoke-virtual {v6}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->oppositeState()Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    move-result-object v6

    .line 3359
    invoke-direct {p0, v6}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->changeStateAndStartNewCheckInterval(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    .line 3379
    :cond_1
    invoke-static {v6}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .array-data 1
    .end array-data
.end method

.method private static stateStrategy(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;
    .locals 1

    .line 4079
    sget-object v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->STRATEGY_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private updateCheckIntervalData(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .locals 1

    if-eq p1, p2, :cond_1

    .line 3529
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3539
    invoke-static {v0, p1, p2}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public checkState()Z
    .locals 1

    const/4 v0, 0x0

    .line 2659
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->performStateCheck(I)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public close()V
    .locals 5

    .line 3089
    invoke-super {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->close()V

    .line 3099
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->now()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public getClosingInterval()J
    .locals 2

    .line 2559
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->closingInterval:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getClosingThreshold()I
    .locals 1

    .line 2469
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->closingThreshold:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOpeningInterval()J
    .locals 2

    .line 2359
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->openingInterval:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOpeningThreshold()I
    .locals 1

    .line 2269
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->openingThreshold:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public incrementAndCheckState()Z
    .locals 1

    const/4 v0, 0x1

    .line 2859
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->incrementAndCheckState(Ljava/lang/Integer;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public incrementAndCheckState(Ljava/lang/Integer;)Z
    .locals 0

    .line 2739
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->performStateCheck(I)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic incrementAndCheckState(Ljava/lang/Object;)Z
    .locals 0

    .line 1389
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->incrementAndCheckState(Ljava/lang/Integer;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method now()J
    .locals 2

    .line 3969
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public open()V
    .locals 5

    .line 2969
    invoke-super {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->open()V

    .line 2979
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->now()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
