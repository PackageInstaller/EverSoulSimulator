.class public Lcom/singular/sdk/Singular;
.super Ljava/lang/Object;
.source "Singular.java"


# static fields
.field private static isInstanceAlreadyInitialized:Z

.field private static limitedIdentifiersEnabled:Ljava/lang/Boolean;

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;

.field private static saved_application_context:Landroid/content/Context;

.field private static singular:Lcom/singular/sdk/internal/SingularInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Singular"

    .line 409
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v0, 0x0

    .line 459
    sput-boolean v0, Lcom/singular/sdk/Singular;->isInstanceAlreadyInitialized:Z

    const/4 v1, 0x0

    .line 489
    sput-object v1, Lcom/singular/sdk/Singular;->saved_application_context:Landroid/content/Context;

    .line 509
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/Singular;->limitedIdentifiersEnabled:Ljava/lang/Boolean;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static adRevenue(Lcom/singular/sdk/SingularAdData;)V
    .locals 1

    .line 5389
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/singular/sdk/SingularAdData;->hasRequiredParams()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "__ADMON_USER_LEVEL_REVENUE__"

    .line 5419
    invoke-static {v0, p0}, Lcom/singular/sdk/Singular;->eventJSON(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 5439
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 5449
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static clearGlobalProperties()V
    .locals 2

    .line 4999
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5009
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->clearGlobalProperties()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5029
    sget-object v1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static createReferrerShortLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/singular/sdk/ShortLinkHandler;)V
    .locals 6

    if-nez p4, :cond_0

    return-void

    .line 5669
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/singular/sdk/internal/SingularInstance;->createReferrerShortLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/singular/sdk/ShortLinkHandler;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static customRevenue(Ljava/lang/String;Ljava/lang/String;D)Z
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "pcc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v2, "r"

    aput-object v2, v0, p1

    const/4 p1, 0x3

    .line 2789
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    const-string p2, "is_revenue_event"

    aput-object p2, v0, p1

    const/4 p1, 0x5

    .line 2799
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    .line 2769
    invoke-static {p0, v0}, Lcom/singular/sdk/Singular;->event(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 2329
    invoke-static/range {v0 .. v5}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/Object;Ljava/util/Map;)Z

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/Object;Ljava/util/Map;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v0, p4

    move-object/from16 v5, p5

    if-eqz v0, :cond_1

    .line 2369
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.billingclient.api.Purchase"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2389
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 2399
    invoke-static/range {p4 .. p4}, Lcom/singular/sdk/Singular;->getSku(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "getOriginalJson"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    .line 2409
    invoke-virtual {v6, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "getSignature"

    new-array v11, v9, [Ljava/lang/Class;

    .line 2419
    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "receipt_signature"

    const-string v11, "receipt"

    const-string v12, "pk"

    const-string v13, "is_revenue_event"

    const-string v14, "r"

    const-string v15, "pcc"

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    .line 2459
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2469
    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2479
    invoke-virtual {v0, v14, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2489
    invoke-virtual {v0, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2499
    invoke-virtual {v0, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2509
    invoke-virtual {v0, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2519
    invoke-virtual {v0, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2539
    invoke-static {v1, v0}, Lcom/singular/sdk/Singular;->eventJSON(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catch_0
    move-exception v0

    .line 2559
    :try_start_2
    sget-object v9, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v0, v9

    const/4 v9, 0x1

    aput-object v2, v0, v9

    const/4 v9, 0x2

    aput-object v14, v0, v9

    .line 2619
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v14, 0x3

    aput-object v9, v0, v14

    const/4 v9, 0x4

    aput-object v12, v0, v9

    const/4 v9, 0x5

    aput-object v7, v0, v9

    const/4 v7, 0x6

    aput-object v11, v0, v7

    const/4 v7, 0x7

    aput-object v8, v0, v7

    const/16 v7, 0x8

    aput-object v10, v0, v7

    const/16 v7, 0x9

    aput-object v6, v0, v7

    const/16 v6, 0xa

    aput-object v13, v0, v6

    const/4 v6, 0x1

    .line 2659
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v0, v7

    .line 2599
    invoke-static {v1, v0}, Lcom/singular/sdk/Singular;->event(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2689
    sget-object v6, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v7, "customRevenue has encountered an unexpected exception. Please verify that the \'purchase\' object is of type \'com.android.billingclient.api.Purchase\'"

    invoke-virtual {v6, v7, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2729
    :cond_1
    invoke-static {v1, v2, v3, v4, v5}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public static customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "pcc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v2, "r"

    aput-object v2, v0, p1

    const/4 p1, 0x3

    .line 3019
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    const-string p2, "receipt"

    aput-object p2, v0, p1

    const/4 p1, 0x5

    aput-object p4, v0, p1

    const/4 p1, 0x6

    const-string p2, "receipt_signature"

    aput-object p2, v0, p1

    const/4 p1, 0x7

    aput-object p5, v0, p1

    const/16 p1, 0x8

    const-string p2, "is_revenue_event"

    aput-object p2, v0, p1

    const/16 p1, 0x9

    .line 3049
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    .line 2999
    invoke-static {p0, v0}, Lcom/singular/sdk/Singular;->event(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)Z
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "pcc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v2, "r"

    aput-object v2, v0, p1

    const/4 p1, 0x3

    .line 3119
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x4

    const-string p2, "pk"

    aput-object p2, v0, p1

    const/4 p1, 0x5

    aput-object p4, v0, p1

    const/4 p1, 0x6

    const-string p2, "pn"

    aput-object p2, v0, p1

    const/4 p1, 0x7

    aput-object p5, v0, p1

    const/16 p1, 0x8

    const-string p2, "pc"

    aput-object p2, v0, p1

    const/16 p1, 0x9

    aput-object p6, v0, p1

    const/16 p1, 0xa

    const-string p2, "pq"

    aput-object p2, v0, p1

    const/16 p1, 0xb

    .line 3159
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/16 p1, 0xc

    const-string p2, "pp"

    aput-object p2, v0, p1

    const/16 p1, 0xd

    .line 3169
    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, p1

    const/16 p1, 0xe

    const-string p2, "is_revenue_event"

    aput-object p2, v0, p1

    const/16 p1, 0xf

    .line 3179
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    .line 3099
    invoke-static {p0, v0}, Lcom/singular/sdk/Singular;->event(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 2869
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p4, "pcc"

    .line 2879
    invoke-virtual {v0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "r"

    .line 2889
    invoke-virtual {v0, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p4, "is_revenue_event"

    const/4 v1, 0x1

    .line 2899
    invoke-virtual {v0, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2909
    invoke-static {p0, v0}, Lcom/singular/sdk/Singular;->eventJSON(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p4

    .line 2929
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p4}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 2959
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static customRevenue(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    :try_start_0
    const-string v0, "is_revenue_event"

    const/4 v1, 0x1

    .line 3469
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3489
    sget-object v1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 3519
    :goto_0
    invoke-static {p0, p1}, Lcom/singular/sdk/Singular;->eventJSON(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static event(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1139
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1159
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    sget-object p0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Event name can not be null or empty"

    invoke-virtual {p0, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return v0

    .line 1209
    :cond_1
    sget-object v1, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v1, p0}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1229
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 1239
    sget-object v1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static event(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1319
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1339
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1349
    sget-object p0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p1, "Event name can not be null or empty"

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return v0

    .line 1389
    :cond_1
    sget-object v1, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v1, p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1409
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 1419
    sget-object p1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static varargs event(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1499
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1519
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1529
    sget-object p0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p1, "Event name can not be null or empty"

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return v0

    .line 1569
    :cond_1
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1589
    sget-object p0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p1, "Extra arguments must be in even numbers."

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    .line 1639
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move v2, v0

    .line 1649
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 1659
    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1699
    :cond_3
    invoke-static {p0, v1}, Lcom/singular/sdk/Singular;->eventJSON(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_0
    move-exception p0

    .line 1729
    :try_start_2
    sget-object p1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "error in serializing extra args"

    invoke-virtual {p1, v1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1769
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 1779
    sget-object p1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Exception"

    invoke-virtual {p1, v1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0

    .array-data 1
    .end array-data
.end method

.method public static eventJSON(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    .line 3239
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3259
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3269
    sget-object p0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p1, "Event name can not be null or empty"

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 3309
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 3319
    :goto_0
    sget-object v1, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v1, p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3339
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 3349
    sget-object p1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Exception"

    invoke-virtual {p1, v1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getGlobalProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4589
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4599
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getGlobalProperties()Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4629
    sget-object v1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getLimitDataSharing()Z
    .locals 1

    .line 5549
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getLimitDataSharing()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5559
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getSessionId()J
    .locals 4

    const-wide/16 v0, -0x1

    .line 3969
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 3979
    :cond_0
    sget-object v2, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularInstance;->getSessionId()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v2

    .line 3999
    invoke-static {v2}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 4009
    sget-object v3, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v2}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method private static getSku(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getProducts"

    .line 2119
    invoke-static {p0, v2, v1}, Lcom/singular/sdk/internal/Utils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2139
    new-instance v2, Lorg/json/JSONArray;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "getSku"

    new-array v2, v0, [Ljava/lang/Class;

    .line 2159
    invoke-static {p0, v1, v2}, Lcom/singular/sdk/internal/Utils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2179
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "getSkus"

    new-array v2, v0, [Ljava/lang/Class;

    .line 2209
    invoke-static {p0, v1, v2}, Lcom/singular/sdk/internal/Utils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2229
    new-instance v2, Lorg/json/JSONArray;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return-object v2

    nop

    .array-data 1
    .end array-data
.end method

.method public static init(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 709
    :cond_0
    :try_start_0
    sget-object v1, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/singular/sdk/Singular;->isInstanceAlreadyInitialized:Z

    .line 729
    invoke-static {p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->getInstance(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    .line 749
    sget-boolean v1, Lcom/singular/sdk/Singular;->isInstanceAlreadyInitialized:Z

    if-eqz v1, :cond_2

    .line 759
    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->startSessionIfOpenedWithDeeplink()V

    .line 799
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/singular/sdk/Singular;->saved_application_context:Landroid/content/Context;

    .line 819
    iget-object p0, p1, Lcom/singular/sdk/SingularConfig;->limitedIdentifiresEnabled:Ljava/lang/Boolean;

    sput-object p0, Lcom/singular/sdk/Singular;->limitedIdentifiersEnabled:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 879
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 889
    sget-object p1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 839
    sget-object p1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Failed to init() Singular SDK"

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 849
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 859
    sput-object p0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    .line 919
    :goto_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    new-instance v0, Lcom/singular/sdk/SingularConfig;

    invoke-direct {v0, p1, p2}, Lcom/singular/sdk/SingularConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/singular/sdk/Singular;->init(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static isAllTrackingStopped()Z
    .locals 1

    .line 5319
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static isInitialized()Z
    .locals 2

    .line 1039
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    if-nez v0, :cond_0

    .line 1049
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Singular not initialized. You must call Singular.init() "

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static limitDataSharing(Z)V
    .locals 1

    .line 5509
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularInstance;->limitDataSharing(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static onActivityPaused()V
    .locals 3

    .line 3569
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3579
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SingularInstance;->onActivityPaused(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3599
    invoke-static {v0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 3609
    sget-object v1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static onActivityResumed()V
    .locals 3

    .line 3669
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3679
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/singular/sdk/internal/SingularInstance;->onActivityResumed(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3699
    invoke-static {v0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 3709
    sget-object v1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static reportException(Ljava/lang/Throwable;)V
    .locals 2

    .line 969
    :try_start_0
    sget-object v0, Lcom/singular/sdk/Singular;->saved_application_context:Landroid/content/Context;

    sget-object v1, Lcom/singular/sdk/Singular;->limitedIdentifiersEnabled:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/SingularExceptionReporter;->getReporter(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/singular/sdk/internal/SingularExceptionReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularExceptionReporter;->reportException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static resumeAllTracking()V
    .locals 1

    .line 5269
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->resumeAllTracking()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static revenue(Ljava/lang/String;D)Z
    .locals 1

    const-string v0, "__iap__"

    .line 1929
    invoke-static {v0, p0, p1, p2}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static revenue(Ljava/lang/String;DLjava/lang/Object;)Z
    .locals 1

    const-string v0, "__iap__"

    .line 1849
    invoke-static {v0, p0, p1, p2, p3}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/Object;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static revenue(Ljava/lang/String;DLjava/lang/Object;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "__iap__"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1889
    invoke-static/range {v0 .. v5}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/Object;Ljava/util/Map;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static revenue(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "__iap__"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 2009
    invoke-static/range {v0 .. v5}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static revenue(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)Z
    .locals 10

    const-string v0, "__iap__"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    .line 2049
    invoke-static/range {v0 .. v9}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public static revenue(Ljava/lang/String;DLjava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "__iap__"

    .line 1969
    invoke-static {v0, p0, p1, p2, p3}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static revenue(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "__iap__"

    .line 3419
    invoke-static {v0, p0}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static setCustomUserId(Ljava/lang/String;)V
    .locals 1

    .line 4199
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4209
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularInstance;->saveCustomUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4229
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 4239
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static setDeviceCustomUserId(Ljava/lang/String;)V
    .locals 1

    .line 4089
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4099
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/Singular;->setCustomUserId(Ljava/lang/String;)V

    .line 4109
    sget-object p0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->logSetDeviceCustomUserId()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4129
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 4139
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static setFCMDeviceToken(Ljava/lang/String;)V
    .locals 1

    .line 3869
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3879
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularInstance;->saveFCMDeviceToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3899
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 3909
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static setGCMDeviceToken(Ljava/lang/String;)V
    .locals 1

    .line 3769
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3779
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGCMDeviceToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3799
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 3809
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static setGlobalProperty(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 4699
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4749
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4759
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    new-instance v2, Lcom/singular/sdk/internal/SingularGlobalProperty;

    invoke-direct {v2, p0, p1, p2}, Lcom/singular/sdk/internal/SingularGlobalProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/singular/sdk/internal/SingularInstance;->setGlobalProperty(Lcom/singular/sdk/internal/SingularGlobalProperty;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4789
    sget-object p1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :cond_1
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static setIMEI(Ljava/lang/String;)V
    .locals 1

    .line 4399
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4409
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularInstance;->setIMEI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4429
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 4439
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static setWrapperNameAndVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4499
    :try_start_0
    invoke-static {p0, p1}, Lcom/singular/sdk/internal/Utils;->setWrapperNameAndVersion(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4519
    invoke-static {p0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 4529
    sget-object p1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static stopAllTracking()V
    .locals 1

    .line 5219
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->stopAllTracking()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static trackingOptIn()V
    .locals 1

    .line 5109
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->sendTrackingOptIn()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static trackingUnder13()V
    .locals 1

    .line 5159
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->sendTrackingUnder13()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static unsetCustomUserId()V
    .locals 2

    .line 4299
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4309
    :cond_0
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->saveCustomUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4329
    invoke-static {v0}, Lcom/singular/sdk/Singular;->reportException(Ljava/lang/Throwable;)V

    .line 4339
    sget-object v1, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static unsetGlobalProperty(Ljava/lang/String;)V
    .locals 1

    .line 4859
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4909
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/singular/sdk/Singular;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4919
    :cond_1
    sget-object v0, Lcom/singular/sdk/Singular;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularInstance;->removeGlobalProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4939
    sget-object v0, Lcom/singular/sdk/Singular;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
