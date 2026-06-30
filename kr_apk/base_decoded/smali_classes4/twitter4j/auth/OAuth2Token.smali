.class public Ltwitter4j/auth/OAuth2Token;
.super Ljava/lang/Object;
.source "OAuth2Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7cb268ce5538dff0L


# instance fields
.field private accessToken:Ljava/lang/String;

.field private tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    .line 479
    iput-object p2, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p1

    const v0, 0x225fc81e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0, p1}, Ltwitter4j/auth/OAuth2Token;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    :try_start_0
    const-string v0, "access_token"

    .line 409
    invoke-static {v0, p1}, Ltwitter4j/auth/OAuth2Token;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1019
    :try_start_0
    invoke-virtual {p1, p0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1049
    :cond_0
    invoke-virtual {p1, p0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 699
    instance-of v1, p1, Ltwitter4j/auth/OAuth2Token;

    if-nez v1, :cond_0

    goto :goto_2

    .line 739
    :cond_0
    check-cast p1, Ltwitter4j/auth/OAuth2Token;

    .line 749
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p1, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    if-eqz v1, :cond_2

    :goto_0
    return v0

    .line 779
    :cond_2
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    :goto_1
    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_2
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method generateAuthorizationHeader()Ljava/lang/String;
    .locals 3

    .line 619
    :try_start_0
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 649
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d0e1410

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 869
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 879
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x225fcbfe

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d06df28

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x22473c5c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
