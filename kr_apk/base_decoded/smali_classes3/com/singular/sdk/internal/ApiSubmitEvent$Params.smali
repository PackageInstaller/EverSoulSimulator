.class Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
.super Lcom/singular/sdk/internal/SingularParamsBase;
.source "ApiSubmitEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiSubmitEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1369
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularParamsBase;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static build(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
    .locals 7

    .line 1409
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getSessionManager()Lcom/singular/sdk/internal/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SessionManager;->getSessionId()J

    move-result-wide v0

    .line 1419
    new-instance v2, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    invoke-direct {v2}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;-><init>()V

    iget-object v3, p0, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;->name:Ljava/lang/String;

    .line 1429
    invoke-direct {v2, v3}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->withName(Ljava/lang/String;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object v2

    iget-object v3, p0, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;->extra:Ljava/lang/String;

    .line 1439
    invoke-direct {v2, v3}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->withExtra(Ljava/lang/String;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object v2

    iget-wide v3, p0, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;->timestamp:J

    sub-long/2addr v3, v0

    long-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v3, v5

    .line 1449
    invoke-direct {v2, v3, v4}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->withSecondsIntoSession(D)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object p0

    .line 1459
    invoke-direct {p0, v0, v1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->withSession(J)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object p0

    .line 1469
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getSessionManager()Lcom/singular/sdk/internal/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SessionManager;->getNextSequenceNumber()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->withSequence(J)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object p0

    .line 1479
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object p0

    .line 1489
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withExtra(Ljava/lang/String;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
    .locals 4

    .line 1709
    :try_start_0
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, "is_revenue_event"

    if-eqz v0, :cond_0

    .line 1719
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1739
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1769
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "e"

    .line 1809
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1829
    invoke-static {}, Lcom/singular/sdk/internal/ApiSubmitEvent;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "Error in JSON serialization"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private withName(Ljava/lang/String;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
    .locals 1

    const-string v0, "n"

    .line 1529
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withSecondsIntoSession(D)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
    .locals 1

    const-string v0, "t"

    .line 1629
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withSequence(J)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
    .locals 1

    const-string v0, "seq"

    .line 1899
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withSession(J)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
    .locals 1

    const-string v0, "s"

    .line 1579
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
    .locals 1

    const-string v0, "a"

    .line 1949
    iget-object p1, p1, Lcom/singular/sdk/SingularConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;
    .locals 2

    .line 1999
    invoke-super {p0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;

    const-string v0, "av"

    .line 2019
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "sdk"

    .line 2029
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "custom_user_id"

    .line 2049
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->customUserId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;
    .locals 0

    .line 1339
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/ApiSubmitEvent$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiSubmitEvent$Params;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
