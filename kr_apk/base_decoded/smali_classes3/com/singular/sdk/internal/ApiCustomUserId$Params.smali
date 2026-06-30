.class Lcom/singular/sdk/internal/ApiCustomUserId$Params;
.super Lcom/singular/sdk/internal/SingularParamsBase;
.source "ApiCustomUserId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiCustomUserId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularParamsBase;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static build(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiCustomUserId$Params;
    .locals 2

    .line 689
    new-instance v0, Lcom/singular/sdk/internal/ApiCustomUserId$Params;

    invoke-direct {v0}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;-><init>()V

    .line 699
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiCustomUserId$Params;

    move-result-object v0

    .line 709
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiCustomUserId$Params;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiCustomUserId$Params;
    .locals 1

    const-string v0, "a"

    .line 749
    iget-object p1, p1, Lcom/singular/sdk/SingularConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiCustomUserId$Params;
    .locals 3

    .line 809
    invoke-super {p0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;

    const-string v0, "sdk"

    .line 819
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "av"

    .line 829
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "n"

    .line 839
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->appName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 849
    iget-boolean v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->isGooglePlayServicesAvailable:Z

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->isLimitedTrackingEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->isAmazonAvailable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->isLimitedTrackingEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const-string v1, "-1"

    :goto_0
    const-string v0, "dnt"

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "custom_user_id"

    .line 869
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->customUserId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;
    .locals 0

    .line 619
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/ApiCustomUserId$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiCustomUserId$Params;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
