.class public Ltwitter4j/auth/OAuth2Authorization;
.super Ljava/lang/Object;
.source "OAuth2Authorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/OAuth2Support;


# static fields
.field private static final serialVersionUID:J = -0x282deeb56b166797L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private final http:Ltwitter4j/HttpClient;

.field private token:Ltwitter4j/auth/OAuth2Token;


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Ltwitter4j/auth/OAuth2Authorization;->conf:Ltwitter4j/conf/Configuration;

    .line 449
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/auth/OAuth2Authorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object p1

    invoke-static {p1}, Ltwitter4j/HttpClientFactory;->getInstance(Ltwitter4j/HttpClientConfiguration;)Ltwitter4j/HttpClient;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/auth/OAuth2Authorization;->http:Ltwitter4j/HttpClient;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1359
    instance-of v1, p1, Ltwitter4j/auth/OAuth2Authorization;

    if-nez v1, :cond_0

    goto :goto_3

    .line 1399
    :cond_0
    check-cast p1, Ltwitter4j/auth/OAuth2Authorization;

    .line 1409
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Ltwitter4j/auth/OAuth2Authorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p1, Ltwitter4j/auth/OAuth2Authorization;->consumerKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    :goto_0
    return v0

    .line 1439
    :cond_2
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerSecret:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, p1, Ltwitter4j/auth/OAuth2Authorization;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_3
    iget-object v1, p1, Ltwitter4j/auth/OAuth2Authorization;->consumerSecret:Ljava/lang/String;

    if-eqz v1, :cond_4

    :goto_1
    return v0

    .line 1469
    :cond_4
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    iget-object p1, p1, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Ltwitter4j/auth/OAuth2Token;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    :goto_2
    return v0

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;
    .locals 2

    const-string p1, "UTF-8"

    .line 1109
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    if-nez v0, :cond_0

    .line 1139
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerKey:Ljava/lang/String;

    .line 1149
    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerSecret:Ljava/lang/String;

    .line 1169
    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 1219
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x225fc43e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Ltwitter4j/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1249
    :cond_0
    invoke-virtual {v0}, Ltwitter4j/auth/OAuth2Token;->generateAuthorizationHeader()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getOAuth2Token()Ltwitter4j/auth/OAuth2Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    if-nez v0, :cond_3

    .line 609
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Authorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getOAuth2Scope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    new-array v0, v0, [Ltwitter4j/HttpParameter;

    .line 619
    new-instance v2, Ltwitter4j/HttpParameter;

    const v3, 0x6d06d530

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x225fc09e

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 629
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Authorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuth2Scope()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 639
    new-instance v2, Ltwitter4j/HttpParameter;

    iget-object v3, p0, Ltwitter4j/auth/OAuth2Authorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuth2Scope()Ljava/lang/String;

    move-result-object v3

    const v4, 0x5d1ae0bf

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 669
    :cond_1
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->http:Ltwitter4j/HttpClient;

    iget-object v2, p0, Ltwitter4j/auth/OAuth2Authorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuth2TokenURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p0, v3}, Ltwitter4j/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Ltwitter4j/HttpResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 709
    new-instance v1, Ltwitter4j/auth/OAuth2Token;

    invoke-direct {v1, v0}, Ltwitter4j/auth/OAuth2Token;-><init>(Ltwitter4j/HttpResponse;)V

    iput-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    return-object v1

    .line 689
    :cond_2
    new-instance v1, Ltwitter4j/TwitterException;

    const v2, 0x33686ef3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/HttpResponse;)V

    throw v1

    .line 579
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const v1, 0x5d1ae237

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 1559
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1569
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1579
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ltwitter4j/auth/OAuth2Token;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public invalidateOAuth2Token()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    .line 869
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-object v2, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    invoke-virtual {v2}, Ltwitter4j/auth/OAuth2Token;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d7ac47d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 889
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    const/4 v2, 0x0

    .line 929
    :try_start_0
    iput-object v2, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    .line 949
    iget-object v3, p0, Ltwitter4j/auth/OAuth2Authorization;->http:Ltwitter4j/HttpClient;

    iget-object v4, p0, Ltwitter4j/auth/OAuth2Authorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v4}, Ltwitter4j/conf/Configuration;->getOAuth2InvalidateTokenURL()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, p0, v2}, Ltwitter4j/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Ltwitter4j/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    return-void

    .line 969
    :cond_0
    new-instance v2, Ltwitter4j/TwitterException;

    const-string v3, "Invalidating OAuth 2 Bearer Token failed."

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ltwitter4j/HttpResponse;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 1039
    iput-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    .line 1059
    throw v0

    .line 829
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const v1, 0x336861e3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isEnabled()Z
    .locals 1

    .line 1309
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public setOAuth2Token(Ltwitter4j/auth/OAuth2Token;)V
    .locals 0

    .line 769
    iput-object p1, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 509
    :goto_0
    iput-object p1, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerKey:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 519
    :goto_1
    iput-object p2, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerSecret:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1639
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7d7ac6cd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7ac735

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Authorization;->token:Ltwitter4j/auth/OAuth2Token;

    if-nez v1, :cond_0

    const v1, 0x7d76b075

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1669
    :cond_0
    invoke-virtual {v1}, Ltwitter4j/auth/OAuth2Token;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
