.class Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;
.super Lcom/singular/sdk/internal/SingularParamsBase;
.source "ApiGDPRUnder13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiGDPRUnder13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularParamsBase;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static build(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;
    .locals 2

    .line 479
    new-instance v0, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;

    invoke-direct {v0}, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;-><init>()V

    .line 489
    invoke-direct {v0}, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;->withBaseParams()Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;

    move-result-object v0

    .line 499
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;->withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;

    move-result-object v0

    .line 509
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withBaseParams()Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;
    .locals 2

    const-string v0, "op"

    const-string/jumbo v1, "under_13"

    .line 549
    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;
    .locals 1

    const-string v0, "a"

    .line 609
    iget-object p1, p1, Lcom/singular/sdk/SingularConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;
    .locals 1

    .line 659
    invoke-super {p0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;

    const-string p1, "sdk"

    .line 669
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiGDPRUnder13$Params;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
