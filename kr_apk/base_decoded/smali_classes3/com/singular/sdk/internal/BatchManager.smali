.class public Lcom/singular/sdk/internal/BatchManager;
.super Ljava/lang/Object;
.source "BatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;,
        Lcom/singular/sdk/internal/BatchManager$NetworkSender;
    }
.end annotation


# static fields
.field private static final SEND_ID:Ljava/lang/String; = "send_id"

.field private static instance:Lcom/singular/sdk/internal/BatchManager;

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private batchFields:[Ljava/lang/String;

.field private batchManagerPersistence:Lcom/singular/sdk/internal/BatchManagerPersistence;

.field private configUpdateId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private debug:Z

.field private eventsDataStructure:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/singular/sdk/internal/BaseApi;",
            ">;"
        }
    .end annotation
.end field

.field private networkSender:Lcom/singular/sdk/internal/BatchManager$NetworkSender;

.field private regularFlowSender:Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;

.field private sendId:J

.field private sendIdMutex:Ljava/util/concurrent/Semaphore;

.field private sendMutex:Ljava/util/concurrent/Semaphore;

.field private shouldBatchEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BatchManager"

    .line 499
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/singular/sdk/internal/BatchManagerPersistence;Lcom/singular/sdk/internal/BatchManager$NetworkSender;Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;)V
    .locals 3

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->sendIdMutex:Ljava/util/concurrent/Semaphore;

    .line 239
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->sendMutex:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcom/singular/sdk/internal/BatchManager;->shouldBatchEvents:Z

    .line 369
    iput-boolean v0, p0, Lcom/singular/sdk/internal/BatchManager;->debug:Z

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->configUpdateId:Ljava/lang/String;

    const-string v0, "ad_currency"

    const-string v1, "pcc"

    const-string v2, "ad_platform"

    .line 459
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->batchFields:[Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->eventsDataStructure:Ljava/util/Map;

    .line 839
    iput-object p2, p0, Lcom/singular/sdk/internal/BatchManager;->batchManagerPersistence:Lcom/singular/sdk/internal/BatchManagerPersistence;

    .line 849
    iput-object p3, p0, Lcom/singular/sdk/internal/BatchManager;->networkSender:Lcom/singular/sdk/internal/BatchManager$NetworkSender;

    .line 859
    iput-object p4, p0, Lcom/singular/sdk/internal/BatchManager;->regularFlowSender:Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;

    .line 869
    invoke-interface {p2}, Lcom/singular/sdk/internal/BatchManagerPersistence;->getSendId()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/singular/sdk/internal/BatchManager;->sendId:J

    .line 879
    invoke-static {}, Lcom/singular/sdk/internal/ConfigManager;->getInstance()Lcom/singular/sdk/internal/ConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/singular/sdk/internal/ConfigManager;->getConfig()Lcom/singular/sdk/internal/SLRemoteConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/singular/sdk/internal/SLRemoteConfiguration;->isAggregateAdmonEvents()Z

    move-result p2

    iput-boolean p2, p0, Lcom/singular/sdk/internal/BatchManager;->shouldBatchEvents:Z

    .line 889
    invoke-static {}, Lcom/singular/sdk/internal/ConfigManager;->getInstance()Lcom/singular/sdk/internal/ConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/singular/sdk/internal/ConfigManager;->getConfig()Lcom/singular/sdk/internal/SLRemoteConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/singular/sdk/internal/SLRemoteConfiguration;->isAdmonEventsDebug()Z

    move-result p2

    iput-boolean p2, p0, Lcom/singular/sdk/internal/BatchManager;->debug:Z

    .line 899
    iput-object p1, p0, Lcom/singular/sdk/internal/BatchManager;->context:Landroid/content/Context;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lcom/singular/sdk/internal/BatchManager;)Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/singular/sdk/internal/BatchManager;->configUpdateId:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/BatchManager;)Z
    .locals 0

    .line 199
    iget-boolean p0, p0, Lcom/singular/sdk/internal/BatchManager;->shouldBatchEvents:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1000(Lcom/singular/sdk/internal/BatchManager;)Lcom/singular/sdk/internal/BatchManagerPersistence;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/singular/sdk/internal/BatchManager;->batchManagerPersistence:Lcom/singular/sdk/internal/BatchManagerPersistence;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$102(Lcom/singular/sdk/internal/BatchManager;Z)Z
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/singular/sdk/internal/BatchManager;->shouldBatchEvents:Z

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1100(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/Map;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/singular/sdk/internal/BatchManager;->eventsDataStructure:Ljava/util/Map;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1200(Lcom/singular/sdk/internal/BatchManager;)Lcom/singular/sdk/internal/BatchManager$NetworkSender;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/singular/sdk/internal/BatchManager;->networkSender:Lcom/singular/sdk/internal/BatchManager$NetworkSender;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$1300(Lcom/singular/sdk/internal/BatchManager;Ljava/lang/Throwable;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/BatchManager;->reportException(Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lcom/singular/sdk/internal/BatchManager;)Z
    .locals 0

    .line 199
    iget-boolean p0, p0, Lcom/singular/sdk/internal/BatchManager;->debug:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$202(Lcom/singular/sdk/internal/BatchManager;Z)Z
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/singular/sdk/internal/BatchManager;->debug:Z

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300()Lcom/singular/sdk/internal/BatchManager;
    .locals 1

    .line 199
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->instance:Lcom/singular/sdk/internal/BatchManager;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$400()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 199
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$500(Lcom/singular/sdk/internal/BatchManager;Lcom/singular/sdk/internal/BaseApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/BatchManager;->batchEvent(Lcom/singular/sdk/internal/BaseApi;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$600(Lcom/singular/sdk/internal/BatchManager;)Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/singular/sdk/internal/BatchManager;->regularFlowSender:Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$700(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/singular/sdk/internal/BatchManager;->sendMutex:Ljava/util/concurrent/Semaphore;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$800(Lcom/singular/sdk/internal/BatchManager;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/singular/sdk/internal/BatchManager;->sendIdMutex:Ljava/util/concurrent/Semaphore;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$900(Lcom/singular/sdk/internal/BatchManager;)J
    .locals 2

    .line 199
    iget-wide v0, p0, Lcom/singular/sdk/internal/BatchManager;->sendId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$902(Lcom/singular/sdk/internal/BatchManager;J)J
    .locals 0

    .line 199
    iput-wide p1, p0, Lcom/singular/sdk/internal/BatchManager;->sendId:J

    return-wide p1

    nop

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized batchEvent(Lcom/singular/sdk/internal/BaseApi;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "batchEvent: created 1st event: "

    const-string v1, "batchEvent: added to existing event: "

    const-string v2, "a"

    const-string v3, "batchEvent: key: "

    const-string v4, "batchEvent: "

    monitor-enter p0

    .line 1199
    :try_start_0
    iget-object v5, p0, Lcom/singular/sdk/internal/BatchManager;->sendIdMutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception v5

    .line 1219
    :try_start_1
    sget-object v6, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v5}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 1249
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1269
    :try_start_2
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/BatchManager;->prepareKey(Lcom/singular/sdk/internal/BaseApi;)Ljava/lang/String;

    move-result-object v7

    .line 1279
    sget-object v8, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    const-string v3, "e"

    .line 1299
    invoke-virtual {p1, v3}, Lcom/singular/sdk/internal/BaseApi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1309
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1359
    iget-object v3, p0, Lcom/singular/sdk/internal/BatchManager;->eventsDataStructure:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    .line 1369
    iget-object p1, p0, Lcom/singular/sdk/internal/BatchManager;->eventsDataStructure:Ljava/util/Map;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/singular/sdk/internal/BaseApi;

    const-string v0, "e"

    .line 1379
    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/BaseApi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1389
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "r"

    .line 1399
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v0, "r"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    add-double/2addr v10, v12

    const-string v0, "ad_revenue"

    .line 1409
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v0, "ad_revenue"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v12, v3

    const-string v0, "admon_count"

    .line 1419
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v9

    const-string v3, "r"

    .line 1429
    invoke-virtual {v2, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "ad_revenue"

    .line 1439
    invoke-virtual {v2, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "admon_count"

    .line 1449
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "last_update_timestamp"

    .line 1459
    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "e"

    .line 1469
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1489
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->sendIdMutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1499
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->batchManagerPersistence:Lcom/singular/sdk/internal/BatchManagerPersistence;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v7, p1}, Lcom/singular/sdk/internal/BatchManagerPersistence;->updateEvent(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1549
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "send_id"

    .line 1559
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "r"

    .line 1569
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v3, "ad_revenue"

    .line 1579
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v3, "r"

    .line 1599
    invoke-virtual {v1, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "ad_revenue"

    .line 1609
    invoke-virtual {v1, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "admon_count"

    .line 1619
    invoke-virtual {v1, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "is_admon_revenue"

    const-string v9, "is_admon_revenue"

    .line 1629
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v1, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "is_revenue_event"

    const-string v9, "is_revenue_event"

    .line 1639
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "first_update_timestamp"

    .line 1649
    invoke-virtual {v1, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "last_update_timestamp"

    .line 1659
    invoke-virtual {v1, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "e"

    .line 1669
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "event_index"

    .line 1679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/singular/sdk/internal/BatchManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/singular/sdk/internal/Utils;->getAdmonEventIndex(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1689
    iget-boolean v1, p0, Lcom/singular/sdk/internal/BatchManager;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "_de"

    const-string/jumbo v2, "true"

    .line 1699
    invoke-virtual {p1, v1, v2}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1719
    :cond_1
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager;->eventsDataStructure:Ljava/util/Map;

    invoke-interface {v1, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager;->sendIdMutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1739
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager;->batchManagerPersistence:Lcom/singular/sdk/internal/BatchManagerPersistence;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v7, v2}, Lcom/singular/sdk/internal/BatchManagerPersistence;->addEvent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1829
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 1779
    :try_start_3
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->sendIdMutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1789
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 1799
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/BatchManager;->reportException(Ljava/lang/Throwable;)V

    .line 1809
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static getInstance()Lcom/singular/sdk/internal/BatchManager;
    .locals 1

    .line 779
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->instance:Lcom/singular/sdk/internal/BatchManager;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static init(Landroid/content/Context;Lcom/singular/sdk/internal/BatchManagerPersistence;Lcom/singular/sdk/internal/BatchManager$NetworkSender;Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;)V
    .locals 3

    .line 939
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init with persistence: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 949
    new-instance v0, Lcom/singular/sdk/internal/BatchManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/singular/sdk/internal/BatchManager;-><init>(Landroid/content/Context;Lcom/singular/sdk/internal/BatchManagerPersistence;Lcom/singular/sdk/internal/BatchManager$NetworkSender;Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;)V

    .line 959
    invoke-direct {v0}, Lcom/singular/sdk/internal/BatchManager;->loadFromPersistence()V

    .line 969
    invoke-static {}, Lcom/singular/sdk/internal/ConfigManager;->getInstance()Lcom/singular/sdk/internal/ConfigManager;

    move-result-object p0

    new-instance p1, Lcom/singular/sdk/internal/BatchManager$1;

    invoke-direct {p1, v0}, Lcom/singular/sdk/internal/BatchManager$1;-><init>(Lcom/singular/sdk/internal/BatchManager;)V

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/ConfigManager;->registerForConfigUpdates(Lcom/singular/sdk/internal/ConfigManager$ConfigUpdateHandler;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/singular/sdk/internal/BatchManager;->configUpdateId:Ljava/lang/String;

    .line 1099
    sput-object v0, Lcom/singular/sdk/internal/BatchManager;->instance:Lcom/singular/sdk/internal/BatchManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private loadFromPersistence()V
    .locals 4

    .line 1859
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "loadFromPersistence"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 1869
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->batchManagerPersistence:Lcom/singular/sdk/internal/BatchManagerPersistence;

    invoke-interface {v0}, Lcom/singular/sdk/internal/BatchManagerPersistence;->getAllEvents()Ljava/util/Set;

    move-result-object v0

    .line 1879
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1899
    :try_start_0
    iget-object v2, p0, Lcom/singular/sdk/internal/BatchManager;->eventsDataStructure:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/singular/sdk/internal/BaseApi;->from(Ljava/lang/String;)Lcom/singular/sdk/internal/BaseApi;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1919
    sget-object v2, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    goto :goto_0

    .line 1949
    :cond_0
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadFromPersistence: loaded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/singular/sdk/internal/BatchManager;->eventsDataStructure:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private prepareKey(Lcom/singular/sdk/internal/BaseApi;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 579
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepareKey for API: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    const-string v0, "e"

    .line 589
    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/BaseApi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 599
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 609
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "send_id"

    .line 619
    iget-wide v2, p0, Lcom/singular/sdk/internal/BatchManager;->sendId:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 629
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager;->batchFields:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 639
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 659
    :try_start_0
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 679
    sget-object v5, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v4}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    :cond_0
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepareKey result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 719
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private reportException(Ljava/lang/Throwable;)V
    .locals 2

    .line 3399
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/BatchManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/SingularExceptionReporter;->getReporter(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/singular/sdk/internal/SingularExceptionReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SingularExceptionReporter;->reportException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addToBatch(Lcom/singular/sdk/internal/BaseApi;)V
    .locals 3

    .line 1989
    iget-boolean v0, p0, Lcom/singular/sdk/internal/BatchManager;->shouldBatchEvents:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/singular/sdk/internal/BatchManager;->debug:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->isAdmonEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2009
    :try_start_0
    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/singular/sdk/internal/BaseApi;->from(Ljava/lang/String;)Lcom/singular/sdk/internal/BaseApi;

    move-result-object v0

    .line 2019
    iget-object v1, p0, Lcom/singular/sdk/internal/BatchManager;->regularFlowSender:Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;

    invoke-interface {v1, v0}, Lcom/singular/sdk/internal/BatchManager$RegularFlowSender;->sendApi(Lcom/singular/sdk/internal/BaseApi;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2059
    sget-object v1, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v2, "Throwable"

    invoke-virtual {v1, v2, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2039
    sget-object v1, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v2, "IOExceptionException"

    invoke-virtual {v1, v2, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2109
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/singular/sdk/internal/BatchManager$2;

    invoke-direct {v1, p0, p1}, Lcom/singular/sdk/internal/BatchManager$2;-><init>(Lcom/singular/sdk/internal/BatchManager;Lcom/singular/sdk/internal/BaseApi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 2319
    sget-object v0, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 2329
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/BatchManager;->reportException(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public sendEvents()V
    .locals 3

    .line 2379
    iget-boolean v0, p0, Lcom/singular/sdk/internal/BatchManager;->shouldBatchEvents:Z

    if-nez v0, :cond_0

    return-void

    .line 2399
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/singular/sdk/internal/BatchManager$3;

    invoke-direct {v1, p0}, Lcom/singular/sdk/internal/BatchManager$3;-><init>(Lcom/singular/sdk/internal/BatchManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3329
    sget-object v1, Lcom/singular/sdk/internal/BatchManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 3339
    invoke-direct {p0, v0}, Lcom/singular/sdk/internal/BatchManager;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
