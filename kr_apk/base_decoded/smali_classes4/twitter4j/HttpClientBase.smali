.class public abstract Ltwitter4j/HttpClientBase;
.super Ljava/lang/Object;
.source "HttpClientBase.java"

# interfaces
.implements Ltwitter4j/HttpClient;
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0x6f42041d5227216dL


# instance fields
.field protected final CONF:Ltwitter4j/HttpClientConfiguration;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    const-class v0, Ltwitter4j/HttpClientBase;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpClientBase;->logger:Ltwitter4j/Logger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .locals 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Ltwitter4j/HttpClientBase;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    const v1, 0x6d073de0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x45124e2f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x6d073ff0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1b0b0f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x5432219a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5432210a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x33698723

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d086718

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-interface {p1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Accept-Encoding"

    const v1, 0x225e34de

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addDefaultRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 469
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public delete(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1029
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->DELETE:Ltwitter4j/RequestMethod;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public delete(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 979
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->DELETE:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6, p4}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public get(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 809
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public get(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 759
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->GET:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6, p4}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method abstract handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public head(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1079
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->HEAD:Ltwitter4j/RequestMethod;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method protected isProxyConfigured()Z
    .locals 2

    .line 319
    iget-object v0, p0, Ltwitter4j/HttpClientBase;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/HttpClientBase;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public post(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 919
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public post(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 869
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6, p4}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/String;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1189
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->PUT:Ltwitter4j/RequestMethod;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1139
    new-instance v6, Ltwitter4j/HttpRequest;

    sget-object v1, Ltwitter4j/RequestMethod;->PUT:Ltwitter4j/RequestMethod;

    iget-object v5, p0, Ltwitter4j/HttpClientBase;->requestHeaders:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    invoke-virtual {p0, v6, p4}, Ltwitter4j/HttpClientBase;->request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final request(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 519
    invoke-virtual {p0, p1}, Ltwitter4j/HttpClientBase;->handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final request(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 579
    :try_start_0
    invoke-virtual {p0, p1}, Ltwitter4j/HttpClientBase;->handleRequest(Ltwitter4j/HttpRequest;)Ltwitter4j/HttpResponse;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 599
    new-instance v2, Ltwitter4j/HttpResponseEvent;

    invoke-direct {v2, p1, v1, v0}, Ltwitter4j/HttpResponseEvent;-><init>(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponse;Ltwitter4j/TwitterException;)V

    invoke-interface {p2, v2}, Ltwitter4j/HttpResponseListener;->httpResponseReceived(Ltwitter4j/HttpResponseEvent;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    if-eqz p2, :cond_1

    .line 649
    new-instance v2, Ltwitter4j/HttpResponseEvent;

    invoke-direct {v2, p1, v0, v1}, Ltwitter4j/HttpResponseEvent;-><init>(Ltwitter4j/HttpRequest;Ltwitter4j/HttpResponse;Ltwitter4j/TwitterException;)V

    invoke-interface {p2, v2}, Ltwitter4j/HttpResponseListener;->httpResponseReceived(Ltwitter4j/HttpResponseEvent;)V

    .line 669
    :cond_1
    throw v1

    .array-data 1
    .end array-data
.end method

.method public write(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 369
    sget-object p1, Ltwitter4j/HttpClientBase;->logger:Ltwitter4j/Logger;

    invoke-virtual {p1, p2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
