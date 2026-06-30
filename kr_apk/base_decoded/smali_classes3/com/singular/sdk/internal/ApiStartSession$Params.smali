.class Lcom/singular/sdk/internal/ApiStartSession$Params;
.super Lcom/singular/sdk/internal/SingularParamsBase;
.source "ApiStartSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiStartSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2719
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularParamsBase;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static build(JLcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 1

    .line 2759
    new-instance v0, Lcom/singular/sdk/internal/ApiStartSession$Params;

    invoke-direct {v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;-><init>()V

    .line 2769
    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withId(J)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p0

    .line 2779
    invoke-virtual {p2}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p0

    .line 2789
    invoke-virtual {p2}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p0

    .line 2799
    invoke-virtual {p2}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withConnectionType(Ljava/lang/String;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p0

    .line 2809
    invoke-direct {p0, p2}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withAppInstallInfo(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p0

    .line 2819
    invoke-direct {p0, p2}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withInstallReferrer(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p0

    .line 2829
    invoke-direct {p0, p2}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withDTInstallReferrer(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p0

    .line 2839
    invoke-direct {p0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withUtils()Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withAppInstallInfo(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 1

    .line 4449
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getIsFirstInstall()Z

    move-result p1

    const-string v0, "is"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true"

    .line 4459
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 4479
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private withConnectionType(Ljava/lang/String;)Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 1

    const-string v0, "c"

    .line 3339
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withDTInstallReferrer(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 2

    .line 3139
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getIsFirstInstall()Z

    move-result v0

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getDTInstallReferrer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const-string v0, "dt_referrer"

    .line 3149
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getDTInstallReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withId(J)Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 1

    const-string v0, "s"

    .line 3289
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withInstallReferrer(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 2

    .line 2879
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getIsFirstInstall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2889
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getGoogleInstallReferrer()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2899
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getGoogleInstallReferrer()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_ref"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2929
    :cond_0
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getInstallReferrerTimeInterval()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_ref_timeinterval"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2949
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2979
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getSamsungInstallReferrer()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2989
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getSamsungInstallReferrer()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3029
    :cond_1
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getMetaInstallReferrer()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3039
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getMetaInstallReferrer()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3069
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "referrer_data"

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 6

    const-string v0, "a"

    .line 3389
    iget-object v1, p1, Lcom/singular/sdk/SingularConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3409
    iget-object v0, p1, Lcom/singular/sdk/SingularConfig;->openUri:Landroid/net/Uri;

    .line 3419
    invoke-static {v0}, Lcom/singular/sdk/internal/utils/UriUtils;->isValid(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, "extra"

    const-string v3, "referrer"

    const-string v4, "ref"

    if-eqz v1, :cond_0

    .line 3429
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3439
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3479
    :cond_0
    iget-object v0, p1, Lcom/singular/sdk/SingularConfig;->ddlHandler:Lcom/singular/sdk/SingularConfig$DDLHandler;

    const-string v1, "ddl_enabled"

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/singular/sdk/SingularConfig;->linkCallback:Lcom/singular/sdk/SingularLinkHandler;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "false"

    .line 3519
    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo v0, "true"

    .line 3489
    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3499
    iget-object v0, p1, Lcom/singular/sdk/SingularConfig;->ddlHandler:Lcom/singular/sdk/SingularConfig$DDLHandler;

    iget-wide v0, v0, Lcom/singular/sdk/SingularConfig$DDLHandler;->timeoutInSec:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ddl_to"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3549
    :goto_1
    iget-object v0, p1, Lcom/singular/sdk/SingularConfig;->singularLink:Landroid/net/Uri;

    .line 3579
    invoke-static {v0}, Lcom/singular/sdk/internal/utils/UriUtils;->isValid(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3589
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3599
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 3619
    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3629
    invoke-virtual {p0, v4, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3649
    :cond_3
    invoke-static {v3}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3659
    invoke-virtual {p0, v2, v3}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3689
    :cond_4
    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isESPLink(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "esp_link"

    .line 3699
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3709
    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->resolveESPLink(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 3739
    :cond_5
    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->validateSingularLink(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3749
    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isShortLink(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3779
    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->handleSingularLink(Landroid/net/Uri;)V

    :cond_6
    const-string v2, "singular_link"

    .line 3809
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3819
    iget-wide v2, p1, Lcom/singular/sdk/SingularConfig;->shortlinkTimeoutSec:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "singular_link_resolve_timeout"

    invoke-virtual {p0, v2, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "singular_link_resolve_required"

    .line 3829
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    const/4 v0, 0x0

    .line 3869
    iput-object v0, p1, Lcom/singular/sdk/SingularConfig;->singularLink:Landroid/net/Uri;

    :cond_8
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private withUtils()Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 2

    .line 3219
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getASIDTimeInterval()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asid_timeinterval"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3229
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getASIDScope()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asid_scope"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiStartSession$Params;
    .locals 3

    .line 3939
    invoke-super {p0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;

    const-string v0, "ab"

    .line 3959
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->abi:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "av"

    .line 3969
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "br"

    .line 3979
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->deviceBrand:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "de"

    .line 3989
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->deviceBuild:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ma"

    .line 3999
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->deviceManufacturer:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mo"

    .line 4009
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->deviceModel:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "n"

    .line 4019
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->appName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "pr"

    .line 4029
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->buildProduct:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "sdk"

    .line 4039
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4049
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

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "v"

    .line 4069
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4089
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->installSource:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "src"

    .line 4099
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->installSource:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4129
    :cond_3
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->gcmRegId:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ri"

    .line 4139
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->gcmRegId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4169
    :cond_4
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->fcmRegId:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "fi"

    .line 4179
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->fcmRegId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4209
    :cond_5
    invoke-virtual {p1}, Lcom/singular/sdk/internal/DeviceInfo;->hasPreloadCampaign()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "apc"

    .line 4219
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->preloadCampaign:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "apg"

    .line 4229
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->preloadGroup:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "aps"

    .line 4239
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->preloadSource:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4269
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lc"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4289
    iget-wide v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_time"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4299
    iget-wide v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->lastUpdateTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "update_time"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4319
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_device_time"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "device_type"

    .line 4339
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->deviceType:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "custom_user_id"

    .line 4359
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->customUserId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4379
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->deviceUserAgent:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "device_user_agent"

    .line 4389
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->deviceUserAgent:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    return-object p0

    .array-data 1
    .end array-data
.end method

.method protected bridge synthetic withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;
    .locals 0

    .line 2689
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
