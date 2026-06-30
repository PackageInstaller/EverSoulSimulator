.class public Lbolts/WebViewAppLinkResolver;
.super Ljava/lang/Object;
.source "WebViewAppLinkResolver.java"

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final KEY_AL_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_ANDROID:Ljava/lang/String; = "android"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_CLASS:Ljava/lang/String; = "class"

.field private static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_SHOULD_FALLBACK:Ljava/lang/String; = "should_fallback"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final KEY_WEB:Ljava/lang/String; = "web"

.field private static final KEY_WEB_URL:Ljava/lang/String; = "url"

.field private static final META_TAG_PREFIX:Ljava/lang/String; = "al"

.field private static final PREFER_HEADER:Ljava/lang/String; = "Prefer-Html-Meta-Tags"

.field private static final TAG_EXTRACTION_JAVASCRIPT:Ljava/lang/String; = "javascript:boltsWebViewAppLinkResolverResult.setValue((function() {  var metaTags = document.getElementsByTagName(\'meta\');  var results = [];  for (var i = 0; i < metaTags.length; i++) {    var property = metaTags[i].getAttribute(\'property\');    if (property && property.substring(0, \'al:\'.length) === \'al:\') {      var tag = { \"property\": metaTags[i].getAttribute(\'property\') };      if (metaTags[i].hasAttribute(\'content\')) {        tag[\'content\'] = metaTags[i].getAttribute(\'content\');      }      results.push(tag);    }  }  return JSON.stringify(results);})())"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 409
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->parseAlData(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;
    .locals 0

    .line 409
    invoke-static {p0, p1}, Lbolts/WebViewAppLinkResolver;->makeAppLinkFromAlData(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$200(Lbolts/WebViewAppLinkResolver;)Landroid/content/Context;
    .locals 0

    .line 409
    iget-object p0, p0, Lbolts/WebViewAppLinkResolver;->context:Landroid/content/Context;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$300(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    invoke-static {p0}, Lbolts/WebViewAppLinkResolver;->readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 2319
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 2339
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static makeAppLinkFromAlData(Ljava/util/Map;Landroid/net/Uri;)Lbolts/AppLink;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/AppLink;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x6d093948

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 2419
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 2449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 2469
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x543c2392

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x22500ef6

    invoke-static {v7}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2499
    invoke-static {v3, v4}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const v8, 0x5d1506e7

    invoke-static {v8}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v8

    .line 2509
    invoke-static {v3, v8}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const v9, 0x3367830b

    invoke-static {v9}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v9

    .line 2519
    invoke-static {v3, v9}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    const v10, 0x2250262e

    invoke-static {v10}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v10

    .line 2529
    invoke-static {v3, v10}, Lbolts/WebViewAppLinkResolver;->getAlList(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2549
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    :goto_0
    if-ge v5, v10, :cond_1

    .line 2579
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v5, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_1

    :cond_2
    move-object v11, v6

    :goto_1
    check-cast v11, Ljava/lang/String;

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .line 2599
    invoke-static {v11}, Lbolts/WebViewAppLinkResolver;->tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2609
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v5, :cond_3

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_2

    :cond_3
    move-object v12, v6

    :goto_2
    check-cast v12, Ljava/lang/String;

    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    .line 2629
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v5, :cond_4

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    :cond_4
    move-object v13, v6

    :goto_3
    check-cast v13, Ljava/lang/String;

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    .line 2649
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_4

    :cond_5
    move-object v14, v6

    :goto_4
    check-cast v14, Ljava/lang/String;

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .line 2669
    new-instance v15, Lbolts/AppLink$Target;

    invoke-direct {v15, v12, v13, v11, v14}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2679
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const v2, 0x7d752fad

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 2729
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    .line 2739
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2749
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2759
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const v3, -0x451c687f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    .line 2769
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2789
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 2799
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v3, -0x2247ce84

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x543c028a

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    const v8, 0x7d75008d

    invoke-static {v8}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v8

    .line 2809
    filled-new-array {v8, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p1

    :goto_5
    if-eqz v6, :cond_9

    if-eqz v2, :cond_9

    .line 2849
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2859
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2869
    invoke-static {v0}, Lbolts/WebViewAppLinkResolver;->tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_6

    :cond_8
    move-object/from16 v6, p1

    .line 2899
    :cond_9
    :goto_6
    new-instance v0, Lbolts/AppLink;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1, v6}, Lbolts/AppLink;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static parseAlData(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1949
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1959
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1969
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const v4, 0x22500986

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    .line 1979
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x543c0232

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    .line 1989
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1999
    aget-object v5, v4, v1

    const v6, 0x6d091b68

    invoke-static {v6}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_4

    :cond_0
    const/4 v5, 0x1

    move-object v7, v0

    move v6, v5

    .line 2039
    :goto_1
    array-length v8, v4

    const/4 v9, 0x0

    if-ge v6, v8, :cond_5

    .line 2059
    aget-object v8, v4, v6

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_1

    .line 2089
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2099
    aget-object v10, v4, v6

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/util/Map;

    :cond_2
    if-eqz v9, :cond_4

    .line 2129
    array-length v7, v4

    sub-int/2addr v7, v5

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v9

    goto :goto_3

    .line 2139
    :cond_4
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2149
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const v4, 0x2250096e

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    .line 2189
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2199
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    const v6, 0x22500ef6

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_6

    .line 2209
    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2229
    :cond_6
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3059
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3069
    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 3089
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3109
    :catch_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 3139
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 3169
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 3199
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    .line 3209
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 3229
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3249
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v3, ";"

    .line 3259
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3269
    array-length v3, p0

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v4, p0, v5

    .line 3279
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, "charset="

    .line 3289
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 p0, 0x8

    .line 3299
    invoke-virtual {v4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    const-string v2, "UTF-8"

    .line 3379
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3399
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    .array-data 1
    .end array-data
.end method

.method private static tryCreateUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2969
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation

    .line 839
    new-instance v0, Lbolts/Capture;

    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    .line 849
    new-instance v1, Lbolts/Capture;

    invoke-direct {v1}, Lbolts/Capture;-><init>()V

    .line 859
    new-instance v2, Lbolts/WebViewAppLinkResolver$3;

    invoke-direct {v2, p0, p1, v0, v1}, Lbolts/WebViewAppLinkResolver$3;-><init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;Lbolts/Capture;Lbolts/Capture;)V

    invoke-static {v2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lbolts/WebViewAppLinkResolver$2;

    invoke-direct {v3, p0, v1, p1, v0}, Lbolts/WebViewAppLinkResolver$2;-><init>(Lbolts/WebViewAppLinkResolver;Lbolts/Capture;Landroid/net/Uri;Lbolts/Capture;)V

    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lbolts/WebViewAppLinkResolver$1;

    invoke-direct {v1, p0, p1}, Lbolts/WebViewAppLinkResolver$1;-><init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
