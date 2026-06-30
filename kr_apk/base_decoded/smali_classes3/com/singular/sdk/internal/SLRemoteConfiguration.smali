.class public Lcom/singular/sdk/internal/SLRemoteConfiguration;
.super Ljava/lang/Object;
.source "SLRemoteConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;
    }
.end annotation


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private slRemoteConfigurationAdmonBatching:Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "admon_batching"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SLRemoteConfiguration"

    .line 619
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/SLRemoteConfiguration;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance v0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;

    invoke-direct {v0}, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;-><init>()V

    iput-object v0, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration;->slRemoteConfigurationAdmonBatching:Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static defaultConfig()Lcom/singular/sdk/internal/SLRemoteConfiguration;
    .locals 1

    .line 1109
    new-instance v0, Lcom/singular/sdk/internal/SLRemoteConfiguration;

    invoke-direct {v0}, Lcom/singular/sdk/internal/SLRemoteConfiguration;-><init>()V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/singular/sdk/internal/SLRemoteConfiguration;
    .locals 2

    .line 1019
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1029
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/singular/sdk/internal/SLRemoteConfiguration;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/singular/sdk/internal/SLRemoteConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1049
    sget-object v0, Lcom/singular/sdk/internal/SLRemoteConfiguration;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 1059
    new-instance p0, Lcom/singular/sdk/internal/SLRemoteConfiguration;

    invoke-direct {p0}, Lcom/singular/sdk/internal/SLRemoteConfiguration;-><init>()V

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 809
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 819
    :cond_2
    check-cast p1, Lcom/singular/sdk/internal/SLRemoteConfiguration;

    .line 829
    iget-object v0, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration;->slRemoteConfigurationAdmonBatching:Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;

    iget-object p1, p1, Lcom/singular/sdk/internal/SLRemoteConfiguration;->slRemoteConfigurationAdmonBatching:Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 669
    iget-object v2, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration;->slRemoteConfigurationAdmonBatching:Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isAdmonEventsDebug()Z
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration;->slRemoteConfigurationAdmonBatching:Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->isDebug()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isAggregateAdmonEvents()Z
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration;->slRemoteConfigurationAdmonBatching:Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->isAggregateAdmonEvents()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 2

    .line 909
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 929
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 949
    sget-object v1, Lcom/singular/sdk/internal/SLRemoteConfiguration;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 959
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
