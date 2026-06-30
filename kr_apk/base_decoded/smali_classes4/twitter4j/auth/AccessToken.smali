.class public Ltwitter4j/auth/AccessToken;
.super Ltwitter4j/auth/OAuthToken;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2247480a408bacb4L


# instance fields
.field private screenName:Ljava/lang/String;

.field private userId:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 389
    invoke-direct {p0, p1}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 319
    iput-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J

    const-string p1, "screen_name"

    .line 399
    invoke-virtual {p0, p1}, Ltwitter4j/auth/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    const-string p1, "user_id"

    .line 409
    invoke-virtual {p0, p1}, Ltwitter4j/auth/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 429
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 479
    invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 319
    iput-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J

    const-string p2, "-"

    .line 499
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 539
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ltwitter4j/auth/AccessToken;->userId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 609
    invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iput-wide p3, p0, Ltwitter4j/auth/AccessToken;->userId:J

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 349
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 859
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 869
    :cond_1
    invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 889
    :cond_2
    check-cast p1, Ltwitter4j/auth/AccessToken;

    .line 909
    iget-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J

    iget-wide v4, p1, Ltwitter4j/auth/AccessToken;->userId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 919
    :cond_3
    iget-object v2, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :goto_0
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 289
    invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 709
    iget-object v0, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getToken()Ljava/lang/String;
    .locals 1

    .line 289
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getTokenSecret()Ljava/lang/String;
    .locals 1

    .line 289
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserId()J
    .locals 2

    .line 799
    iget-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 5

    .line 999
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1009
    iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1019
    iget-wide v1, p0, Ltwitter4j/auth/AccessToken;->userId:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7d7acc05

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5433cf1a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/auth/AccessToken;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
