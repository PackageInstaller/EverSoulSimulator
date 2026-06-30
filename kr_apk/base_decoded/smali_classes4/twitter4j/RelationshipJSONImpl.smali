.class Ltwitter4j/RelationshipJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "RelationshipJSONImpl.java"

# interfaces
.implements Ltwitter4j/Relationship;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1bc6b398d4f3dc20L


# instance fields
.field private final sourceBlockingTarget:Z

.field private final sourceCanDm:Z

.field private final sourceFollowedByTarget:Z

.field private final sourceFollowingTarget:Z

.field private final sourceMutingTarget:Z

.field private final sourceNotificationsEnabled:Z

.field private final sourceUserId:J

.field private final sourceUserScreenName:Ljava/lang/String;

.field private final targetUserId:J

.field private final targetUserScreenName:Ljava/lang/String;

.field private wantRetweets:Z


# direct methods
.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x225ebdae

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x543effa2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    :try_start_0
    const-string p1, "relationship"

    .line 589
    invoke-virtual {p2, p1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p1

    const-string v2, "source"

    .line 599
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v2

    const-string v3, "target"

    .line 609
    invoke-virtual {p1, v3}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p1

    .line 619
    invoke-static {v1, v2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    .line 629
    invoke-static {v1, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    .line 639
    invoke-static {v0, v2}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    .line 649
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    const-string p1, "blocking"

    .line 659
    invoke-static {p1, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result p1

    iput-boolean p1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    const-string p1, "following"

    .line 669
    invoke-static {p1, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result p1

    iput-boolean p1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    const-string p1, "followed_by"

    .line 679
    invoke-static {p1, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result p1

    iput-boolean p1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    const-string p1, "can_dm"

    .line 689
    invoke-static {p1, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result p1

    iput-boolean p1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceCanDm:Z

    const-string p1, "muting"

    .line 699
    invoke-static {p1, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result p1

    iput-boolean p1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceMutingTarget:Z

    const-string p1, "notifications_enabled"

    .line 709
    invoke-static {p1, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result p1

    iput-boolean p1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    const-string p1, "want_retweets"

    .line 719
    invoke-static {p1, v2}, Ltwitter4j/ParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/JSONObject;)Z

    move-result p1

    iput-boolean p1, p0, Ltwitter4j/RelationshipJSONImpl;->wantRetweets:Z
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 739
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x543c0232

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 449
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V

    .line 459
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 469
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 479
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 529
    invoke-direct {p0, v0, p1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static createRelationshipList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList<",
            "Ltwitter4j/Relationship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 809
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 839
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    .line 859
    new-instance v2, Ltwitter4j/ResponseListImpl;

    invoke-direct {v2, v1, p0}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_2

    .line 879
    invoke-virtual {v0, p0}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v3

    .line 889
    new-instance v4, Ltwitter4j/RelationshipJSONImpl;

    invoke-direct {v4, v3}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 899
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 909
    invoke-static {v4, v3}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :cond_1
    invoke-interface {v2, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 949
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 959
    invoke-static {v2, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p0

    .line 999
    new-instance p1, Ltwitter4j/TwitterException;

    invoke-direct {p1, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public canSourceDm()Z
    .locals 1

    .line 1519
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceCanDm:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 1729
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1749
    :cond_1
    check-cast p1, Ltwitter4j/RelationshipJSONImpl;

    .line 1769
    iget-boolean v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    iget-boolean v3, p1, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 1779
    :cond_2
    iget-boolean v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceCanDm:Z

    iget-boolean v3, p1, Ltwitter4j/RelationshipJSONImpl;->sourceCanDm:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 1789
    :cond_3
    iget-boolean v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    iget-boolean v3, p1, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 1799
    :cond_4
    iget-boolean v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    iget-boolean v3, p1, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 1809
    :cond_5
    iget-boolean v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceMutingTarget:Z

    iget-boolean v3, p1, Ltwitter4j/RelationshipJSONImpl;->sourceMutingTarget:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 1819
    :cond_6
    iget-boolean v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 1829
    :cond_7
    iget-wide v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    iget-wide v4, p1, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    return v1

    .line 1839
    :cond_8
    iget-wide v2, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    iget-wide v4, p1, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    return v1

    .line 1849
    :cond_9
    iget-boolean v2, p0, Ltwitter4j/RelationshipJSONImpl;->wantRetweets:Z

    iget-boolean v3, p1, Ltwitter4j/RelationshipJSONImpl;->wantRetweets:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 1859
    :cond_a
    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_b
    iget-object v2, p1, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_0
    return v1

    .line 1879
    :cond_c
    iget-object v2, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_1

    :cond_d
    if-eqz p1, :cond_e

    :goto_1
    return v1

    :cond_e
    return v0

    :cond_f
    :goto_2
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getSourceUserId()J
    .locals 2

    .line 1069
    iget-wide v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSourceUserScreenName()Ljava/lang/String;
    .locals 1

    .line 1219
    iget-object v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTargetUserId()J
    .locals 2

    .line 1119
    iget-wide v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTargetUserScreenName()Ljava/lang/String;
    .locals 1

    .line 1269
    iget-object v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 6

    .line 1959
    iget-wide v0, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1969
    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

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

    .line 1979
    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1989
    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1999
    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2009
    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2019
    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceCanDm:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2029
    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceMutingTarget:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2039
    iget-wide v4, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    ushr-long v1, v4, v2

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2049
    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 2059
    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->wantRetweets:Z

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public isSourceBlockingTarget()Z
    .locals 1

    .line 1169
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isSourceFollowedByTarget()Z
    .locals 1

    .line 1419
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isSourceFollowingTarget()Z
    .locals 1

    .line 1319
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isSourceMutingTarget()Z
    .locals 1

    .line 1569
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceMutingTarget:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isSourceNotificationsEnabled()Z
    .locals 1

    .line 1619
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isSourceWantRetweets()Z
    .locals 1

    .line 1669
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->wantRetweets:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isTargetFollowedBySource()Z
    .locals 1

    .line 1469
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isTargetFollowingSource()Z
    .locals 1

    .line 1369
    iget-boolean v0, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d1b9db7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x336912d3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d07ab08

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceBlockingTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7bb71d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432b20a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowingTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x336915bb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225ebb96

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceCanDm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225ebb16

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceMutingTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x22497a1c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512e327

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224945b4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/RelationshipJSONImpl;->wantRetweets:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
