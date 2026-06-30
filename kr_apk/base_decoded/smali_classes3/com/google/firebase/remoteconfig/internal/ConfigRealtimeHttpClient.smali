.class public Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;
.super Ljava/lang/Object;
.source "ConfigRealtimeHttpClient.java"


# static fields
.field private static final API_KEY_HEADER:Ljava/lang/String; = "X-Goog-Api-Key"

.field static final BACKOFF_TIME_DURATIONS_IN_MINUTES:[I

.field private static final GMP_APP_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static final INSTALLATIONS_AUTH_TOKEN_HEADER:Ljava/lang/String; = "X-Goog-Firebase-Installations-Auth"

.field private static final X_ACCEPT_RESPONSE_STREAMING:Ljava/lang/String; = "X-Accept-Response-Streaming"

.field private static final X_ANDROID_CERT_HEADER:Ljava/lang/String; = "X-Android-Cert"

.field private static final X_ANDROID_PACKAGE_HEADER:Ljava/lang/String; = "X-Android-Package"

.field private static final X_GOOGLE_GFE_CAN_RETRY:Ljava/lang/String; = "X-Google-GFE-Can-Retry"


# instance fields
.field private final ORIGINAL_RETRIES:I

.field activatedCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field private final clock:Lcom/google/android/gms/common/util/Clock;

.field private final configFetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

.field private final context:Landroid/content/Context;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private httpRetriesRemaining:I

.field private isHttpConnectionRunning:Z

.field private isInBackground:Z

.field private isRealtimeDisabled:Z

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

.field private final random:Ljava/util/Random;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 71
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->BACKOFF_TIME_DURATIONS_IN_MINUTES:[I

    const-string v0, "^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->GMP_APP_ID_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/remoteconfig/ConfigUpdateListener;",
            ">;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 103
    iput v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->ORIGINAL_RETRIES:I

    .line 126
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->listeners:Ljava/util/Set;

    const/4 p7, 0x0

    .line 127
    iput-boolean p7, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isHttpConnectionRunning:Z

    .line 128
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 131
    new-instance p9, Ljava/util/Random;

    invoke-direct {p9}, Ljava/util/Random;-><init>()V

    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->random:Ljava/util/Random;

    .line 135
    invoke-virtual {p8}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getRealtimeBackoffMetadata()Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;

    move-result-object p9

    invoke-virtual {p9}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;->getNumFailedStreams()I

    move-result p9

    sub-int/2addr v0, p9

    const/4 p9, 0x1

    .line 134
    invoke-static {v0, p9}, Ljava/lang/Math;->max(II)I

    move-result p9

    iput p9, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->httpRetriesRemaining:I

    .line 137
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p9

    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->clock:Lcom/google/android/gms/common/util/Clock;

    .line 139
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 140
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->configFetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 141
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 142
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->activatedCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    .line 143
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->context:Landroid/content/Context;

    .line 144
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->namespace:Ljava/lang/String;

    .line 145
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    .line 146
    iput-boolean p7, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isRealtimeDisabled:Z

    .line 147
    iput-boolean p7, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isInBackground:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->enableBackoff()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->propagateErrors(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized canMakeHttpStreamConnection()Z
    .locals 1

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isHttpConnectionRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isRealtimeDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isInBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private createRequestBody(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 200
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->extractProjectNumberFromAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "project"

    .line 199
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "namespace"

    .line 201
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->namespace:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->configFetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 203
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->getTemplateVersionNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastKnownVersionNumber"

    .line 202
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkVersion"

    const-string v2, "21.5.0"

    .line 205
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appInstanceId"

    .line 206
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized enableBackoff()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 282
    :try_start_0
    iput-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isRealtimeDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
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

.method private static extractProjectNumberFromAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 151
    sget-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->GMP_APP_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private getFingerprintHashForPackage()Ljava/lang/String;
    .locals 5

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "Could not get fingerprint hash for package: "

    const/4 v2, 0x0

    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->context:Landroid/content/Context;

    .line 162
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_0

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 167
    invoke-static {v3, v1}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 170
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No such package: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    nop

    .array-data 1
    .end array-data
.end method

.method private getRandomizedBackoffDurationInMillis(I)J
    .locals 4

    .line 268
    sget-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->BACKOFF_TIME_DURATIONS_IN_MINUTES:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 274
    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    int-to-long v2, p1

    .line 275
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    .line 278
    div-long v2, v0, v2

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->random:Ljava/util/Random;

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long v0, p1

    add-long/2addr v2, v0

    return-wide v2

    .array-data 1
    .end array-data
.end method

.method private getRealtimeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 293
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 295
    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->extractProjectNumberFromAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "https://firebaseremoteconfigrealtime.googleapis.com/v1/projects/%s/namespaces/%s:streamFetchInvalidations"

    .line 293
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private getUrl()Ljava/net/URL;
    .locals 2

    .line 302
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->namespace:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->getRealtimeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "URL is malformed"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private isStatusCodeRetryable(I)Z
    .locals 1

    const/16 v0, 0x198

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_0

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

.method private declared-synchronized makeRealtimeHttpConnection(J)V
    .locals 3

    monitor-enter p0

    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->canMakeHttpStreamConnection()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 372
    monitor-exit p0

    return-void

    .line 375
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->httpRetriesRemaining:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 376
    iput v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->httpRetriesRemaining:I

    .line 377
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$1;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 386
    :cond_1
    iget-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isInBackground:Z

    if-nez p1, :cond_2

    .line 387
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string p2, "Unable to connect to the server. Check your connection and try again."

    sget-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->CONFIG_UPDATE_STREAM_ERROR:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    invoke-direct {p1, p2, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->propagateErrors(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :cond_2
    :goto_0
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

.method private parseForbiddenErrorResponseMessage(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 450
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Unable to connect to the server, access is forbidden. HTTP status code: 403"

    return-object p1

    .line 460
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized propagateErrors(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 2

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/remoteconfig/ConfigUpdateListener;

    .line 226
    invoke-interface {v1, p1}, Lcom/google/firebase/remoteconfig/ConfigUpdateListener;->onError(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 228
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

.method private declared-synchronized resetRetryCount()V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x8

    .line 399
    :try_start_0
    iput v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->httpRetriesRemaining:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method private setCommonRequestHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 1

    const-string v0, "X-Goog-Firebase-Installations-Auth"

    .line 177
    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Goog-Api-Key"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-Android-Package"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-Android-Cert"

    .line 184
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->getFingerprintHashForPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-Google-GFE-Can-Retry"

    const-string/jumbo v0, "yes"

    .line 187
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-Accept-Response-Streaming"

    const-string/jumbo v0, "true"

    .line 190
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string v0, "application/json"

    .line 193
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Accept"

    .line 194
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private declared-synchronized setIsHttpConnectionRunning(Z)V
    .locals 0

    monitor-enter p0

    .line 403
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isHttpConnectionRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method private updateBackoffMetadataWithLastFailedStreamConnectionTime(Ljava/util/Date;)V
    .locals 6

    .line 251
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getRealtimeBackoffMetadata()Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;->getNumFailedStreams()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 255
    invoke-direct {p0, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->getRandomizedBackoffDurationInMillis(I)J

    move-result-wide v1

    .line 256
    new-instance v3, Ljava/util/Date;

    .line 257
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 259
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-virtual {p1, v0, v3}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->setRealtimeBackoffMetadata(ILjava/util/Date;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public beginRealtimeHttpStream()V
    .locals 4

    .line 472
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->canMakeHttpStreamConnection()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    .line 477
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getRealtimeBackoffMetadata()Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;

    move-result-object v0

    .line 478
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 479
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;->getBackoffEndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->retryHttpConnectionWhenBackoffEnds()V

    return-void

    .line 485
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->createRealtimeConnection()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/tasks/Task;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 487
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;Lcom/google/android/gms/tasks/Task;)V

    .line 488
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public closeRealtimeHttpStream(Ljava/net/HttpURLConnection;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 571
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 572
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public createRealtimeConnection()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 316
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v2}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/tasks/Task;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 318
    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 319
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBackoffEndTime()Ljava/util/Date;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getRealtimeBackoffMetadata()Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;->getBackoffEndTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNumberOfFailedStreams()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getRealtimeBackoffMetadata()Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;->getNumFailedStreams()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$beginRealtimeHttpStream$1$com-google-firebase-remoteconfig-internal-ConfigRealtimeHttpClient(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "Unable to connect to the server. Try again in a few minutes. HTTP status code: %d"

    const/16 v0, 0x193

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 496
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 499
    invoke-direct {p0, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->setIsHttpConnectionRunning(Z)V

    .line 502
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 503
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->resetRetryCount()V

    .line 509
    iget-object v6, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    invoke-virtual {v6}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->resetRealtimeBackoff()V

    .line 512
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->startAutoFetch(Ljava/net/HttpURLConnection;)Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;

    move-result-object v6

    .line 513
    invoke-virtual {v6}, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;->listenForNotifications()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 524
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->closeRealtimeHttpStream(Ljava/net/HttpURLConnection;)V

    .line 525
    invoke-direct {p0, v3}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->setIsHttpConnectionRunning(Z)V

    if-eqz v5, :cond_2

    .line 528
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isStatusCodeRetryable(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v2

    :goto_1
    if-eqz v6, :cond_3

    .line 530
    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->clock:Lcom/google/android/gms/common/util/Clock;

    .line 531
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 530
    invoke-direct {p0, v7}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->updateBackoffMetadataWithLastFailedStreamConnectionTime(Ljava/util/Date;)V

    :cond_3
    if-nez v6, :cond_6

    .line 537
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_4

    goto :goto_3

    :cond_4
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v3

    .line 541
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 547
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 549
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->parseForbiddenErrorResponseMessage(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    .line 551
    :cond_5
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    .line 553
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->CONFIG_UPDATE_STREAM_ERROR:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    invoke-direct {p1, v0, p2, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    .line 551
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->propagateErrors(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V

    goto/16 :goto_7

    .line 538
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->retryHttpConnectionWhenBackoffEnds()V

    goto/16 :goto_7

    :catch_0
    move-exception v6

    goto :goto_4

    :catchall_0
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto/16 :goto_8

    :catch_1
    move-exception v6

    move-object v5, v4

    goto :goto_4

    .line 497
    :cond_7
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    move-object v5, v4

    move-object v4, p1

    move-object p1, v5

    goto :goto_8

    :catch_2
    move-exception v6

    move-object p1, v4

    move-object v5, p1

    :goto_4
    :try_start_4
    const-string v7, "FirebaseRemoteConfig"

    const-string v8, "Exception connecting to real-time RC backend. Retrying the connection..."

    .line 519
    invoke-static {v7, v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 524
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->closeRealtimeHttpStream(Ljava/net/HttpURLConnection;)V

    .line 525
    invoke-direct {p0, v3}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->setIsHttpConnectionRunning(Z)V

    if-eqz v5, :cond_9

    .line 528
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isStatusCodeRetryable(I)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move v6, v3

    goto :goto_6

    :cond_9
    :goto_5
    move v6, v2

    :goto_6
    if-eqz v6, :cond_a

    .line 530
    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->clock:Lcom/google/android/gms/common/util/Clock;

    .line 531
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 530
    invoke-direct {p0, v7}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->updateBackoffMetadataWithLastFailedStreamConnectionTime(Ljava/util/Date;)V

    :cond_a
    if-nez v6, :cond_6

    .line 537
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_b

    goto :goto_3

    :cond_b
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v3

    .line 541
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 547
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 549
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->parseForbiddenErrorResponseMessage(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    .line 551
    :cond_c
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    .line 553
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->CONFIG_UPDATE_STREAM_ERROR:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    invoke-direct {p1, v0, p2, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    goto :goto_2

    .line 559
    :goto_7
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_2
    move-exception v4

    .line 524
    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->closeRealtimeHttpStream(Ljava/net/HttpURLConnection;)V

    .line 525
    invoke-direct {p0, v3}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->setIsHttpConnectionRunning(Z)V

    if-eqz v5, :cond_e

    .line 528
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isStatusCodeRetryable(I)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_9

    :cond_d
    move v6, v3

    goto :goto_a

    :cond_e
    :goto_9
    move v6, v2

    :goto_a
    if-eqz v6, :cond_f

    .line 530
    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->clock:Lcom/google/android/gms/common/util/Clock;

    .line 531
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 530
    invoke-direct {p0, v7}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->updateBackoffMetadataWithLastFailedStreamConnectionTime(Ljava/util/Date;)V

    :cond_f
    if-nez v6, :cond_11

    .line 537
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v1, :cond_11

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v3

    .line 541
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 547
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 549
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->parseForbiddenErrorResponseMessage(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    .line 551
    :cond_10
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    .line 553
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->CONFIG_UPDATE_STREAM_ERROR:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    invoke-direct {p1, v0, p2, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->propagateErrors(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V

    goto :goto_b

    .line 538
    :cond_11
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->retryHttpConnectionWhenBackoffEnds()V

    .line 557
    :goto_b
    throw v4

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic lambda$createRealtimeConnection$0$com-google-firebase-remoteconfig-internal-ConfigRealtimeHttpClient(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    if-nez p3, :cond_0

    .line 323
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string p3, "Firebase Installations failed to get installation auth token for config update listener connection."

    .line 326
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    invoke-static {p2}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 328
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    if-nez p3, :cond_1

    .line 329
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string p3, "Firebase Installations failed to get installation ID for config update listener connection."

    .line 332
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 337
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->getUrl()Ljava/net/URL;

    move-result-object p3

    .line 338
    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    .line 340
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/installations/InstallationTokenResult;

    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 342
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->setRequestParams(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 344
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    const-string p3, "Failed to open HTTP stream connection"

    invoke-direct {p2, p3, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized retryHttpConnectionWhenBackoffEnds()V
    .locals 5

    monitor-enter p0

    .line 361
    :try_start_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->clock:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 362
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->metadataClient:Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;

    .line 365
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient;->getRealtimeBackoffMetadata()Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigMetadataClient$RealtimeBackoffMetadata;->getBackoffEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 366
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 363
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 367
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->makeRealtimeHttpConnection(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
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

.method setRealtimeBackgroundState(Z)V
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->isInBackground:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setRequestParams(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "POST"

    .line 215
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->setCommonRequestHeaders(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->createRequestBody(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "utf-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 218
    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 219
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 220
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 221
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized startAutoFetch(Ljava/net/HttpURLConnection;)Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;
    .locals 8

    monitor-enter p0

    .line 412
    :try_start_0
    new-instance v5, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$2;

    invoke-direct {v5, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient$2;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;)V

    .line 426
    new-instance v7, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->configFetchHandler:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->activatedCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->listeners:Ljava/util/Set;

    iget-object v6, p0, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/remoteconfig/internal/ConfigAutoFetch;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/util/Set;Lcom/google/firebase/remoteconfig/ConfigUpdateListener;Ljava/util/concurrent/ScheduledExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public startHttpConnection()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 355
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigRealtimeHttpClient;->makeRealtimeHttpConnection(J)V

    return-void

    .array-data 1
    .end array-data
.end method
