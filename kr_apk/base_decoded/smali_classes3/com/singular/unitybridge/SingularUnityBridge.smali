.class public Lcom/singular/unitybridge/SingularUnityBridge;
.super Ljava/lang/Object;
.source "SingularUnityBridge.java"


# static fields
.field static config:Lcom/singular/sdk/SingularConfig;

.field static currentIntentHash:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static createReferrerShortLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2609
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 2629
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    .line 2659
    :goto_0
    new-instance p3, Lcom/singular/unitybridge/SingularUnityBridge$6;

    invoke-direct {p3}, Lcom/singular/unitybridge/SingularUnityBridge$6;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/singular/sdk/Singular;->createReferrerShortLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/singular/sdk/ShortLinkHandler;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static init(Ljava/lang/String;)V
    .locals 13

    const v0, -0x4510528f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 609
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "apiKey"

    const/4 v3, 0x0

    .line 629
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "secret"

    .line 639
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p0, :cond_10

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 699
    :cond_0
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 709
    new-instance v6, Lcom/singular/sdk/SingularConfig;

    invoke-direct {v6, p0, v4}, Lcom/singular/sdk/SingularConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "facebookAppId"

    .line 729
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 749
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 759
    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withFacebookAppId(Ljava/lang/String;)Lcom/singular/sdk/SingularConfig;

    :cond_1
    const-string p0, "openUri"

    .line 789
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 799
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 809
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 819
    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withOpenURI(Landroid/net/Uri;)Lcom/singular/sdk/SingularConfig;

    :cond_2
    const-string p0, "enableDeferredDeepLinks"

    const/4 v4, 0x0

    .line 849
    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-wide/16 v7, 0x0

    if-eqz p0, :cond_3

    .line 879
    new-instance p0, Lcom/singular/unitybridge/SingularUnityBridge$2;

    invoke-direct {p0}, Lcom/singular/unitybridge/SingularUnityBridge$2;-><init>()V

    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withDDLHandler(Lcom/singular/sdk/DeferredDeepLinkHandler;)Lcom/singular/sdk/SingularConfig;

    const-string p0, "ddlTimeoutSec"

    .line 1039
    invoke-virtual {v2, p0, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long p0, v9, v7

    if-lez p0, :cond_3

    .line 1069
    invoke-virtual {v6, v9, v10}, Lcom/singular/sdk/SingularConfig;->withDDLTimeoutInSec(J)Lcom/singular/sdk/SingularConfig;

    .line 1109
    :cond_3
    new-instance p0, Lcom/singular/unitybridge/SingularUnityBridge$3;

    invoke-direct {p0}, Lcom/singular/unitybridge/SingularUnityBridge$3;-><init>()V

    .line 1339
    sget-object v9, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 1349
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v10

    sput v10, Lcom/singular/unitybridge/SingularUnityBridge;->currentIntentHash:I

    const-string v10, "shortlinkResolveTimeout"

    .line 1369
    invoke-virtual {v2, v10, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_4

    .line 1399
    invoke-virtual {v6, v9, p0, v10, v11}, Lcom/singular/sdk/SingularConfig;->withSingularLink(Landroid/content/Intent;Lcom/singular/sdk/SingularLinkHandler;J)Lcom/singular/sdk/SingularConfig;

    goto :goto_0

    .line 1419
    :cond_4
    invoke-virtual {v6, v9, p0}, Lcom/singular/sdk/SingularConfig;->withSingularLink(Landroid/content/Intent;Lcom/singular/sdk/SingularLinkHandler;)Lcom/singular/sdk/SingularConfig;

    :goto_0
    const-string p0, "enableLogging"

    .line 1449
    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1479
    invoke-virtual {v6}, Lcom/singular/sdk/SingularConfig;->withLoggingEnabled()Lcom/singular/sdk/SingularConfig;

    :cond_5
    const-string p0, "logLevel"

    const/4 v9, -0x1

    .line 1509
    invoke-virtual {v2, p0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_6

    .line 1529
    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withLogLevel(I)Lcom/singular/sdk/SingularConfig;

    :cond_6
    const-string p0, "fcmDeviceToken"

    .line 1559
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 1579
    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withFCMDeviceToken(Ljava/lang/String;)Lcom/singular/sdk/SingularConfig;

    :cond_7
    const-string p0, "sessionTimeoutSec"

    .line 1609
    invoke-virtual {v2, p0, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long p0, v9, v7

    if-lez p0, :cond_8

    .line 1639
    invoke-virtual {v6, v9, v10}, Lcom/singular/sdk/SingularConfig;->withSessionTimeoutInSec(J)Lcom/singular/sdk/SingularConfig;

    :cond_8
    const-string p0, "customUserId"

    .line 1669
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1699
    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withCustomUserId(Ljava/lang/String;)Lcom/singular/sdk/SingularConfig;

    :cond_9
    const-string p0, "imei"

    .line 1729
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1759
    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withIMEI(Ljava/lang/String;)Lcom/singular/sdk/SingularConfig;

    :cond_a
    const-string p0, "collectOAID"

    .line 1789
    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1819
    invoke-virtual {v6}, Lcom/singular/sdk/SingularConfig;->withOAIDCollection()Lcom/singular/sdk/SingularConfig;

    .line 1849
    :cond_b
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1859
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 1869
    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withLimitDataSharing(Z)Lcom/singular/sdk/SingularConfig;

    :cond_c
    const-string p0, "limitedIdentifiersEnabled"

    .line 1899
    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 1909
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v6, Lcom/singular/sdk/SingularConfig;->limitedIdentifiresEnabled:Ljava/lang/Boolean;

    const-string p0, "globalProperties"

    .line 1929
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1969
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1979
    :cond_d
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1989
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1999
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "Key"

    .line 2019
    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 2039
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "Value"

    .line 2059
    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "OverrideExisting"

    .line 2069
    invoke-virtual {v7, v10, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2049
    invoke-virtual {v6, v8, v9, v7}, Lcom/singular/sdk/SingularConfig;->withGlobalProperty(Ljava/lang/String;Ljava/lang/String;Z)Lcom/singular/sdk/SingularConfig;

    goto :goto_1

    :cond_e
    const-string p0, "customSdid"

    .line 2119
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 2139
    new-instance v0, Lcom/singular/unitybridge/SingularUnityBridge$4;

    invoke-direct {v0}, Lcom/singular/unitybridge/SingularUnityBridge$4;-><init>()V

    invoke-virtual {v6, p0, v0}, Lcom/singular/sdk/SingularConfig;->withCustomSdid(Ljava/lang/String;Lcom/singular/sdk/SDIDAccessorHandler;)Lcom/singular/sdk/SingularConfig;

    .line 2359
    :cond_f
    sput-object v6, Lcom/singular/unitybridge/SingularUnityBridge;->config:Lcom/singular/sdk/SingularConfig;

    .line 2379
    new-instance p0, Lcom/singular/unitybridge/SingularUnityBridge$5;

    invoke-direct {p0}, Lcom/singular/unitybridge/SingularUnityBridge$5;-><init>()V

    invoke-virtual {v6, p0}, Lcom/singular/sdk/SingularConfig;->withSingularDeviceAttribution(Lcom/singular/sdk/SingularDeviceAttributionHandler;)Lcom/singular/sdk/SingularConfig;

    .line 2469
    invoke-static {v5, v6}, Lcom/singular/sdk/Singular;->init(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_10
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    const v0, 0x7d7922e5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2499
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    .array-data 1
    .end array-data
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 389
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/singular/unitybridge/SingularUnityBridge$1;

    invoke-direct {v1, p0}, Lcom/singular/unitybridge/SingularUnityBridge$1;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
