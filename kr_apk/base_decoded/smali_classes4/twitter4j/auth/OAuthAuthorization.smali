.class public Ltwitter4j/auth/OAuthAuthorization;
.super Ljava/lang/Object;
.source "OAuthAuthorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;
.implements Ltwitter4j/auth/OAuthSupport;


# static fields
.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final OAUTH_SIGNATURE_METHOD:Ltwitter4j/HttpParameter;

.field private static final RAND:Ljava/util/Random;

.field private static transient http:Ltwitter4j/HttpClient; = null

.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0xc4ecb0b0410dbb4L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private oauthToken:Ltwitter4j/auth/OAuthToken;

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 409
    new-instance v0, Ltwitter4j/HttpParameter;

    const v1, 0x225fca56

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d06c198

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/HttpParameter;

    .line 419
    const-class v0, Ltwitter4j/auth/OAuthAuthorization;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/Logger;

    .line 2489
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 2

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 429
    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;

    .line 479
    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 559
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    .line 569
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/HttpClientFactory;->getInstance(Ltwitter4j/HttpClientConfiguration;)Ltwitter4j/HttpClient;

    move-result-object v0

    sput-object v0, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/HttpClient;

    .line 579
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    new-instance v0, Ltwitter4j/auth/AccessToken;

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method static constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const v0, 0x6d025650

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 4179
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    .line 4199
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const v0, 0x543c2032

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    .line 4219
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 4229
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const v5, 0x543c0232

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    .line 4239
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_2

    const v2, -0x4513b3bf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 4269
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x225fd536

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4289
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const v2, -0x4513b22f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 4299
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x5d1af40f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4319
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4349
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static encodeParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const v0, 0x6d025678

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3749
    invoke-static {p0, v0, v1}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3799
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const v2, 0x2257cdc6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/HttpParameter;

    .line 3809
    invoke-virtual {v1}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ltwitter4j/HttpParameter;->isJson()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3819
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    .line 3839
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3879
    :cond_2
    invoke-virtual {v1}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x543caf0a

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    .line 3899
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3919
    :cond_3
    invoke-virtual {v1}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3949
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    .line 3969
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3999
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private ensureTokenIsAvailable()V
    .locals 2

    .line 709
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v0, :cond_0

    return-void

    .line 719
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const v1, 0x6d06c050

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method private static normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3579
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3589
    invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method static normalizeRequestParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;
    .locals 0

    .line 3539
    invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->toParamList([Ltwitter4j/HttpParameter;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private parseGetParameters(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    const v0, 0x6d025650

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 2229
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2249
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x6d025678

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2269
    :try_start_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    const-string v5, "="

    .line 2279
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2289
    array-length v5, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const v7, 0x6d096ec8

    invoke-static {v7}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v7

    if-ne v5, v6, :cond_0

    .line 2299
    :try_start_1
    new-instance v5, Ltwitter4j/HttpParameter;

    aget-object v6, v4, v2

    .line 2309
    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v1

    .line 2319
    invoke-static {v4, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2359
    :cond_0
    new-instance v5, Ltwitter4j/HttpParameter;

    aget-object v4, v4, v2

    .line 2369
    invoke-static {v4, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-direct {v5, v4, v6}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method private static toParamList([Ltwitter4j/HttpParameter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ltwitter4j/HttpParameter;",
            ")",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .line 3629
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3639
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 4499
    :cond_0
    instance-of v1, p1, Ltwitter4j/auth/OAuthSupport;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 4519
    :cond_1
    check-cast p1, Ltwitter4j/auth/OAuthAuthorization;

    .line 4539
    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 4559
    :cond_3
    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v3, p1, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 4579
    :cond_5
    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    iget-object p1, p1, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Ltwitter4j/auth/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    :goto_2
    return v2

    :cond_7
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
    .locals 4

    if-nez p3, :cond_0

    const/4 p3, 0x0

    new-array p3, p3, [Ltwitter4j/HttpParameter;

    .line 1899
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1909
    new-instance v1, Ltwitter4j/HttpParameter;

    const v2, 0x225fd7e6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1919
    sget-object v1, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1929
    new-instance v1, Ltwitter4j/HttpParameter;

    const v2, -0x224817b4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p5}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1939
    new-instance p5, Ltwitter4j/HttpParameter;

    const v1, 0x7d7adfe5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p5, v1, p4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1949
    new-instance p4, Ltwitter4j/HttpParameter;

    const-string p5, "oauth_version"

    const v1, 0x543c2a3a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, p5, v1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_1

    .line 1969
    new-instance p4, Ltwitter4j/HttpParameter;

    const-string p5, "oauth_token"

    invoke-virtual {p6}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, p5, v1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    :cond_1
    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p5

    array-length v1, p3

    add-int/2addr p5, v1

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1999
    invoke-interface {p4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2009
    invoke-static {p3}, Ltwitter4j/HttpParameter;->containsFile([Ltwitter4j/HttpParameter;)Z

    move-result p5

    if-nez p5, :cond_2

    .line 2019
    invoke-static {p3}, Ltwitter4j/auth/OAuthAuthorization;->toParamList([Ltwitter4j/HttpParameter;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2039
    :cond_2
    invoke-direct {p0, p2, p4}, Ltwitter4j/auth/OAuthAuthorization;->parseGetParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 2049
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "&"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 2059
    invoke-static {p2}, Ltwitter4j/auth/OAuthAuthorization;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2069
    invoke-static {p4}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2089
    sget-object p2, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/Logger;

    const-string p3, "OAuth base string: "

    invoke-virtual {p2, p3, p1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p0, p1, p6}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "OAuth signature: "

    .line 2109
    invoke-virtual {p2, p3, p1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    new-instance p2, Ltwitter4j/HttpParameter;

    const-string p3, "oauth_signature"

    invoke-direct {p2, p3, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2159
    iget-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 2169
    new-instance p1, Ltwitter4j/HttpParameter;

    const-string p2, "realm"

    iget-object p3, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2189
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OAuth "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ","

    const/4 p3, 0x1

    invoke-static {v0, p2, p3}, Ltwitter4j/auth/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
    .locals 11

    .line 2559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2569
    sget-object v2, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 2579
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Ltwitter4j/auth/OAuthAuthorization;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public generateOAuthSignatureHttpParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .line 2619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2629
    sget-object v2, Ltwitter4j/auth/OAuthAuthorization;->RAND:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 2649
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2659
    new-instance v5, Ltwitter4j/HttpParameter;

    const v6, 0x225fd7e6

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2669
    sget-object v5, Ltwitter4j/auth/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/HttpParameter;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2679
    new-instance v5, Ltwitter4j/HttpParameter;

    const v6, -0x224817b4

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0, v1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;J)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2689
    new-instance v0, Ltwitter4j/HttpParameter;

    const v1, 0x7d7adfe5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;J)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2699
    new-instance v0, Ltwitter4j/HttpParameter;

    const v1, 0x7d7adf7d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543c2a3a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2709
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v0, :cond_0

    .line 2719
    new-instance v0, Ltwitter4j/HttpParameter;

    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {v1}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1af16f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2749
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2759
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2769
    invoke-direct {p0, p2, v0}, Ltwitter4j/auth/OAuthAuthorization;->parseGetParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 2789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "&"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2799
    invoke-static {p2}, Ltwitter4j/auth/OAuthAuthorization;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2809
    invoke-static {v0}, Ltwitter4j/auth/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2839
    iget-object p2, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {p0, p1, p2}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object p1

    .line 2859
    new-instance p2, Ltwitter4j/HttpParameter;

    const v0, 0x6d06c578

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4

    nop

    .array-data 1
    .end array-data
.end method

.method generateSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3299
    invoke-virtual {p0, p1, v0}, Ltwitter4j/auth/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method generateSignature(Ljava/lang/String;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;
    .locals 5

    const v0, 0x5433dbba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 3019
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x6d025678

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_0

    .line 3049
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-static {v3}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3059
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 3079
    :cond_0
    invoke-virtual {p2}, Ltwitter4j/auth/OAuthToken;->getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-static {v4}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ltwitter4j/auth/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3109
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3119
    invoke-virtual {p2, v3}, Ltwitter4j/auth/OAuthToken;->setSecretKeySpec(Ljavax/crypto/spec/SecretKeySpec;)V

    :cond_1
    move-object v2, v3

    .line 3149
    :goto_0
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3159
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3239
    invoke-static {p1}, Ltwitter4j/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 3209
    sget-object p2, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/Logger;

    const v0, -0x4513b65f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ltwitter4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3219
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 3179
    sget-object p2, Ltwitter4j/auth/OAuthAuthorization;->logger:Ltwitter4j/Logger;

    const v0, 0x225fd28e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ltwitter4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3189
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;
    .locals 3

    .line 669
    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getMethod()Ltwitter4j/RequestMethod;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/RequestMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/HttpRequest;->getParameters()[Ltwitter4j/HttpParameter;

    move-result-object p1

    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {p0, v0, v1, p1, v2}, Ltwitter4j/auth/OAuthAuthorization;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/OAuthToken;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1219
    invoke-direct {p0}, Ltwitter4j/auth/OAuthAuthorization;->ensureTokenIsAvailable()V

    .line 1229
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    instance-of v1, v0, Ltwitter4j/auth/AccessToken;

    if-eqz v1, :cond_0

    .line 1239
    check-cast v0, Ltwitter4j/auth/AccessToken;

    return-object v0

    .line 1259
    :cond_0
    new-instance v0, Ltwitter4j/auth/AccessToken;

    sget-object v1, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/HttpClient;

    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p0, v3}, Ltwitter4j/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/HttpResponse;)V

    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 1269
    move-object v1, v0

    check-cast v1, Ltwitter4j/auth/AccessToken;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1319
    invoke-direct {p0}, Ltwitter4j/auth/OAuthAuthorization;->ensureTokenIsAvailable()V

    .line 1329
    new-instance v0, Ltwitter4j/auth/AccessToken;

    sget-object v1, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/HttpClient;

    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/HttpParameter;

    new-instance v4, Ltwitter4j/HttpParameter;

    const v5, -0x224d0634

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    const/4 p1, 0x0

    invoke-interface {v1, v2, v3, p0, p1}, Ltwitter4j/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/HttpResponse;)V

    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 1349
    move-object p1, v0

    check-cast p1, Ltwitter4j/auth/AccessToken;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, -0x4513b22f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 1529
    :try_start_0
    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    .line 1539
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1589
    :cond_0
    new-instance v0, Ltwitter4j/auth/AccessToken;

    sget-object v2, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/HttpClient;

    const/4 v3, 0x3

    new-array v3, v3, [Ltwitter4j/HttpParameter;

    new-instance v4, Ltwitter4j/HttpParameter;

    const-string v5, "x_auth_username"

    invoke-direct {v4, v5, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    new-instance p1, Ltwitter4j/HttpParameter;

    const-string v4, "x_auth_password"

    invoke-direct {p1, v4, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    aput-object p1, v3, p2

    new-instance p1, Ltwitter4j/HttpParameter;

    const-string p2, "x_auth_mode"

    const-string v4, "client_auth"

    invoke-direct {p1, p2, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const/4 p1, 0x0

    invoke-interface {v2, v1, v3, p0, p1}, Ltwitter4j/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/auth/AccessToken;-><init>(Ltwitter4j/HttpResponse;)V

    iput-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 1639
    move-object p1, v0

    check-cast p1, Ltwitter4j/auth/AccessToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1659
    new-instance p2, Ltwitter4j/TwitterException;

    const v0, 0x5d1afc47

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    invoke-direct {p2, v0, p1, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p2

    .array-data 1
    .end array-data
.end method

.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/AccessToken;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1399
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 1409
    invoke-virtual {p0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1459
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 1469
    invoke-virtual {p0, p2}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getOAuthRequestToken()Ltwitter4j/auth/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 879
    invoke-virtual {p0, v0, v0, v0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 929
    invoke-virtual {p0, p1, v0, v0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 979
    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/auth/OAuthAuthorization;->getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getOAuthRequestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/auth/RequestToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    instance-of v0, v0, Ltwitter4j/auth/AccessToken;

    if-nez v0, :cond_3

    .line 1059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1079
    new-instance v1, Ltwitter4j/HttpParameter;

    const v2, 0x6d06cb20

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1109
    new-instance p1, Ltwitter4j/HttpParameter;

    const v1, 0x6d06caa0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 1139
    new-instance p1, Ltwitter4j/HttpParameter;

    const-string p2, "x_auth_mode"

    invoke-direct {p1, p2, p3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_2
    new-instance p1, Ltwitter4j/auth/RequestToken;

    sget-object p2, Ltwitter4j/auth/OAuthAuthorization;->http:Ltwitter4j/HttpClient;

    iget-object p3, p0, Ltwitter4j/auth/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {p3}, Ltwitter4j/conf/Configuration;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, p0, v1}, Ltwitter4j/HttpClient;->post(Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ltwitter4j/HttpResponseListener;)Ltwitter4j/HttpResponse;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ltwitter4j/auth/RequestToken;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/auth/OAuthSupport;)V

    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    .line 1169
    move-object p2, p1

    check-cast p2, Ltwitter4j/auth/RequestToken;

    return-object p1

    .line 1039
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Access token already available."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 4659
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 4669
    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4679
    iget-object v2, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ltwitter4j/auth/OAuthToken;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public isEnabled()Z
    .locals 1

    .line 809
    iget-object v0, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    if-eqz v0, :cond_0

    instance-of v0, v0, Ltwitter4j/auth/AccessToken;

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

.method public setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    .locals 0

    .line 1719
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

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

    .line 4419
    :goto_0
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 4429
    :goto_1
    iput-object p2, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setOAuthRealm(Ljava/lang/String;)V
    .locals 0

    .line 1819
    iput-object p1, p0, Ltwitter4j/auth/OAuthAuthorization;->realm:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4739
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d1af94f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225fd8fe

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuthAuthorization;->oauthToken:Ltwitter4j/auth/OAuthToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
