.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfig.java"


# static fields
.field public static final DEFAULT_VALUE_FOR_BOOLEAN:Z = false

.field public static final DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

.field public static final DEFAULT_VALUE_FOR_DOUBLE:D = 0.0

.field public static final DEFAULT_VALUE_FOR_LONG:J = 0x0L

.field public static final DEFAULT_VALUE_FOR_STRING:Ljava/lang/String; = ""

.field public static final LAST_FETCH_STATUS_FAILURE:I = 0x1

.field public static final LAST_FETCH_STATUS_NO_FETCH_YET:I = 0x0

.field public static final LAST_FETCH_STATUS_SUCCESS:I = -0x1

.field public static final LAST_FETCH_STATUS_THROTTLED:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FirebaseRemoteConfig"

.field public static final VALUE_SOURCE_DEFAULT:I = 0x1

.field public static final VALUE_SOURCE_REMOTE:I = 0x2

.field public static final VALUE_SOURCE_STATIC:I


# instance fields
.field private final activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field private final configRealtimeHandler:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;

.field private final context:Landroid/content/Context;

.field private final defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

.field private final fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field private final firebaseAbt:Lcom/google/firebase/abt/FirebaseABTesting;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final frcMetadata:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

.field private final getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;


# direct methods
.method public static synthetic $r8$lambda$jaisR09Ce9JaIIQwbTp50mxBpwc(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->processActivatePutTask(Lcom/google/android/gms/tasks/Task;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 101
    sput-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/abt/FirebaseABTesting;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->context:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 176
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 177
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->firebaseAbt:Lcom/google/firebase/abt/FirebaseABTesting;

    .line 178
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    .line 179
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    .line 180
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    .line 181
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    .line 182
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 183
    iput-object p10, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    .line 184
    iput-object p11, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->frcMetadata:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    .line 185
    iput-object p12, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->configRealtimeHandler:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 1

    .line 80
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 1

    .line 86
    const-class v0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getDefault()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static isFetchedFresh(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getFetchTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getFetchTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic lambda$ensureInitialized$0(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic lambda$fetch$3(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 291
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method static synthetic lambda$fetch$4(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$FetchResponse;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 319
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method static synthetic lambda$setDefaultsWithStringsMapAsync$7(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 636
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private processActivatePutTask(Lcom/google/android/gms/tasks/Task;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/remoteconfig/internal/ConfigContainer;",
            ">;)Z"
        }
    .end annotation

    .line 601
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->clear()V

    .line 607
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getAbtExperiments()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->updateAbtWithActivatedExperiments(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_0
    const-string p1, "FirebaseRemoteConfig"

    const-string v0, "Activated configs written to disk are null."

    .line 611
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method private setDefaultsWithStringsMapAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 627
    :try_start_0
    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->newBuilder()Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;->replaceConfigsWith(Ljava/util/Map;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer$Builder;->build()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->put(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 636
    invoke-static {}, Lcom/google/firebase/concurrent/FirebaseExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 635
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "The provided defaults map could not be processed."

    .line 629
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 630
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method static toExperimentInfoMaps(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 692
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 693
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 695
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 696
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 697
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 698
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 699
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 702
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public activate()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/tasks/Task;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 242
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda9;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 243
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOnConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->configRealtimeHandler:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->addRealtimeConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public ensureInitialized()Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v2}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda4;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    invoke-static {v3, v4}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 198
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v4}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    .line 199
    iget-object v5, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v5

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/google/android/gms/tasks/Task;

    aput-object v0, v7, v6

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 201
    invoke-static {v7}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda5;

    invoke-direct {v2, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/gms/tasks/Task;)V

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public fetch()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->fetch()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 291
    invoke-static {}, Lcom/google/firebase/concurrent/FirebaseExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda3;-><init>()V

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public fetch(J)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->fetch(J)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 319
    invoke-static {}, Lcom/google/firebase/concurrent/FirebaseExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 318
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public fetchAndActivate()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda7;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;",
            ">;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->frcMetadata:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getHandler:Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$activate$2$com-google-firebase-remoteconfig-FirebaseRemoteConfig(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    const/4 v0, 0x0

    .line 247
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p3, :cond_2

    .line 246
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    .line 252
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 253
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    .line 254
    invoke-static {p1, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->isFetchedFresh(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 255
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 259
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    .line 260
    invoke-virtual {p2, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->put(Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda8;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    .line 261
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 247
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$fetchAndActivate$1$com-google-firebase-remoteconfig-FirebaseRemoteConfig(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activate()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$reset$6$com-google-firebase-remoteconfig-FirebaseRemoteConfig()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->clear()V

    .line 542
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->clear()V

    .line 543
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->clear()V

    .line 544
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->frcMetadata:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->clear()V

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$setConfigSettingsAsync$5$com-google-firebase-remoteconfig-FirebaseRemoteConfig(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->frcMetadata:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V

    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public reset()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public schedule(Ljava/lang/Runnable;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig$$ExternalSyntheticLambda6;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method setConfigUpdateBackgroundState(Z)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->configRealtimeHandler:Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHandler;->setBackgroundState(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDefaultsAsync(I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/DefaultsXmlParser;->getDefaultsFromXml(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p1

    .line 525
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsWithStringsMapAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public setDefaultsAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 504
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 505
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 506
    instance-of v3, v2, [B

    if-eqz v3, :cond_0

    .line 507
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    check-cast v2, [B

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 509
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 513
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsWithStringsMapAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method startLoadingConfigsFromDisk()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->get()Lcom/google/android/gms/tasks/Task;

    .line 579
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->get()Lcom/google/android/gms/tasks/Task;

    .line 580
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->get()Lcom/google/android/gms/tasks/Task;

    return-void

    .array-data 1
    .end array-data
.end method

.method updateAbtWithActivatedExperiments(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "FirebaseRemoteConfig"

    .line 648
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->firebaseAbt:Lcom/google/firebase/abt/FirebaseABTesting;

    if-nez v1, :cond_0

    return-void

    .line 656
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->toExperimentInfoMaps(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 657
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->firebaseAbt:Lcom/google/firebase/abt/FirebaseABTesting;

    invoke-virtual {v1, p1}, Lcom/google/firebase/abt/FirebaseABTesting;->replaceAllExperiments(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/firebase/abt/AbtException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Could not update ABT experiments."

    .line 663
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "Could not parse ABT experiments from the JSON response."

    .line 659
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
