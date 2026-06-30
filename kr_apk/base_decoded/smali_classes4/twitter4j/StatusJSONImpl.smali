.class final Ltwitter4j/StatusJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ltwitter4j/Logger;

.field private static final serialVersionUID:J = -0x59aac71ba3de09f1L


# instance fields
.field private contributorsIDs:[J

.field private createdAt:Ljava/util/Date;

.field private currentUserRetweetId:J

.field private displayTextRangeEnd:I

.field private displayTextRangeStart:I

.field private favoriteCount:I

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isPossiblySensitive:Z

.field private isRetweeted:Z

.field private isTruncated:Z

.field private lang:Ljava/lang/String;

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private place:Ltwitter4j/Place;

.field private quotedStatus:Ltwitter4j/Status;

.field private quotedStatusId:J

.field private quotedStatusPermalink:Ltwitter4j/URLEntity;

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private scopes:Ltwitter4j/Scopes;

.field private source:Ljava/lang/String;

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;

.field private withheldInCountries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 329
    const-class v0, Ltwitter4j/StatusJSONImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/StatusJSONImpl;->logger:Ltwitter4j/Logger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .line 959
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    const/4 v0, -0x1

    .line 389
    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeStart:I

    .line 399
    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeEnd:I

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 499
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    const-wide/16 v1, -0x1

    .line 639
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 659
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 669
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 689
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 729
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    const/4 v0, -0x1

    .line 389
    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeStart:I

    .line 399
    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeEnd:I

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 499
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    const-wide/16 v1, -0x1

    .line 639
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 659
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 669
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 689
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    .line 739
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p1

    .line 749
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 759
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 769
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 779
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 909
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    const/4 v0, -0x1

    .line 389
    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeStart:I

    .line 399
    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeEnd:I

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 499
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    const-wide/16 v1, -0x1

    .line 639
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 659
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 669
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 689
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    .line 919
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/JSONObject;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 829
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    const/4 v0, -0x1

    .line 389
    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeStart:I

    .line 399
    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeEnd:I

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 499
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    const-wide/16 v1, -0x1

    .line 639
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    .line 659
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 669
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 689
    iput-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    .line 839
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 849
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 859
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private collectEntities(Ltwitter4j/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;,
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x7d789f1d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1999
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2009
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 2019
    invoke-static {v0}, Ltwitter4j/EntitiesParseUtil;->getUserMentions(Ltwitter4j/JSONObject;)[Ltwitter4j/UserMentionEntity;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 2029
    invoke-static {v0}, Ltwitter4j/EntitiesParseUtil;->getUrls(Ltwitter4j/JSONObject;)[Ltwitter4j/URLEntity;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 2039
    invoke-static {v0}, Ltwitter4j/EntitiesParseUtil;->getHashtags(Ltwitter4j/JSONObject;)[Ltwitter4j/HashtagEntity;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 2049
    invoke-static {v0}, Ltwitter4j/EntitiesParseUtil;->getSymbols(Ltwitter4j/JSONObject;)[Ltwitter4j/SymbolEntity;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 2059
    invoke-static {v0}, Ltwitter4j/EntitiesParseUtil;->getMedia(Ltwitter4j/JSONObject;)[Ltwitter4j/MediaEntity;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    :cond_0
    const v0, 0x54328b7a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 2079
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2089
    new-instance v1, Ltwitter4j/StatusJSONImpl;

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatus:Ltwitter4j/Status;

    :cond_1
    const v0, -0x4512e547

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 2109
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2119
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    :cond_2
    const v0, 0x6d079728

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 2139
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2149
    new-instance v1, Ltwitter4j/QuotedStatusPermalinkJSONImpl;

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Ltwitter4j/QuotedStatusPermalinkJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusPermalink:Ltwitter4j/URLEntity;

    :cond_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static createStatusList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 4389
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4399
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 4419
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v0

    .line 4429
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    .line 4439
    new-instance v2, Ltwitter4j/ResponseListImpl;

    invoke-direct {v2, v1, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_2

    .line 4459
    invoke-virtual {v0, p0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 4469
    new-instance v4, Ltwitter4j/StatusJSONImpl;

    invoke-direct {v4, v3}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 4479
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4489
    invoke-static {v4, v3}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4509
    :cond_1
    invoke-interface {v2, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 4529
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 4539
    invoke-static {v2, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p0

    .line 4579
    new-instance p1, Ltwitter4j/TwitterException;

    invoke-direct {p1, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const v2, -0x224942dc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5d1bad47

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x2257b8e6

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x5439a272

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    const v6, -0x22494dac

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x336921ab

    invoke-static {v7}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v7

    const v8, -0x4512eadf

    invoke-static {v8}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v8

    const v9, -0x4515b29f

    invoke-static {v9}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v9

    const v10, -0x4512e977

    invoke-static {v10}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v10

    const v11, -0x4512e547

    invoke-static {v11}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x54328b7a

    invoke-static {v12}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v12

    const v13, -0x4512e9d7

    invoke-static {v13}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7d7b87dd

    invoke-static {v14}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x6d079a28

    invoke-static {v15}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v3

    const v3, 0x225376ce

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v2

    const v2, 0x543effa2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 1009
    invoke-static {v2, v0}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v4

    iput-wide v4, v1, Ltwitter4j/StatusJSONImpl;->id:J

    const v4, 0x3366c17b

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    .line 1019
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    const v4, -0x2240df74

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    .line 1029
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v1, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    const v4, 0x6d079df0

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    .line 1039
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v4

    iput-boolean v4, v1, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    const v4, 0x6d079d58

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    .line 1049
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v4

    iput-wide v4, v1, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    const v4, 0x6d079ce0

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    .line 1059
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v4

    iput-wide v4, v1, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    const v4, 0x7d7b815d

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    .line 1069
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v4

    iput-boolean v4, v1, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    const v4, 0x336926eb

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    .line 1079
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v4

    iput-boolean v4, v1, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    const v4, -0x22494bf4

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    .line 1089
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    const v4, -0x22494a3c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    .line 1099
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v4

    iput-wide v4, v1, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    const v4, -0x4512ecf7

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 1109
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v4

    iput v4, v1, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    const v4, 0x6d078188

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    .line 1119
    invoke-static {v4, v0}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result v4

    iput-boolean v4, v1, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    .line 1139
    :try_start_0
    invoke-virtual {v0, v3}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1149
    new-instance v4, Ltwitter4j/UserJSONImpl;

    invoke-virtual {v0, v3}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v3

    invoke-direct {v4, v3}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v4, v1, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 1169
    :cond_0
    invoke-static/range {p1 .. p1}, Ltwitter4j/JSONImplFactory;->createGeoLocation(Ltwitter4j/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v3

    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 1179
    invoke-virtual {v0, v15}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1189
    new-instance v3, Ltwitter4j/PlaceJSONImpl;

    invoke-virtual {v0, v15}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 1219
    :cond_1
    invoke-virtual {v0, v14}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1229
    new-instance v3, Ltwitter4j/StatusJSONImpl;

    invoke-virtual {v0, v14}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    .line 1249
    :cond_2
    invoke-virtual {v0, v13}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 1259
    invoke-virtual {v0, v13}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v3

    .line 1269
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, v1, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    move v5, v4

    .line 1279
    :goto_0
    invoke-virtual {v3}, Ltwitter4j/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_4

    .line 1289
    iget-object v13, v1, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    invoke-virtual {v3, v5}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    aput-wide v14, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-array v3, v4, [J

    .line 1319
    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 1349
    :cond_4
    invoke-direct/range {p0 .. p1}, Ltwitter4j/StatusJSONImpl;->collectEntities(Ltwitter4j/JSONObject;)V

    .line 1359
    invoke-direct/range {p0 .. p1}, Ltwitter4j/StatusJSONImpl;->mergeExtendedEntities(Ltwitter4j/JSONObject;)V

    .line 1369
    invoke-virtual {v0, v12}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1379
    new-instance v3, Ltwitter4j/StatusJSONImpl;

    invoke-virtual {v0, v12}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->quotedStatus:Ltwitter4j/Status;

    .line 1399
    :cond_5
    invoke-virtual {v0, v11}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1409
    invoke-static {v11, v0}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v11

    iput-wide v11, v1, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    .line 1429
    :cond_6
    invoke-virtual {v0, v10}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1439
    invoke-virtual {v0, v10}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v3

    .line 1449
    invoke-virtual {v3, v4}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v5

    iput v5, v1, Ltwitter4j/StatusJSONImpl;->displayTextRangeStart:I

    const/4 v5, 0x1

    .line 1459
    invoke-virtual {v3, v5}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v3

    iput v3, v1, Ltwitter4j/StatusJSONImpl;->displayTextRangeEnd:I

    .line 1489
    :cond_7
    iget-object v3, v1, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v3, :cond_8

    new-array v3, v4, [Ltwitter4j/UserMentionEntity;

    :cond_8
    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 1499
    iget-object v3, v1, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v3, :cond_9

    new-array v3, v4, [Ltwitter4j/URLEntity;

    :cond_9
    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 1509
    iget-object v3, v1, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v3, :cond_a

    new-array v3, v4, [Ltwitter4j/HashtagEntity;

    :cond_a
    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 1519
    iget-object v3, v1, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    if-nez v3, :cond_b

    new-array v3, v4, [Ltwitter4j/SymbolEntity;

    :cond_b
    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 1529
    iget-object v3, v1, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v3, :cond_c

    new-array v3, v4, [Ltwitter4j/MediaEntity;

    :cond_c
    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 1539
    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1549
    invoke-virtual {v0, v9}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v9, v1, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v10, v1, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v11, v1, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v3, v5, v9, v10, v11}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    .line 1579
    :cond_d
    invoke-virtual {v0, v8}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1589
    invoke-virtual {v0, v8}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v8, v1, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v9, v1, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v10, v1, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v3, v5, v8, v9, v10}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    .line 1629
    :cond_e
    invoke-virtual {v0, v7}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1639
    invoke-virtual {v0, v7}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Ltwitter4j/StatusJSONImpl;->mergeExtendedTweet(Ltwitter4j/JSONObject;)V

    .line 1669
    :cond_f
    invoke-virtual {v0, v6}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1679
    invoke-virtual {v0, v6}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    :cond_10
    move-object/from16 v2, v19

    .line 1699
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1709
    invoke-static {v2, v0}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    :cond_11
    move-object/from16 v2, v18

    .line 1739
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1749
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    move-object/from16 v3, v17

    .line 1759
    invoke-virtual {v2, v3}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 1769
    invoke-virtual {v2, v3}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    .line 1779
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    .line 1789
    new-array v5, v3, [Ljava/lang/String;

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_12

    .line 1809
    invoke-virtual {v2, v6}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1829
    :cond_12
    new-instance v2, Ltwitter4j/ScopesImpl;

    invoke-direct {v2, v5}, Ltwitter4j/ScopesImpl;-><init>([Ljava/lang/String;)V

    iput-object v2, v1, Ltwitter4j/StatusJSONImpl;->scopes:Ltwitter4j/Scopes;

    :cond_13
    move-object/from16 v2, v16

    .line 1859
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1869
    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    .line 1879
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    .line 1889
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v1, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    :goto_2
    if-ge v4, v2, :cond_14

    .line 1909
    iget-object v3, v1, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    invoke-virtual {v0, v4}, Ltwitter4j/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_14
    return-void

    :catch_0
    move-exception v0

    .line 1949
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .array-data 1
    .end array-data
.end method

.method private mergeExtendedEntities(Ltwitter4j/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;,
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x7d7b9c4d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2199
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2209
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p1

    const v0, 0x7d75ca25

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2229
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object p1

    .line 2239
    invoke-virtual {p1}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    .line 2249
    new-array v1, v0, [Ltwitter4j/MediaEntity;

    iput-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2269
    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v3, Ltwitter4j/MediaEntityJSONImpl;

    invoke-virtual {p1, v1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Ltwitter4j/MediaEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private mergeExtendedTweet(Ltwitter4j/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    :try_start_0
    const-string v0, "display_text_range"

    .line 2349
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 2359
    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeStart:I

    const/4 v2, 0x1

    .line 2369
    invoke-virtual {v0, v2}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v0

    iput v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeEnd:I

    .line 2389
    invoke-direct {p0, p1}, Ltwitter4j/StatusJSONImpl;->collectEntities(Ltwitter4j/JSONObject;)V

    .line 2409
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_0

    new-array v0, v1, [Ltwitter4j/UserMentionEntity;

    :cond_0
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 2419
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_1

    new-array v0, v1, [Ltwitter4j/URLEntity;

    :cond_1
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 2429
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v0, :cond_2

    new-array v0, v1, [Ltwitter4j/HashtagEntity;

    :cond_2
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 2439
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    if-nez v0, :cond_3

    new-array v0, v1, [Ltwitter4j/SymbolEntity;

    :cond_3
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 2449
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v0, :cond_4

    new-array v0, v1, [Ltwitter4j/MediaEntity;

    :cond_4
    iput-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    const-string v0, "full_text"

    .line 2459
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v2, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v3, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {p1, v0, v1, v2, v3}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2489
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 319
    check-cast p1, Ltwitter4j/Status;

    invoke-virtual {p0, p1}, Ltwitter4j/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .locals 4

    .line 2549
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const p1, 0x7fffffff

    return p1

    :cond_1
    long-to-int p1, v0

    return p1

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 4749
    :cond_1
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Status;

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/StatusJSONImpl;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .array-data 1
    .end array-data
.end method

.method public getContributors()[J
    .locals 1

    .line 3269
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 2659
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCurrentUserRetweetId()J
    .locals 2

    .line 3719
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayTextRangeEnd()I
    .locals 1

    .line 2859
    iget v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeEnd:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayTextRangeStart()I
    .locals 1

    .line 2809
    iget v0, p0, Ltwitter4j/StatusJSONImpl;->displayTextRangeStart:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFavoriteCount()I
    .locals 1

    .line 3419
    iget v0, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .line 3169
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .line 3919
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getId()J
    .locals 2

    .line 2709
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .line 3119
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .line 3019
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInReplyToUserId()J
    .locals 2

    .line 3069
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 4329
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .line 3969
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPlace()Ltwitter4j/Place;
    .locals 1

    .line 3219
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getQuotedStatus()Ltwitter4j/Status;
    .locals 1

    .line 4219
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->quotedStatus:Ltwitter4j/Status;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getQuotedStatusId()J
    .locals 2

    .line 4169
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getQuotedStatusPermalink()Ltwitter4j/URLEntity;
    .locals 1

    .line 4279
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusPermalink:Ltwitter4j/URLEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRetweetCount()I
    .locals 2

    .line 3619
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    long-to-int v0, v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .locals 1

    .line 3569
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getScopes()Ltwitter4j/Scopes;
    .locals 1

    .line 4069
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->scopes:Ltwitter4j/Scopes;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 2909
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSymbolEntities()[Ltwitter4j/SymbolEntity;
    .locals 1

    .line 4019
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 2759
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .line 3869
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .line 3469
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .line 3819
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getWithheldInCountries()[Ljava/lang/String;
    .locals 1

    .line 4119
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 4639
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public isFavorited()Z
    .locals 1

    .line 3319
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isPossiblySensitive()Z
    .locals 1

    .line 3769
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isRetweet()Z
    .locals 1

    .line 3519
    iget-object v0, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

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

.method public isRetweeted()Z
    .locals 1

    .line 3369
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isRetweetedByMe()Z
    .locals 4

    .line 3669
    iget-wide v0, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

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

.method public isTruncated()Z
    .locals 1

    .line 2969
    iget-boolean v0, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 4799
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7d7b9d35

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d0783b8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d18bdaf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512f1bf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x54329d92

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225e965e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d0785e0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1bb18f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d078480

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isRetweeted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d078400

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/StatusJSONImpl;->favoriteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512f54f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512f417

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512f49f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b94b5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512fbb7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusJSONImpl;->isPossiblySensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b5d65

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b95ed

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->contributorsIDs:[J

    .line 4969
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512fadf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224a5fcc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 4989
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x543195fa

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 4999
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d18bebf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 5009
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4511ffaf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 5019
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7891a5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 5029
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432940a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->currentUserRetweetId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225e9eb6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432953a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->withheldInCountries:[Ljava/lang/String;

    .line 5059
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1bb93f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225e98d6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusJSONImpl;->quotedStatus:Ltwitter4j/Status;

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
