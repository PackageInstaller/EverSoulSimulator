.class Ltwitter4j/TwitterAPIConfigurationJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "TwitterAPIConfigurationJSONImpl.java"

# interfaces
.implements Ltwitter4j/TwitterAPIConfiguration;


# static fields
.field private static final serialVersionUID:J = -0x31ce59ac93ba9d46L


# instance fields
.field private charactersReservedPerMedia:I

.field private dmTextCharacterLimit:I

.field private maxMediaPerUpload:I

.field private nonUsernamePaths:[Ljava/lang/String;

.field private photoSizeLimit:I

.field private photoSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field private shortURLLength:I

.field private shortURLLengthHttps:I


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x225eeeb6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 449
    :try_start_0
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v1

    const-string v2, "photo_size_limit"

    .line 459
    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    const-string v2, "short_url_length"

    .line 469
    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    const-string v2, "short_url_length_https"

    .line 479
    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    const-string v2, "characters_reserved_per_media"

    .line 489
    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    const-string v2, "dm_text_character_limit"

    .line 499
    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->dmTextCharacterLimit:I

    const-string v2, "photo_sizes"

    .line 519
    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 529
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    .line 539
    sget-object v4, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v6, "large"

    invoke-virtual {v2, v6}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "medium"

    .line 579
    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 619
    :goto_0
    iget-object v3, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v4, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl$Size;

    invoke-direct {v5, v0}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v3, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    new-instance v4, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v5, "small"

    invoke-virtual {v2, v5}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v3, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    new-instance v4, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v5, "thumb"

    invoke-virtual {v2, v5}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    invoke-direct {v4, v2}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 659
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 669
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "non_username_paths"

    .line 689
    invoke-virtual {v1, p1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Ltwitter4j/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 709
    :goto_1
    invoke-virtual {p1}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 719
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "max_media_per_upload"

    .line 739
    invoke-static {p1, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 759
    new-instance p2, Ltwitter4j/TwitterException;

    invoke-direct {p2, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw p2

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1229
    :cond_0
    instance-of v1, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1249
    :cond_1
    check-cast p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;

    .line 1269
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    if-eq v1, v3, :cond_2

    return v2

    .line 1289
    :cond_2
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->dmTextCharacterLimit:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->dmTextCharacterLimit:I

    if-eq v1, v3, :cond_3

    return v2

    .line 1299
    :cond_3
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    if-eq v1, v3, :cond_4

    return v2

    .line 1309
    :cond_4
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    if-eq v1, v3, :cond_5

    return v2

    .line 1319
    :cond_5
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    if-eq v1, v3, :cond_6

    return v2

    .line 1329
    :cond_6
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    iget v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    if-eq v1, v3, :cond_7

    return v2

    .line 1339
    :cond_7
    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 1359
    :cond_8
    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    iget-object p1, p1, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_a

    :goto_0
    return v2

    :cond_a
    return v0

    .array-data 1
    .end array-data
.end method

.method public getCharactersReservedPerMedia()I
    .locals 1

    .line 969
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDmTextCharacterLimit()I
    .locals 1

    .line 1019
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->dmTextCharacterLimit:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMaxMediaPerUpload()I
    .locals 1

    .line 1169
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNonUsernamePaths()[Ljava/lang/String;
    .locals 1

    .line 1119
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPhotoSizeLimit()I
    .locals 1

    .line 819
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPhotoSizes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getShortURLLength()I
    .locals 1

    .line 869
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getShortURLLengthHttps()I
    .locals 1

    .line 919
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 1439
    iget v0, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1449
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1459
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1469
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x20

    .line 1479
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->dmTextCharacterLimit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1489
    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1499
    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1509
    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d07fa50

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x22492874

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7be115

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1bcb3f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225eeab6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->dmTextCharacterLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7bfc95

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225ef576

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1639
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225ef49e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

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
