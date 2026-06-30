.class public Lcom/google/firebase/perf/config/ConfigResolver;
.super Ljava/lang/Object;
.source "ConfigResolver.java"


# static fields
.field private static volatile instance:Lcom/google/firebase/perf/config/ConfigResolver;

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

.field private metadataBundle:Lcom/google/firebase/perf/util/ImmutableBundle;

.field private final remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/config/ConfigResolver;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/util/ImmutableBundle;Lcom/google/firebase/perf/config/DeviceCacheManager;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 78
    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    if-nez p2, :cond_1

    .line 79
    new-instance p2, Lcom/google/firebase/perf/util/ImmutableBundle;

    invoke-direct {p2}, Lcom/google/firebase/perf/util/ImmutableBundle;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->metadataBundle:Lcom/google/firebase/perf/util/ImmutableBundle;

    if-nez p3, :cond_2

    .line 81
    invoke-static {}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getInstance()Lcom/google/firebase/perf/config/DeviceCacheManager;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static clearInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 93
    sput-object v0, Lcom/google/firebase/perf/config/ConfigResolver;->instance:Lcom/google/firebase/perf/config/ConfigResolver;

    return-void

    .array-data 1
    .end array-data
.end method

.method private getDeviceCacheBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getDeviceCacheDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getDouble(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getLong(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getDeviceCacheString(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->getString(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/config/ConfigResolver;
    .locals 3

    const-class v0, Lcom/google/firebase/perf/config/ConfigResolver;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigResolver;->instance:Lcom/google/firebase/perf/config/ConfigResolver;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/google/firebase/perf/config/ConfigResolver;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/google/firebase/perf/config/ConfigResolver;-><init>(Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/util/ImmutableBundle;Lcom/google/firebase/perf/config/DeviceCacheManager;)V

    sput-object v1, Lcom/google/firebase/perf/config/ConfigResolver;->instance:Lcom/google/firebase/perf/config/ConfigResolver;

    .line 88
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigResolver;->instance:Lcom/google/firebase/perf/config/ConfigResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method private getIsSdkEnabled()Z
    .locals 4

    .line 223
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SdkEnabled;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SdkEnabled;

    move-result-object v0

    .line 227
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SdkEnabled;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;Z)Z

    .line 235
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 239
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 245
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SdkEnabled;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method private getIsSdkVersionDisabled()Z
    .locals 4

    .line 259
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SdkDisabledVersions;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SdkDisabledVersions;

    move-result-object v0

    .line 262
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigString(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SdkDisabledVersions;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isFireperfSdkVersionInList(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 270
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheString(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isFireperfSdkVersionInList(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 276
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SdkDisabledVersions;->getDefault()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->isFireperfSdkVersionInList(Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method private getMetadataBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->metadataBundle:Lcom/google/firebase/perf/util/ImmutableBundle;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getMetadataFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/ImmutableBundle;->getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getMetadataDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->metadataBundle:Lcom/google/firebase/perf/util/ImmutableBundle;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getMetadataFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/ImmutableBundle;->getDouble(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getMetadataLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->metadataBundle:Lcom/google/firebase/perf/util/ImmutableBundle;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getMetadataFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/ImmutableBundle;->getLong(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getRemoteConfigBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getRemoteConfigFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getBoolean(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getRemoteConfigDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getRemoteConfigFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getDouble(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getRemoteConfigFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getLong(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getRemoteConfigString(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getRemoteConfigFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getString(Ljava/lang/String;)Lcom/google/firebase/perf/util/Optional;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private getRemoteConfigValue(Lcom/google/firebase/perf/config/ConfigurationFlag;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/perf/config/ConfigurationFlag<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 875
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getRemoteConfigFlag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 877
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getDefault()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    goto :goto_0

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    .line 879
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigurationFlag;->getDefault()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 878
    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private isEventCountValid(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private isFireperfSdkVersionInList(Ljava/lang/String;)Z
    .locals 5

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 289
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/perf/BuildConfig;->FIREPERF_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    .array-data 1
    .end array-data
.end method

.method private isGaugeCaptureFrequencyMsValid(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private isSamplingRateValid(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private isSessionsMaxDurationMinutesValid(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private isTimeRangeSecValid(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAndCacheLogSourceName()Ljava/lang/String;
    .locals 5

    .line 741
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;

    move-result-object v0

    .line 743
    sget-object v1, Lcom/google/firebase/perf/BuildConfig;->ENFORCE_DEFAULT_LOG_SRC:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->getDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 748
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->getRemoteConfigFlag()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 752
    :cond_1
    iget-object v4, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 755
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-static {v2, v3}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->isLogSourceKnown(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 757
    invoke-static {v2, v3}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->getLogSourceName(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 759
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    .line 765
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheString(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 767
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 770
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$LogSourceName;->getDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getFragmentSamplingRate()D
    .locals 5

    .line 781
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;

    move-result-object v0

    .line 784
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 785
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 788
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v3

    if-eqz v3, :cond_0

    return-wide v1

    .line 794
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 795
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 796
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;D)Z

    .line 797
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 801
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 807
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$FragmentSamplingRate;->getDefault()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getIsExperimentTTIDEnabled()Z
    .locals 4

    .line 817
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$ExperimentTTID;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$ExperimentTTID;

    move-result-object v0

    .line 820
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 821
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 826
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 827
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$ExperimentTTID;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;Z)Z

    .line 829
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 833
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 834
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 835
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 839
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$ExperimentTTID;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIsPerformanceCollectionDeactivated()Ljava/lang/Boolean;
    .locals 3

    .line 171
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionDeactivated;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionDeactivated;

    move-result-object v0

    .line 174
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionDeactivated;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getIsPerformanceCollectionEnabled()Ljava/lang/Boolean;
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getIsPerformanceCollectionDeactivated()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;

    move-result-object v0

    .line 143
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 150
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getIsServiceCollectionEnabled()Z
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getIsSdkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getIsSdkVersionDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public getNetworkEventCountBackground()J
    .locals 5

    .line 684
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkEventCountBackground;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkEventCountBackground;

    move-result-object v0

    .line 687
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isEventCountValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkEventCountBackground;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 690
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 694
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 695
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isEventCountValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 700
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkEventCountBackground;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getNetworkEventCountForeground()J
    .locals 5

    .line 656
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkEventCountForeground;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkEventCountForeground;

    move-result-object v0

    .line 659
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isEventCountValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkEventCountForeground;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 662
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 666
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 667
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isEventCountValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 672
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkEventCountForeground;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getNetworkRequestSamplingRate()D
    .locals 5

    .line 335
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;

    move-result-object v0

    .line 338
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;D)Z

    .line 341
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 345
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 346
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->getDefaultOnRcFetchFail()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 356
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$NetworkRequestSamplingRate;->getDefault()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRateLimitSec()J
    .locals 5

    .line 712
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;

    move-result-object v0

    .line 715
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isTimeRangeSecValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 718
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 722
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 723
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isTimeRangeSecValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 728
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$RateLimitSec;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getSessionsCpuCaptureFrequencyBackgroundMs()J
    .locals 5

    .line 455
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyBackgroundMs;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyBackgroundMs;

    move-result-object v0

    .line 458
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 464
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyBackgroundMs;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 467
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 471
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 477
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyBackgroundMs;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionsCpuCaptureFrequencyForegroundMs()J
    .locals 5

    .line 414
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyForegroundMs;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyForegroundMs;

    move-result-object v0

    .line 417
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 423
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyForegroundMs;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 426
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 430
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 436
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyForegroundMs;->getDefaultOnRcFetchFail()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 441
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsCpuCaptureFrequencyForegroundMs;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getSessionsMaxDurationMinutes()J
    .locals 5

    .line 565
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMaxDurationMinutes;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMaxDurationMinutes;

    move-result-object v0

    .line 568
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 569
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSessionsMaxDurationMinutesValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 574
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSessionsMaxDurationMinutesValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMaxDurationMinutes;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 577
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 581
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSessionsMaxDurationMinutesValid(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 588
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMaxDurationMinutes;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionsMemoryCaptureFrequencyBackgroundMs()J
    .locals 5

    .line 533
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyBackgroundMs;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyBackgroundMs;

    move-result-object v0

    .line 536
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 537
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 542
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 543
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyBackgroundMs;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 545
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 549
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 555
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyBackgroundMs;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSessionsMemoryCaptureFrequencyForegroundMs()J
    .locals 5

    .line 492
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;

    move-result-object v0

    .line 495
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 501
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 502
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 504
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 508
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isGaugeCaptureFrequencyMsValid(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 515
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;->getDefaultOnRcFetchFail()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 519
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getSessionsSamplingRate()D
    .locals 5

    .line 368
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsSamplingRate;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsSamplingRate;

    move-result-object v0

    .line 371
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getMetadataDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 375
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v3

    if-eqz v3, :cond_0

    return-wide v1

    .line 381
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsSamplingRate;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;D)Z

    .line 384
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 388
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsSamplingRate;->getDefaultOnRcFetchFail()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 399
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsSamplingRate;->getDefault()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTraceEventCountBackground()J
    .locals 5

    .line 628
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceEventCountBackground;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$TraceEventCountBackground;

    move-result-object v0

    .line 631
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isEventCountValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceEventCountBackground;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 634
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 638
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 639
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isEventCountValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 640
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 644
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceEventCountBackground;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getTraceEventCountForeground()J
    .locals 5

    .line 600
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceEventCountForeground;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$TraceEventCountForeground;

    move-result-object v0

    .line 603
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 604
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isEventCountValid(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceEventCountForeground;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;J)Z

    .line 606
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 610
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheLong(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 611
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isEventCountValid(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 616
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceEventCountForeground;->getDefault()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public getTraceSamplingRate()D
    .locals 5

    .line 304
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceSamplingRate;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$TraceSamplingRate;

    move-result-object v0

    .line 307
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceSamplingRate;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;D)Z

    .line 310
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 314
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheDouble(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/config/ConfigResolver;->isSamplingRateValid(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->remoteConfigManager:Lcom/google/firebase/perf/config/RemoteConfigManager;

    invoke-virtual {v1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->isLastFetchFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceSamplingRate;->getDefaultOnRcFetchFail()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 325
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$TraceSamplingRate;->getDefault()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isCollectionEnabledConfigValueAvailable()Z
    .locals 2

    .line 163
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$SdkEnabled;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SdkEnabled;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRemoteConfigBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/perf/config/ConfigResolver;->getDeviceCacheBoolean(Lcom/google/firebase/perf/config/ConfigurationFlag;)Lcom/google/firebase/perf/util/Optional;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Optional;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isPerformanceMonitoringEnabled()Z
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getIsPerformanceCollectionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getIsServiceCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .array-data 1
    .end array-data
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 2

    .line 106
    sget-object v0, Lcom/google/firebase/perf/config/ConfigResolver;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    invoke-static {p1}, Lcom/google/firebase/perf/util/Utils;->isDebugLoggingEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->setLogcatEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setContext(Landroid/content/Context;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setContentProviderContext(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/config/ConfigResolver;->setApplicationContext(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDeviceCacheManager(Lcom/google/firebase/perf/config/DeviceCacheManager;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setIsPerformanceCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getIsPerformanceCollectionDeactivated()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;->getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;->getDeviceCacheFlag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 198
    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/perf/config/DeviceCacheManager;->setValue(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 201
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->deviceCacheManager:Lcom/google/firebase/perf/config/DeviceCacheManager;

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/config/DeviceCacheManager;->clear(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetadataBundle(Lcom/google/firebase/perf/util/ImmutableBundle;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/firebase/perf/config/ConfigResolver;->metadataBundle:Lcom/google/firebase/perf/util/ImmutableBundle;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
