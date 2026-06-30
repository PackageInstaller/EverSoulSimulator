.class public Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;
.super Ljava/lang/Object;
.source "ConfigRealtimeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler$ConfigUpdateListenerRegistrationInternal;
    }
.end annotation


# instance fields
.field private final activatedCacheClient:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field private final configFetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

.field private final configRealtimeHttpClient:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

.field private final context:Landroid/content/Context;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/remoteconfig/ConfigUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

.field private final namespace:Ljava/lang/String;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 12

    move-object v0, p0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v8, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->listeners:Ljava/util/Set;

    .line 56
    new-instance v11, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v11, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->configRealtimeHttpClient:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    move-object v1, p1

    .line 68
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    move-object v1, p3

    .line 69
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->configFetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    move-object v1, p2

    .line 70
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    move-object/from16 v1, p4

    .line 71
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->activatedCacheClient:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    move-object/from16 v1, p5

    .line 72
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->context:Landroid/content/Context;

    move-object/from16 v1, p6

    .line 73
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->namespace:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 74
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    move-object/from16 v1, p8

    .line 75
    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->removeRealtimeConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized beginRealtime()V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->configRealtimeHttpClient:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->startHttpConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized removeRealtimeConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)V
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public declared-synchronized addRealtimeConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->beginRealtime()V

    .line 90
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler$ConfigUpdateListenerRegistrationInternal;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler$ConfigUpdateListenerRegistrationInternal;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized setBackgroundState(Z)V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->configRealtimeHttpClient:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->setRealtimeBackgroundState(Z)V

    if-nez p1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->beginRealtime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method
