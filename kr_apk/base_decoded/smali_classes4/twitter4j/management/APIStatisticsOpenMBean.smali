.class public Ltwitter4j/management/APIStatisticsOpenMBean;
.super Ljava/lang/Object;
.source "APIStatisticsOpenMBean.java"

# interfaces
.implements Ljavax/management/DynamicMBean;


# static fields
.field private static final ITEM_DESCRIPTIONS:[Ljava/lang/String;

.field private static final ITEM_NAMES:[Ljava/lang/String;

.field private static final ITEM_TYPES:[Ljavax/management/openmbean/OpenType;


# instance fields
.field private final API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

.field private final API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;

.field private final METHOD_STATS_TYPE:Ljavax/management/openmbean/CompositeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7d6570cd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d196d10

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d196cc8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x224078a6

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x2240781e

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/management/openmbean/OpenType;

    const/4 v1, 0x0

    .line 319
    sget-object v2, Ljavax/management/openmbean/SimpleType;->STRING:Ljavax/management/openmbean/SimpleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v2, v0, v1

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_TYPES:[Ljavax/management/openmbean/OpenType;

    const v0, -0x450c1d0f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x542c4ec2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d654e35

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x450c2037

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x450c27bf

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_DESCRIPTIONS:[Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/management/APIStatistics;)V
    .locals 6

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    .line 489
    :try_start_0
    new-instance p1, Ljavax/management/openmbean/CompositeType;

    const-string v1, "method statistics"

    const-string v2, "method statistics"

    sget-object v3, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_NAMES:[Ljava/lang/String;

    sget-object v4, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_DESCRIPTIONS:[Ljava/lang/String;

    sget-object v5, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_TYPES:[Ljavax/management/openmbean/OpenType;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ljavax/management/openmbean/CompositeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljavax/management/openmbean/OpenType;)V

    iput-object p1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->METHOD_STATS_TYPE:Ljavax/management/openmbean/CompositeType;

    const-string v0, "methodName"

    .line 529
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 539
    new-instance v1, Ljavax/management/openmbean/TabularType;

    const-string v2, "API statistics"

    const-string v3, "list of methods"

    invoke-direct {v1, v2, v3, p1, v0}, Ljavax/management/openmbean/TabularType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/CompositeType;[Ljava/lang/String;)V

    iput-object v1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;
    :try_end_0
    .catch Ljavax/management/openmbean/OpenDataException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 589
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    const v0, 0x7d65491d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1479
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    invoke-virtual {p0}, Ltwitter4j/management/APIStatisticsOpenMBean;->getStatistics()Ljavax/management/openmbean/TabularDataSupport;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x224078a6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 1499
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1509
    iget-object p1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {p1}, Ltwitter4j/management/APIStatisticsMBean;->getCallCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    const v0, 0x2240781e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 1519
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1529
    iget-object p1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {p1}, Ltwitter4j/management/APIStatisticsMBean;->getErrorCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    const v0, 0x7d6570cd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1539
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1549
    iget-object p1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {p1}, Ltwitter4j/management/APIStatisticsMBean;->getTotalTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    const v0, 0x224043fe

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 1559
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1569
    iget-object p1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {p1}, Ltwitter4j/management/APIStatisticsMBean;->getAverageTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1589
    :cond_4
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d654a2d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x224042d6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAttributes([Ljava/lang/String;)Ljavax/management/AttributeList;
    .locals 6

    .line 1639
    new-instance v0, Ljavax/management/AttributeList;

    invoke-direct {v0}, Ljavax/management/AttributeList;-><init>()V

    .line 1649
    array-length v1, p1

    if-nez v1, :cond_0

    return-object v0

    .line 1669
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1689
    :try_start_0
    invoke-virtual {p0, v3}, Ltwitter4j/management/APIStatisticsOpenMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1699
    new-instance v5, Ljavax/management/Attribute;

    invoke-direct {v5, v3, v4}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1719
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getMBeanInfo()Ljavax/management/MBeanInfo;
    .locals 22

    const/4 v0, 0x5

    new-array v4, v0, [Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const/4 v0, 0x1

    new-array v5, v0, [Ljavax/management/openmbean/OpenMBeanConstructorInfoSupport;

    new-array v6, v0, [Ljavax/management/openmbean/OpenMBeanOperationInfoSupport;

    const/4 v1, 0x0

    new-array v7, v1, [Ljavax/management/MBeanNotificationInfo;

    .line 719
    new-instance v2, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const v9, 0x224078a6

    invoke-static {v9}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x224042be

    invoke-static {v10}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    aput-object v2, v4, v1

    .line 769
    new-instance v2, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const-string v16, "errorCount"

    const-string v17, "The number of failed API calls"

    sget-object v18, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    aput-object v2, v4, v0

    .line 819
    new-instance v0, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const v9, 0x224043fe

    invoke-static {v9}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v9

    const v10, -0x450c2b67

    invoke-static {v10}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    const/4 v2, 0x2

    aput-object v0, v4, v2

    .line 869
    new-instance v0, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const v9, 0x7d6570cd

    invoke-static {v9}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v9

    const v10, -0x450c2b67

    invoke-static {v10}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    const/4 v2, 0x3

    aput-object v0, v4, v2

    .line 919
    new-instance v0, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const v9, 0x7d65491d

    invoke-static {v9}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x22404c76

    invoke-static {v10}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v15, p0

    iget-object v11, v15, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    const/4 v2, 0x4

    aput-object v0, v4, v2

    .line 969
    new-instance v0, Ljavax/management/openmbean/OpenMBeanConstructorInfoSupport;

    const v2, 0x22404f36

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljavax/management/openmbean/OpenMBeanParameterInfoSupport;

    const v8, 0x3377e48b

    invoke-static {v8}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v2, v3}, Ljavax/management/openmbean/OpenMBeanConstructorInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/openmbean/OpenMBeanParameterInfo;)V

    aput-object v0, v5, v1

    new-array v12, v1, [Ljavax/management/openmbean/OpenMBeanParameterInfoSupport;

    .line 1029
    new-instance v0, Ljavax/management/openmbean/OpenMBeanOperationInfoSupport;

    const v10, 0x2259d35e

    invoke-static {v10}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v10

    const v11, -0x450c2e3f

    invoke-static {v11}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Ljavax/management/openmbean/SimpleType;->VOID:Ljavax/management/openmbean/SimpleType;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Ljavax/management/openmbean/OpenMBeanOperationInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/openmbean/OpenMBeanParameterInfo;Ljavax/management/openmbean/OpenType;I)V

    aput-object v0, v6, v1

    .line 1099
    new-instance v0, Ljavax/management/openmbean/OpenMBeanInfoSupport;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d654175

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljavax/management/openmbean/OpenMBeanInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/openmbean/OpenMBeanAttributeInfo;[Ljavax/management/openmbean/OpenMBeanConstructorInfo;[Ljavax/management/openmbean/OpenMBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getStatistics()Ljavax/management/openmbean/TabularDataSupport;
    .locals 6

    monitor-enter p0

    .line 1179
    :try_start_0
    new-instance v0, Ljavax/management/openmbean/TabularDataSupport;

    iget-object v1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;

    invoke-direct {v0, v1}, Ljavax/management/openmbean/TabularDataSupport;-><init>(Ljavax/management/openmbean/TabularType;)V

    .line 1199
    iget-object v1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {v1}, Ltwitter4j/management/APIStatisticsMBean;->getInvocationStatistics()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/management/InvocationStatistics;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 1209
    invoke-interface {v2}, Ltwitter4j/management/InvocationStatistics;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1219
    invoke-interface {v2}, Ltwitter4j/management/InvocationStatistics;->getCallCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1229
    invoke-interface {v2}, Ltwitter4j/management/InvocationStatistics;->getErrorCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 1239
    invoke-interface {v2}, Ltwitter4j/management/InvocationStatistics;->getTotalTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 1249
    invoke-interface {v2}, Ltwitter4j/management/InvocationStatistics;->getAverageTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    :try_start_1
    new-instance v2, Ljavax/management/openmbean/CompositeDataSupport;

    iget-object v4, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->METHOD_STATS_TYPE:Ljavax/management/openmbean/CompositeType;

    sget-object v5, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3}, Ljavax/management/openmbean/CompositeDataSupport;-><init>(Ljavax/management/openmbean/CompositeType;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1309
    invoke-virtual {v0, v2}, Ljavax/management/openmbean/TabularDataSupport;->put(Ljavax/management/openmbean/CompositeData;)V
    :try_end_1
    .catch Ljavax/management/openmbean/OpenDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1329
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1379
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

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    const-string p2, "reset"

    .line 1809
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1819
    invoke-virtual {p0}, Ltwitter4j/management/APIStatisticsOpenMBean;->reset()V

    const-string p1, "Statistics reset"

    return-object p1

    .line 1849
    :cond_0
    new-instance p2, Ljavax/management/ReflectionException;

    new-instance p3, Ljava/lang/NoSuchMethodException;

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x542c4032

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljavax/management/ReflectionException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p2

    nop

    .array-data 1
    .end array-data
.end method

.method public reset()V
    .locals 1

    .line 1419
    iget-object v0, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {v0}, Ltwitter4j/management/APIStatisticsMBean;->reset()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setAttribute(Ljavax/management/Attribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .line 1939
    new-instance p1, Ljavax/management/AttributeNotFoundException;

    const v0, 0x542c4112

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public setAttributes(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .locals 0

    .line 1999
    new-instance p1, Ljavax/management/AttributeList;

    invoke-direct {p1}, Ljavax/management/AttributeList;-><init>()V

    return-object p1

    .array-data 1
    .end array-data
.end method
