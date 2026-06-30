.class Ltwitter4j/EntitiesParseUtil;
.super Ljava/lang/Object;
.source "EntitiesParseUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static getHashtags(Ltwitter4j/JSONObject;)[Ltwitter4j/HashtagEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;,
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x7d78920d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p0

    .line 369
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    .line 379
    new-array v1, v0, [Ltwitter4j/HashtagEntity;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 399
    new-instance v3, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {p0, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static getMedia(Ltwitter4j/JSONObject;)[Ltwitter4j/MediaEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;,
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x7d75ca25

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 649
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p0

    .line 659
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    .line 669
    new-array v1, v0, [Ltwitter4j/MediaEntity;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 689
    new-instance v3, Ltwitter4j/MediaEntityJSONImpl;

    invoke-virtual {p0, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/MediaEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static getSymbols(Ltwitter4j/JSONObject;)[Ltwitter4j/SymbolEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;,
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x336a37d3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p0

    .line 509
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    .line 519
    new-array v1, v0, [Ltwitter4j/SymbolEntity;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 549
    new-instance v3, Ltwitter4j/HashtagEntityJSONImpl;

    invoke-virtual {p0, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/HashtagEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static getUrls(Ltwitter4j/JSONObject;)[Ltwitter4j/URLEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;,
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x6d0110e8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    .line 239
    new-array v1, v0, [Ltwitter4j/URLEntity;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 259
    new-instance v3, Ltwitter4j/URLEntityJSONImpl;

    invoke-virtual {p0, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/URLEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static getUserMentions(Ltwitter4j/JSONObject;)[Ltwitter4j/UserMentionEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;,
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x6d048e90

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    .line 99
    new-array v1, v0, [Ltwitter4j/UserMentionEntity;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 119
    new-instance v3, Ltwitter4j/UserMentionEntityJSONImpl;

    invoke-virtual {p0, v2}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
