.class public final Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;
.super Lcom/google/firebase/perf/config/ConfigurationFlag;
.source "ConfigurationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/config/ConfigurationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CollectionEnabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/ConfigurationFlag<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/firebase/perf/config/ConfigurationFlag;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected static declared-synchronized getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;

    .line 62
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected getDefault()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic getDefault()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigurationConstants$CollectionEnabled;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getDeviceCacheFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "isEnabled"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected getMetadataFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "firebase_performance_collection_enabled"

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
