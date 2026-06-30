.class public final Ltwitter4j/auth/AuthorizationFactory;
.super Ljava/lang/Object;
.source "AuthorizationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/auth/Authorization;
    .locals 3

    .line 359
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerKey()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthConsumerSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 399
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->isApplicationOnlyAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ltwitter4j/auth/OAuth2Authorization;

    invoke-direct {v0, p0}, Ltwitter4j/auth/OAuth2Authorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 419
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuth2TokenType()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuth2AccessToken()Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 449
    new-instance v2, Ltwitter4j/auth/OAuth2Token;

    invoke-direct {v2, v1, p0}, Ltwitter4j/auth/OAuth2Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ltwitter4j/auth/OAuth2Authorization;->setOAuth2Token(Ltwitter4j/auth/OAuth2Token;)V

    goto :goto_0

    .line 509
    :cond_0
    new-instance v0, Ltwitter4j/auth/OAuthAuthorization;

    invoke-direct {v0, p0}, Ltwitter4j/auth/OAuthAuthorization;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 519
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenSecret()Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 549
    new-instance v2, Ltwitter4j/auth/AccessToken;

    invoke-direct {v2, v1, p0}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ltwitter4j/auth/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    goto :goto_0

    .line 599
    :cond_1
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-interface {p0}, Ltwitter4j/conf/Configuration;->getPassword()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 629
    new-instance v1, Ltwitter4j/auth/BasicAuthorization;

    invoke-direct {v1, v0, p0}, Ltwitter4j/auth/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 669
    invoke-static {}, Ltwitter4j/auth/NullAuthorization;->getInstance()Ltwitter4j/auth/NullAuthorization;

    move-result-object v0

    :cond_4
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
