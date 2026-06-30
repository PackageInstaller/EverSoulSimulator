.class final Ltwitter4j/CategoryJSONImpl;
.super Ljava/lang/Object;
.source "CategoryJSONImpl.java"

# interfaces
.implements Ltwitter4j/Category;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x34e495cc033cddf4L


# instance fields
.field private name:Ljava/lang/String;

.field private size:I

.field private slug:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    invoke-virtual {p0, p1}, Ltwitter4j/CategoryJSONImpl;->init(Ltwitter4j/JSONObject;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static createCategoriesList(Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asJSONArray()Ltwitter4j/JSONArray;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ltwitter4j/CategoryJSONImpl;->createCategoriesList(Ltwitter4j/JSONArray;Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static createCategoriesList(Ltwitter4j/JSONArray;Ltwitter4j/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/JSONArray;",
            "Ltwitter4j/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 489
    :try_start_0
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 519
    :cond_0
    new-instance v0, Ltwitter4j/ResponseListImpl;

    .line 529
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1, p1}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    const/4 p1, 0x0

    .line 539
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 549
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->getJSONObject(I)Ltwitter4j/JSONObject;

    move-result-object v1

    .line 559
    new-instance v2, Ltwitter4j/CategoryJSONImpl;

    invoke-direct {v2, v1}, Ltwitter4j/CategoryJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    .line 569
    invoke-interface {v0, v2}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    invoke-static {v2, v1}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 619
    :cond_2
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 629
    invoke-static {v0, p0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    .line 669
    new-instance p1, Ltwitter4j/TwitterException;

    invoke-direct {p1, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw p1

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

    if-eqz p1, :cond_7

    .line 929
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 949
    :cond_1
    check-cast p1, Ltwitter4j/CategoryJSONImpl;

    .line 969
    iget v2, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    iget v3, p1, Ltwitter4j/CategoryJSONImpl;->size:I

    if-eq v2, v3, :cond_2

    return v1

    .line 979
    :cond_2
    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 999
    :cond_4
    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 729
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSize()I
    .locals 1

    .line 869
    iget v0, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .line 779
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 1079
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1089
    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1099
    iget v1, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method init(Ltwitter4j/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    const v0, 0x54319fe2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    const v0, 0x54319f32

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/CategoryJSONImpl;->size:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x224a54b4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x336a3a4b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4511f1d7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/CategoryJSONImpl;->size:I

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
