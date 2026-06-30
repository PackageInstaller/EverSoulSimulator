.class public Ltwitter4j/management/APIStatistics;
.super Ljava/lang/Object;
.source "APIStatistics.java"

# interfaces
.implements Ltwitter4j/management/APIStatisticsMBean;


# instance fields
.field private final API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

.field private final HISTORY_SIZE:I

.field private final METHOD_STATS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltwitter4j/management/InvocationStatisticsCalculator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    const v1, 0x542c72da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltwitter4j/management/InvocationStatisticsCalculator;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    .line 379
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    .line 389
    iput p1, p0, Ltwitter4j/management/APIStatistics;->HISTORY_SIZE:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized getMethodStatistics(Ljava/lang/String;)Ltwitter4j/management/InvocationStatisticsCalculator;
    .locals 2

    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ltwitter4j/management/InvocationStatisticsCalculator;

    iget v1, p0, Ltwitter4j/management/APIStatistics;->HISTORY_SIZE:I

    invoke-direct {v0, p1, v1}, Ltwitter4j/management/InvocationStatisticsCalculator;-><init>(Ljava/lang/String;I)V

    .line 589
    iget-object v1, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAverageTime()J
    .locals 2

    .line 1009
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getAverageTime()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCallCount()J
    .locals 2

    .line 859
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getCallCount()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getErrorCount()J
    .locals 2

    .line 909
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getErrorCount()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getInvocationStatistics()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Ltwitter4j/management/InvocationStatistics;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 659
    :try_start_0
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getMethodLevelSummariesAsString()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1059
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1079
    iget-object v1, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1089
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/management/InvocationStatisticsCalculator;

    .line 1099
    invoke-virtual {v2}, Ltwitter4j/management/InvocationStatisticsCalculator;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ltwitter4j/management/InvocationStatisticsCalculator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1129
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getMethodLevelSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1179
    :try_start_0
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {p1}, Ltwitter4j/management/InvocationStatisticsCalculator;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTotalTime()J
    .locals 2

    .line 959
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->getTotalTime()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized methodCalled(Ljava/lang/String;JZ)V
    .locals 0

    monitor-enter p0

    .line 479
    :try_start_0
    invoke-direct {p0, p1}, Ltwitter4j/management/APIStatistics;->getMethodStatistics(Ljava/lang/String;)Ltwitter4j/management/InvocationStatisticsCalculator;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Ltwitter4j/management/InvocationStatisticsCalculator;->increment(JZ)V

    .line 509
    iget-object p1, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {p1, p2, p3, p4}, Ltwitter4j/management/InvocationStatisticsCalculator;->increment(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 709
    :try_start_0
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->API_STATS_CALCULATOR:Ltwitter4j/management/InvocationStatisticsCalculator;

    invoke-virtual {v0}, Ltwitter4j/management/InvocationStatisticsCalculator;->reset()V

    .line 719
    iget-object v0, p0, Ltwitter4j/management/APIStatistics;->METHOD_STATS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method
