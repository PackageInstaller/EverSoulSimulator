.class public Lcom/singular/sdk/SingularAdData;
.super Lorg/json/JSONObject;
.source "SingularAdData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/SingularAdData$AdPlatforms;
    }
.end annotation


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private final RequiredParams:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SingularAdData"

    .line 139
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 4

    .line 259
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "ad_platform"

    const-string v1, "ad_currency"

    const-string v2, "ad_revenue"

    .line 199
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/singular/sdk/SingularAdData;->RequiredParams:[Ljava/lang/String;

    .line 279
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    invoke-virtual {p0, v1, p2}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    invoke-virtual {p0, v2, p3, p4}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "r"

    .line 309
    invoke-virtual {p0, v0, p3, p4}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p3, "pcc"

    .line 319
    invoke-virtual {p0, p3, p2}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "is_admon_revenue"

    const/4 p3, 0x1

    .line 329
    invoke-virtual {p0, p2, p3}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "is_revenue_event"

    .line 339
    invoke-virtual {p0, p2, p3}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "ad_mediation_platform"

    .line 369
    invoke-virtual {p0, p2, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    sget-object p2, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p3, "Error in constructing ad data"

    invoke-virtual {p2, p3, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method hasRequiredParams()Z
    .locals 6

    .line 1639
    iget-object v0, p0, Lcom/singular/sdk/SingularAdData;->RequiredParams:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1659
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/singular/sdk/SingularAdData;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/singular/sdk/SingularAdData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return v2

    :cond_2
    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method

.method public withAdGroupId(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_group_id"

    .line 1149
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1169
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting ad group id"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withAdGroupName(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_group_name"

    .line 1249
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1269
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting ad group name"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withAdGroupPriority(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_group_priority"

    .line 1349
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1369
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting ad group priority"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withAdGroupType(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_group_type"

    .line 649
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 669
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting ad group Type"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withAdPlacementName(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_placement_name"

    .line 849
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 869
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting ad placement name id"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withAdType(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_type"

    .line 549
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 569
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting ad type"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_unit_id"

    .line 949
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 969
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting ad unit id"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withAdUnitName(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_unit_name"

    .line 1049
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1069
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting ad unit name"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withImpressionId(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_impression_id"

    .line 749
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 769
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting impression id"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withNetworkName(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_mediation_platform"

    .line 449
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 469
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting network name"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withPlacementId(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_placement_id"

    .line 1549
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1569
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting placement id"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public withPrecision(Ljava/lang/String;)Lcom/singular/sdk/SingularAdData;
    .locals 2

    :try_start_0
    const-string v0, "ad_precision"

    .line 1449
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/SingularAdData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1469
    sget-object v0, Lcom/singular/sdk/SingularAdData;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Error in setting precision"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
