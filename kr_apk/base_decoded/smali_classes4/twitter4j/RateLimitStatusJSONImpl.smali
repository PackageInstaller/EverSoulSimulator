.class final Ltwitter4j/RateLimitStatusJSONImpl;
.super Ljava/lang/Object;
.source "RateLimitStatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/RateLimitStatus;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6c1cd6cd5a4eb3adL


# instance fields
.field private limit:I

.field private remaining:I

.field private resetTimeInSeconds:I

.field private secondsUntilReset:I


# direct methods
.method private constructor <init>(III)V
    .locals 4

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    .line 739
    iput p2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    .line 749
    iput p3, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    int-to-long p1, p3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

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

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    invoke-virtual {p0, p1}, Ltwitter4j/RateLimitStatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const v1, 0x5432bdda

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 979
    invoke-virtual {p0, v1}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 999
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x225eb63e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 1039
    invoke-virtual {p0, v2}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1059
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0x33691c7b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    .line 1099
    invoke-virtual {p0, v3}, Ltwitter4j/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1119
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int p0, v3

    .line 1169
    new-instance v0, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v0, v1, v2, p0}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(III)V

    :cond_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method static createRateLimitStatuses(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p0

    .line 429
    invoke-static {p0}, Ltwitter4j/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 439
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 449
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 459
    invoke-static {v0, p0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "resources"

    .line 539
    invoke-virtual {p0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p0

    .line 549
    invoke-virtual {p0}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 559
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 569
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 579
    invoke-virtual {v2}, Ltwitter4j/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 589
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 609
    invoke-virtual {v2, v4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    .line 619
    new-instance v6, Ltwitter4j/RateLimitStatusJSONImpl;

    invoke-direct {v6, v5}, Ltwitter4j/RateLimitStatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 629
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 659
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 679
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1429
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1449
    :cond_1
    check-cast p1, Ltwitter4j/RateLimitStatusJSONImpl;

    .line 1469
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1479
    :cond_2
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    if-eq v2, v3, :cond_3

    return v1

    .line 1489
    :cond_3
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    iget v3, p1, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    if-eq v2, v3, :cond_4

    return v1

    .line 1499
    :cond_4
    iget v2, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    iget p1, p1, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1

    .array-data 1
    .end array-data
.end method

.method public getLimit()I
    .locals 1

    .line 1269
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRemaining()I
    .locals 1

    .line 1219
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResetTimeInSeconds()I
    .locals 1

    .line 1319
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSecondsUntilReset()I
    .locals 1

    .line 1369
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 1569
    iget v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1579
    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1589
    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1599
    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method init(Ltwitter4j/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x33649cc3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    const v0, 0x5d1b901f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 849
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    const v0, 0x2259d35e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x4512d687

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->remaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7bba7d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7bbbad

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224972ac

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/RateLimitStatusJSONImpl;->secondsUntilReset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
