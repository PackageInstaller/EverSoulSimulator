.class Ltwitter4j/HttpClientImpl;
.super Ltwitter4j/HttpClientBase;
.source "HttpClientImpl.java"

# interfaces
.implements Ltwitter4j/HttpResponseCode;
.implements Ljava/io/Serializable;


# static fields
.field private static final instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ltwitter4j/HttpClientConfiguration;",
            "Ltwitter4j/HttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0x599855c36357ce6L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 329
    const-class v0, Ltwitter4j/HttpClientImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    :try_start_0
    const-string v0, "android.os.Build$VERSION"

    .line 419
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    .line 429
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :catch_0
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 519
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/HttpClientBase;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Ltwitter4j/HttpClientBase;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getInstance(Ltwitter4j/HttpClientConfiguration;)Ltwitter4j/HttpClient;
    .locals 2

    .line 619
    sget-object v0, Ltwitter4j/HttpClientImpl;->instanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/HttpClient;

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Ltwitter4j/HttpClientImpl;

    invoke-direct {v1, p0}, Ltwitter4j/HttpClientImpl;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 649
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method private setHeaders(Ltwitter4j/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 5

    .line 2089
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, -0x45125137

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 2099
    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 2109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/RequestMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x543c4f92

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v1

    invoke-interface {v1, p1}, Ltwitter4j/auth/Authorization;->getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2159
    invoke-virtual {v0}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x22504cc6    # 2.82299E-18f

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x4512514f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    .line 2169
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x33699a53

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v0, 0x5d122347

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 2189
    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :cond_2
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2219
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2229
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    sget-object v2, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x543c2ce2

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 719
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientImpl;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2309
    invoke-virtual {p0}, Ltwitter4j/HttpClientImpl;->isProxyConfigured()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2319
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2329
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x33699bdb

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 2349
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x451250bf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v2

    const v3, 0x22504cc6    # 2.82299E-18f

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x4512514f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 2369
    :cond_0
    new-instance v0, Ltwitter4j/HttpClientImpl$1;

    invoke-direct {v0, p0}, Ltwitter4j/HttpClientImpl$1;-><init>(Ltwitter4j/HttpClientImpl;)V

    invoke-static {v0}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    .line 2509
    :cond_1
    new-instance v0, Ljava/net/Proxy;

    iget-object v1, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isHttpProxySocks()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    :goto_0
    iget-object v2, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 2519
    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 2529
    sget-object v1, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v1}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2539
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x33699c9b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x543c0232

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v3}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x6d0823a8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 2559
    :cond_3
    new-instance v1, Ljava/net/URL;

    invoke-static {p1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 2579
    :cond_4
    new-instance v0, Ljava/net/URL;

    invoke-static {p1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 2599
    :goto_1
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v0

    if-lez v0, :cond_5

    .line 2609
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2629
    :cond_5
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v0

    if-lez v0, :cond_6

    .line 2639
    iget-object v0, p0, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_6
    const/4 v0, 0x0

    .line 2659
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 819
    iget-object v0, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v0

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_f

    .line 899
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltwitter4j/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 909
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    move-object/from16 v9, p1

    .line 919
    :try_start_1
    invoke-direct {v1, v9, v0}, Ltwitter4j/HttpClientImpl;->setHeaders(Ltwitter4j/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 929
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v10

    invoke-virtual {v10}, Ltwitter4j/RequestMethod;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v10

    sget-object v11, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    if-ne v10, v11, :cond_6

    .line 949
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v10

    invoke-static {v10}, Ltwitter4j/HttpParameter;->containsFile([Ltwitter4j/HttpParameter;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    const v11, 0x6d096ec8

    invoke-static {v11}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x6d09b0f0

    invoke-static {v12}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_4

    .line 959
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "----Twitter4J-upload"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 969
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "multipart/form-data; boundary="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 989
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 999
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 1009
    :try_start_3
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1019
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v14

    array-length v15, v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/4 v4, 0x0

    :goto_1
    const v2, 0x5436f9c2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    if-ge v4, v15, :cond_3

    :try_start_4
    aget-object v16, v14, v4

    .line 1029
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const v5, -0x45125617

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    const v8, 0x225e308e

    invoke-static {v8}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v17, :cond_2

    move/from16 v17, v3

    .line 1039
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "\"; filename=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\r\n\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1069
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 1079
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->hasFileBody()Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_0

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getFileBody()Ljava/io/InputStream;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :try_start_7
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_2
    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 1119
    :goto_3
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v18, v7

    const/4 v7, -0x1

    if-eq v8, v7, :cond_1

    const/4 v7, 0x0

    .line 1129
    :try_start_8
    invoke-virtual {v13, v5, v7, v8}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v7, v18

    goto :goto_3

    :catchall_1
    move-exception v0

    move v3, v7

    move-object/from16 v7, v18

    goto/16 :goto_7

    .line 1149
    :cond_1
    :try_start_9
    invoke-virtual {v1, v13, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_2
    move/from16 v17, v3

    move-object/from16 v18, v7

    .line 1179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v3, "Content-Type: text/plain; charset=UTF-8\r\n\r\n"

    .line 1199
    invoke-virtual {v1, v13, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1209
    sget-object v3, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {v16 .. v16}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 1229
    invoke-virtual {v1, v13, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v17

    move-object/from16 v7, v18

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move/from16 v17, v3

    :goto_5
    move-object/from16 v18, v7

    goto :goto_6

    :cond_3
    move/from16 v17, v3

    move-object/from16 v18, v7

    .line 1259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v1, v13, v2}, Ltwitter4j/HttpClientImpl;->write(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v7, v18

    :goto_6
    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_11

    :catchall_5
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v7

    move v4, v2

    const/4 v3, 0x0

    goto/16 :goto_11

    :catchall_6
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v7

    move v4, v2

    goto/16 :goto_13

    :cond_4
    move/from16 v17, v3

    move-object/from16 v18, v7

    .line 1299
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/HttpParameter;->containsJson([Ltwitter4j/HttpParameter;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    if-eqz v2, :cond_5

    :try_start_b
    const-string v2, "application/json"

    .line 1309
    invoke-virtual {v0, v12, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const/4 v3, 0x0

    :try_start_c
    aget-object v2, v2, v3

    invoke-virtual {v2}, Ltwitter4j/HttpParameter;->getJsonObject()Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    goto :goto_8

    :catchall_8
    move-exception v0

    const/4 v3, 0x0

    :goto_8
    move-object/from16 v7, v18

    const/4 v4, 0x1

    goto/16 :goto_14

    :cond_5
    const/4 v3, 0x0

    :try_start_d
    const-string v2, "application/x-www-form-urlencoded"

    .line 1349
    invoke-virtual {v0, v12, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p1 .. p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/HttpParameter;->encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;

    move-result-object v2

    .line 1389
    :goto_9
    sget-object v4, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    const-string v5, "Post Params: "

    invoke-virtual {v4, v5, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "Content-Length"

    .line 1409
    array-length v5, v2

    .line 1419
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1409
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    const/4 v4, 0x1

    .line 1429
    :try_start_e
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1439
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1449
    :try_start_f
    invoke-virtual {v12, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1469
    :goto_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 1479
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    goto :goto_d

    :catchall_9
    move-exception v0

    goto :goto_c

    :catchall_a
    move-exception v0

    goto :goto_b

    :catchall_b
    move-exception v0

    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x1

    :goto_c
    move-object/from16 v7, v18

    goto/16 :goto_14

    :cond_6
    move v4, v2

    move/from16 v17, v3

    move-object/from16 v18, v7

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 1499
    :goto_d
    new-instance v2, Ltwitter4j/HttpResponseImpl;

    iget-object v5, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-direct {v2, v0, v5}, Ltwitter4j/HttpResponseImpl;-><init>(Ljava/net/HttpURLConnection;Ltwitter4j/HttpClientConfiguration;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    .line 1509
    :try_start_10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 1519
    :try_start_11
    sget-object v5, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v5}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "Response: "

    .line 1529
    invoke-virtual {v5, v7}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 1549
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1559
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1569
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1589
    sget-object v13, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_e

    .line 1609
    :cond_8
    sget-object v13, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v13, v11}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    goto :goto_e

    :cond_9
    const/16 v0, 0xc8

    if-lt v8, v0, :cond_b

    const/16 v0, 0x12e

    if-eq v8, v0, :cond_a

    const/16 v0, 0x12c

    if-gt v0, v8, :cond_a

    goto :goto_10

    .line 1789
    :cond_a
    :try_start_12
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    goto :goto_17

    :catch_1
    :goto_f
    move-object v7, v2

    goto/16 :goto_19

    :cond_b
    :goto_10
    const/16 v0, 0x1a4

    if-eq v8, v0, :cond_c

    const/16 v0, 0x190

    if-eq v8, v0, :cond_c

    const/16 v0, 0x1f4

    if-lt v8, v0, :cond_c

    .line 1669
    :try_start_13
    iget-object v0, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 1699
    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    if-eq v6, v0, :cond_c

    .line 1789
    :try_start_14
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0

    goto :goto_18

    .line 1709
    :cond_c
    :try_start_15
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-virtual {v2}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/HttpResponse;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    :catchall_c
    move-exception v0

    move-object v7, v2

    goto :goto_15

    :catchall_d
    move-exception v0

    move-object v7, v2

    goto :goto_11

    :catchall_e
    move-exception v0

    move-object/from16 v7, v18

    :goto_11
    const/4 v8, -0x1

    goto :goto_15

    :catchall_f
    move-exception v0

    goto :goto_12

    :catchall_10
    move-exception v0

    move-object/from16 v9, p1

    :goto_12
    move v4, v2

    move/from16 v17, v3

    move-object/from16 v18, v7

    :goto_13
    const/4 v3, 0x0

    :goto_14
    const/4 v8, -0x1

    const/4 v12, 0x0

    .line 1789
    :goto_15
    :try_start_16
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2

    goto :goto_16

    :catch_2
    move-exception v0

    move-object v2, v7

    goto :goto_17

    .line 1819
    :catch_3
    :goto_16
    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2

    .line 1849
    :goto_17
    iget-object v5, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v5}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryCount()I

    move-result v5

    if-eq v6, v5, :cond_e

    :catch_4
    :goto_18
    move-object v7, v2

    .line 1899
    :try_start_18
    sget-object v0, Ltwitter4j/HttpClientImpl;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v7, :cond_d

    .line 1909
    invoke-virtual {v7}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    .line 1929
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleeping "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v5}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " seconds until the next retry."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 1939
    iget-object v0, v1, Ltwitter4j/HttpClientImpl;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpRetryIntervalSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_5

    :catch_5
    add-int/lit8 v6, v6, 0x1

    move v2, v4

    move/from16 v3, v17

    goto/16 :goto_0

    .line 1859
    :cond_e
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v8}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_f
    move-object/from16 v18, v7

    :goto_19
    return-object v7

    nop

    .array-data 1
    .end array-data
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/HttpParameter;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 759
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientImpl;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
