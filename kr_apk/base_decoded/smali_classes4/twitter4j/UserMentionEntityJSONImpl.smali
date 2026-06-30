.class Ltwitter4j/UserMentionEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "UserMentionEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/UserMentionEntity;


# static fields
.field private static final serialVersionUID:J = 0x541b429a37430ff5L


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private screenName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 389
    invoke-virtual {p0, p1}, Ltwitter4j/UserMentionEntityJSONImpl;->setStart(I)V

    .line 399
    invoke-virtual {p0, p2}, Ltwitter4j/UserMentionEntityJSONImpl;->setEnd(I)V

    .line 409
    iput-object p3, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    .line 419
    iput-object p4, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    .line 429
    iput-wide p5, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    return-void

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

    .line 329
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 339
    invoke-direct {p0, p1}, Ltwitter4j/UserMentionEntityJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, 0x225ebdae

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x451eea5f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "indices"

    .line 529
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 539
    invoke-virtual {v2, v3}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ltwitter4j/UserMentionEntityJSONImpl;->setStart(I)V

    const/4 v3, 0x1

    .line 549
    invoke-virtual {v2, v3}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/UserMentionEntityJSONImpl;->setEnd(I)V

    .line 569
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    .line 599
    :cond_0
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 609
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    :cond_1
    const-string v0, "id"

    .line 629
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J
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

    if-eqz p1, :cond_7

    .line 1019
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1039
    :cond_1
    check-cast p1, Ltwitter4j/UserMentionEntityJSONImpl;

    .line 1059
    iget-wide v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    iget-wide v4, p1, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 1069
    :cond_2
    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 1079
    :cond_4
    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    :goto_1
    return v1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnd()I
    .locals 1

    .line 959
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getId()J
    .locals 2

    .line 859
    iget-wide v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStart()I
    .locals 1

    .line 909
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 709
    iget-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 5

    .line 1149
    iget-object v0, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1159
    iget-object v2, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1169
    iget-wide v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d1adbbf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d78ee75

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b888d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/UserMentionEntityJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
