.class public Ltwitter4j/OEmbedJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "OEmbedJSONImpl.java"

# interfaces
.implements Ltwitter4j/OEmbed;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1ea3afbfb4fc197bL


# instance fields
.field private authorName:Ljava/lang/String;

.field private authorURL:Ljava/lang/String;

.field private cacheAge:J

.field private html:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private width:I


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 359
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 369
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p1

    .line 379
    invoke-direct {p0, p1}, Ltwitter4j/OEmbedJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 389
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 399
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 409
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 469
    invoke-direct {p0, p1}, Ltwitter4j/OEmbedJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    :try_start_0
    const-string v0, "html"

    .line 519
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    const-string v0, "author_name"

    .line 529
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    const-string v0, "url"

    .line 539
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    const-string v0, "version"

    .line 549
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    const-string v0, "cache_age"

    .line 559
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    const-string v0, "author_url"

    .line 569
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    const-string v0, "width"

    .line 579
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltwitter4j/OEmbedJSONImpl;->width:I
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 649
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

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

    if-eqz p1, :cond_e

    .line 1069
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 1089
    :cond_1
    check-cast p1, Ltwitter4j/OEmbedJSONImpl;

    .line 1109
    iget-wide v2, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    iget-wide v4, p1, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 1119
    :cond_2
    iget v2, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    iget v3, p1, Ltwitter4j/OEmbedJSONImpl;->width:I

    if-eq v2, v3, :cond_3

    return v1

    .line 1129
    :cond_3
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 1139
    :cond_5
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 1149
    :cond_7
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 1159
    :cond_9
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_3
    return v1

    .line 1169
    :cond_b
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_c
    if-eqz p1, :cond_d

    :goto_4
    return v1

    :cond_d
    return v0

    :cond_e
    :goto_5
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getAccessLevel()I
    .locals 1

    .line 249
    invoke-super {p0}, Ltwitter4j/TwitterResponseImpl;->getAccessLevel()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorURL()Ljava/lang/String;
    .locals 1

    .line 959
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCacheAge()J
    .locals 2

    .line 909
    iget-wide v0, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .line 709
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .line 249
    invoke-super {p0}, Ltwitter4j/TwitterResponseImpl;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getWidth()I
    .locals 1

    .line 1009
    iget v0, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 6

    .line 1239
    iget-object v0, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1249
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1259
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1269
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1279
    iget-wide v2, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1289
    iget-object v2, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1299
    iget v1, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5432496a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225e4d66

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x451212f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x45122a1f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3369e17b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/OEmbedJSONImpl;->cacheAge:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d075bc0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x54324402

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/OEmbedJSONImpl;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
