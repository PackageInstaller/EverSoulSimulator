.class Ltwitter4j/HashtagEntityJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "HashtagEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/HashtagEntity;
.implements Ltwitter4j/SymbolEntity;


# static fields
.field private static final serialVersionUID:J = -0x49ccb94b06a4978aL


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 379
    invoke-virtual {p0, p1}, Ltwitter4j/HashtagEntityJSONImpl;->setStart(I)V

    .line 389
    invoke-virtual {p0, p2}, Ltwitter4j/HashtagEntityJSONImpl;->setEnd(I)V

    .line 399
    iput-object p3, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

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

    .line 319
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 329
    invoke-direct {p0, p1}, Ltwitter4j/HashtagEntityJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private init(Ltwitter4j/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    const v0, -0x4515b29f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "indices"

    .line 499
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 509
    invoke-virtual {v1, v2}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/HashtagEntityJSONImpl;->setStart(I)V

    const/4 v2, 0x1

    .line 519
    invoke-virtual {v1, v2}, Ltwitter4j/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ltwitter4j/HashtagEntityJSONImpl;->setEnd(I)V

    .line 539
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 579
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

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

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 799
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 819
    :cond_1
    check-cast p1, Ltwitter4j/HashtagEntityJSONImpl;

    .line 839
    iget-object v2, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1

    .array-data 1
    .end array-data
.end method

.method public getEnd()I
    .locals 1

    .line 739
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStart()I
    .locals 1

    .line 689
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 639
    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 909
    iget-object v0, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x543225da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/HashtagEntityJSONImpl;->text:Ljava/lang/String;

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

    .array-data 1
    .end array-data
.end method
