.class final Ltwitter4j/DirectMessageJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "DirectMessageJSONImpl.java"

# interfaces
.implements Ltwitter4j/DirectMessage;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x626f10a4d0a22d89L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private recipientId:J

.field private senderId:J

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    .line 459
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p1

    :try_start_0
    const-string v0, "event"

    .line 479
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p1

    .line 489
    invoke-direct {p0, p1}, Ltwitter4j/DirectMessageJSONImpl;->init(Ltwitter4j/JSONObject;)V

    .line 499
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 509
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 519
    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 549
    new-instance p2, Ltwitter4j/TwitterException;

    invoke-direct {p2, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw p2

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

    .line 589
    invoke-direct {p0}, Ltwitter4j/TwitterResponseImpl;-><init>()V

    .line 599
    invoke-direct {p0, p1}, Ltwitter4j/DirectMessageJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static createDirectMessageList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/DirectMessageList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1119
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1179
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    const-string v1, "events"

    .line 1189
    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    .line 1199
    new-instance v2, Ltwitter4j/DirectMessageListImpl;

    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3, v0, p0}, Ltwitter4j/DirectMessageListImpl;-><init>(ILtwitter4j/JSONObject;Ltwitter4j/HttpResponse;)V
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1219
    :try_start_2
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ltwitter4j/JSONException;

    if-eqz v1, :cond_4

    .line 1239
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v1

    .line 1249
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    .line 1259
    new-instance v2, Ltwitter4j/DirectMessageListImpl;

    invoke-direct {v2, v0, p0}, Ltwitter4j/DirectMessageListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    :goto_0
    const/4 p0, 0x0

    .line 1319
    :goto_1
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->length()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 1329
    invoke-virtual {v1, p0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v0

    .line 1339
    new-instance v3, Ltwitter4j/DirectMessageJSONImpl;

    invoke-direct {v3, v0}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 1349
    invoke-interface {v2, v3}, Ltwitter4j/DirectMessageList;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1369
    invoke-static {v3, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 1399
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1409
    invoke-static {v2, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2

    .line 1289
    :cond_4
    throw v0
    :try_end_2
    .catch Ltwitter4j/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 1449
    new-instance p1, Ltwitter4j/TwitterException;

    invoke-direct {p1, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x7d75ca25

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d18b617

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d789f1d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x224a5694

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v4, "id"

    .line 649
    invoke-static {v4, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v4

    iput-wide v4, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    .line 679
    invoke-virtual {p1, v3}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, 0x336a3c5b

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x336a3c2b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_0

    .line 689
    :try_start_1
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1, v3}, Ltwitter4j/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    const-string v3, "message_create"

    .line 699
    invoke-virtual {p1, v3}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p1

    const-string v3, "target"

    .line 709
    invoke-virtual {p1, v3}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v3

    invoke-static {v5, v3}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    .line 719
    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    const-string v3, "message_data"

    .line 729
    invoke-virtual {p1, v3}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v3, "created_at"

    .line 769
    invoke-static {v3, p1}, Ltwitter4j/ParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    .line 779
    invoke-static {v6, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    .line 789
    invoke-static {v5, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    .line 819
    :goto_0
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 829
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    .line 839
    invoke-static {v2}, Ltwitter4j/EntitiesParseUtil;->getUserMentions(Ltwitter4j/JSONObject;)[Ltwitter4j/UserMentionEntity;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 849
    invoke-static {v2}, Ltwitter4j/EntitiesParseUtil;->getUrls(Ltwitter4j/JSONObject;)[Ltwitter4j/URLEntity;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 859
    invoke-static {v2}, Ltwitter4j/EntitiesParseUtil;->getHashtags(Ltwitter4j/JSONObject;)[Ltwitter4j/HashtagEntity;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 869
    invoke-static {v2}, Ltwitter4j/EntitiesParseUtil;->getSymbols(Ltwitter4j/JSONObject;)[Ltwitter4j/SymbolEntity;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 889
    :cond_1
    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-array v2, v3, [Ltwitter4j/UserMentionEntity;

    :cond_2
    iput-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 899
    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v2, :cond_3

    new-array v2, v3, [Ltwitter4j/URLEntity;

    :cond_3
    iput-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 909
    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v2, :cond_4

    new-array v2, v3, [Ltwitter4j/HashtagEntity;

    :cond_4
    iput-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 919
    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    if-nez v2, :cond_5

    new-array v2, v3, [Ltwitter4j/SymbolEntity;

    :cond_5
    iput-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 939
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 949
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    .line 969
    invoke-virtual {v1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/MediaEntity;

    .line 979
    iput-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 989
    new-instance v4, Ltwitter4j/MediaEntityJSONImpl;

    invoke-virtual {v1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-direct {v4, v0}, Ltwitter4j/MediaEntityJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    aput-object v4, v2, v3

    .line 1019
    :cond_6
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v0, :cond_7

    new-array v0, v3, [Ltwitter4j/MediaEntity;

    :cond_7
    iput-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    const-string v0, "text"

    .line 1029
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v2, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v3, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {p1, v0, v1, v2, v3}, Ltwitter4j/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;
    :try_end_1
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1059
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 2019
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    .line 2039
    :cond_1
    check-cast p1, Ltwitter4j/DirectMessageJSONImpl;

    .line 2059
    iget-wide v1, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    iget-wide v3, p1, Ltwitter4j/DirectMessageJSONImpl;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    return v0

    .line 2069
    :cond_2
    iget-wide v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    iget-wide v3, p1, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    .line 2079
    :cond_3
    iget-wide v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    iget-wide v3, p1, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    return v0

    .line 2089
    :cond_4
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v2, p1, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_5
    iget-object v1, p1, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    if-eqz v1, :cond_6

    :goto_0
    return v0

    .line 2099
    :cond_6
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    if-eqz v1, :cond_7

    iget-object v2, p1, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_7
    iget-object v1, p1, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    if-eqz v1, :cond_8

    :goto_1
    return v0

    .line 2119
    :cond_8
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v2, p1, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 2139
    :cond_9
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v2, p1, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 2159
    :cond_a
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v2, p1, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 2179
    :cond_b
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    iget-object v2, p1, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 2199
    :cond_c
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    iget-object p1, p1, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    :goto_2
    return v0

    .array-data 1
    .end array-data
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1559
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .line 1859
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getId()J
    .locals 2

    .line 1509
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .line 1909
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRecipient()Ltwitter4j/User;
    .locals 2

    .line 2709
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const v1, -0x224a5034

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRecipientId()J
    .locals 2

    .line 1609
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRecipientScreenName()Ljava/lang/String;
    .locals 2

    .line 2609
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const v1, -0x224a5034

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSender()Ltwitter4j/User;
    .locals 2

    .line 2659
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const v1, -0x224a5034

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSenderId()J
    .locals 2

    .line 1659
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSenderScreenName()Ljava/lang/String;
    .locals 2

    .line 2559
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const v1, -0x224a5034

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSymbolEntities()[Ltwitter4j/SymbolEntity;
    .locals 1

    .line 1959
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1709
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .line 1809
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .line 1759
    iget-object v0, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 8

    .line 2249
    iget-wide v0, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2259
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2269
    iget-wide v4, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2279
    iget-wide v4, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    ushr-long v1, v4, v2

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2289
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2299
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2309
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2319
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2329
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2339
    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x4511fb07

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ltwitter4j/DirectMessageJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d18bdaf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d18bc1f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/DirectMessageJSONImpl;->senderId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224a5cdc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/DirectMessageJSONImpl;->recipientId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4511f91f    # -0.0018160009f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224a5fcc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 2459
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x543195fa

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 2469
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d18bebf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 2479
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4511ffaf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 2489
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7891a5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 2499
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
