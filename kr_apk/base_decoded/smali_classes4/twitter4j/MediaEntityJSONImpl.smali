.class public Ltwitter4j/MediaEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "MediaEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/MediaEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/MediaEntityJSONImpl$Variant;,
        Ltwitter4j/MediaEntityJSONImpl$Size;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15d0ba67dd983162L


# instance fields
.field private displayURL:Ljava/lang/String;

.field private expandedURL:Ljava/lang/String;

.field private extAltText:Ljava/lang/String;

.field protected id:J

.field private mediaURL:Ljava/lang/String;

.field private mediaURLHttps:Ljava/lang/String;

.field private sizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected type:Ljava/lang/String;

.field protected url:Ljava/lang/String;

.field private videoAspectRatioHeight:I

.field private videoAspectRatioWidth:I

.field private videoDurationMillis:J

.field private videoVariants:[Ltwitter4j/MediaEntityJSONImpl$Variant;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1029
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x7d7b733d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x4512232f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1b652f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6d0b0e48

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    :try_start_0
    const-string v4, "indices"

    .line 449
    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 459
    invoke-virtual {v4, v5}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {p0, v6}, Ltwitter4j/MediaEntityJSONImpl;->setStart(I)V

    const/4 v6, 0x1

    .line 469
    invoke-virtual {v4, v6}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Ltwitter4j/MediaEntityJSONImpl;->setEnd(I)V

    const-string v4, "id"

    .line 479
    invoke-static {v4, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v7

    iput-wide v7, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    const-string v4, "url"

    .line 499
    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/lang/String;

    const-string v4, "expanded_url"

    .line 509
    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/lang/String;

    const-string v4, "media_url"

    .line 519
    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/lang/String;

    const-string v4, "media_url_https"

    .line 529
    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/lang/String;

    const-string v4, "display_url"

    .line 539
    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    const-string v4, "sizes"

    .line 559
    invoke-virtual {p1, v4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    .line 569
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    .line 589
    sget-object v8, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    const-string v9, "large"

    invoke-direct {p0, v7, v4, v8, v9}, Ltwitter4j/MediaEntityJSONImpl;->addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 599
    iget-object v7, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v8, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    const-string v9, "medium"

    invoke-direct {p0, v7, v4, v8, v9}, Ltwitter4j/MediaEntityJSONImpl;->addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 609
    iget-object v7, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v8, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    const-string v9, "small"

    invoke-direct {p0, v7, v4, v8, v9}, Ltwitter4j/MediaEntityJSONImpl;->addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 619
    iget-object v7, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v8, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    const-string v9, "thumb"

    invoke-direct {p0, v7, v4, v8, v9}, Ltwitter4j/MediaEntityJSONImpl;->addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1, v3}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 639
    invoke-virtual {p1, v3}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->type:Ljava/lang/String;

    .line 669
    :cond_0
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 679
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    const-string v3, "aspect_ratio"

    .line 689
    invoke-virtual {v2, v3}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v3

    .line 699
    invoke-virtual {v3, v5}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v4

    iput v4, p0, Ltwitter4j/MediaEntityJSONImpl;->videoAspectRatioWidth:I

    .line 709
    invoke-virtual {v3, v6}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Ltwitter4j/MediaEntityJSONImpl;->videoAspectRatioHeight:I

    .line 739
    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 749
    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/MediaEntityJSONImpl;->videoDurationMillis:J

    :cond_1
    const-string v0, "variants"

    .line 779
    invoke-virtual {v2, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ltwitter4j/MediaEntityJSONImpl$Variant;

    iput-object v2, p0, Ltwitter4j/MediaEntityJSONImpl;->videoVariants:[Ltwitter4j/MediaEntityJSONImpl$Variant;

    .line 799
    :goto_0
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 809
    iget-object v2, p0, Ltwitter4j/MediaEntityJSONImpl;->videoVariants:[Ltwitter4j/MediaEntityJSONImpl$Variant;

    new-instance v3, Ltwitter4j/MediaEntityJSONImpl$Variant;

    invoke-virtual {v0, v5}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/MediaEntityJSONImpl$Variant;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v5, [Ltwitter4j/MediaEntityJSONImpl$Variant;

    .line 839
    iput-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->videoVariants:[Ltwitter4j/MediaEntityJSONImpl$Variant;

    .line 869
    :cond_3
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 879
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/MediaEntityJSONImpl;->extAltText:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 919
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private addMediaEntitySizeIfNotNull(Ljava/util/Map;Ltwitter4j/JSONObject;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;",
            "Ltwitter4j/JSONObject;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 969
    invoke-virtual {p2, p4}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    new-instance v0, Ltwitter4j/MediaEntityJSONImpl$Size;

    invoke-virtual {p2, p4}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p2

    invoke-direct {v0, p2}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/JSONObject;)V

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic compareTo(Ltwitter4j/EntityIndex;)I
    .locals 0

    .line 259
    invoke-super {p0, p1}, Ltwitter4j/EntityIndex;->compareTo(Ltwitter4j/EntityIndex;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 3169
    :cond_0
    instance-of v1, p1, Ltwitter4j/MediaEntityJSONImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3189
    :cond_1
    check-cast p1, Ltwitter4j/MediaEntityJSONImpl;

    .line 3209
    iget-wide v3, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    iget-wide v5, p1, Ltwitter4j/MediaEntityJSONImpl;->id:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0

    .array-data 1
    .end array-data
.end method

.method public getDisplayURL()Ljava/lang/String;
    .locals 1

    .line 1339
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnd()I
    .locals 1

    .line 1589
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExpandedURL()Ljava/lang/String;
    .locals 1

    .line 1389
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExtAltText()Ljava/lang/String;
    .locals 1

    .line 2429
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->extAltText:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getId()J
    .locals 2

    .line 1089
    iget-wide v0, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 1

    .line 1139
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMediaURLHttps()Ljava/lang/String;
    .locals 1

    .line 1189
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSizes()Ljava/util/Map;
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

    .line 1439
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStart()I
    .locals 1

    .line 1539
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1239
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1489
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->type:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 1289
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVideoAspectRatioHeight()I
    .locals 1

    .line 2329
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl;->videoAspectRatioHeight:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVideoAspectRatioWidth()I
    .locals 1

    .line 2279
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl;->videoAspectRatioWidth:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVideoDurationMillis()J
    .locals 2

    .line 2379
    iget-wide v0, p0, Ltwitter4j/MediaEntityJSONImpl;->videoDurationMillis:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVideoVariants()[Ltwitter4j/MediaEntity$Variant;
    .locals 1

    .line 2479
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->videoVariants:[Ltwitter4j/MediaEntityJSONImpl$Variant;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 4

    .line 3279
    iget-wide v0, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3329
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d075100    # 2.6174E27f

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432333a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x54324f32

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3369eacb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3369ea6b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249862c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b4f6d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249814c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d0755a0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl;->videoAspectRatioWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1b6007

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl;->videoAspectRatioHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249834c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/MediaEntityJSONImpl;->videoDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b4a55

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->videoVariants:[Ltwitter4j/MediaEntityJSONImpl$Variant;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1b622f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->extAltText:Ljava/lang/String;

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
