.class Ltwitter4j/AccountTotalsJSONImpl;
.super Ltwitter4j/TwitterResponseImpl;
.source "AccountTotalsJSONImpl.java"

# interfaces
.implements Ltwitter4j/AccountTotals;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3a48738c5e45b544L


# instance fields
.field private final favorites:I

.field private final followers:I

.field private final friends:I

.field private final updates:I


# direct methods
.method private constructor <init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Ltwitter4j/TwitterResponseImpl;-><init>(Ltwitter4j/HttpResponse;)V

    const-string p1, "updates"

    .line 359
    invoke-static {p1, p2}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    const-string p1, "followers"

    .line 369
    invoke-static {p1, p2}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    const-string p1, "favorites"

    .line 379
    invoke-static {p1, p2}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    const-string p1, "friends"

    .line 389
    invoke-static {p1, p2}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    return-void

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

    .line 429
    invoke-virtual {p1}, Ltwitter4j/HttpResponse;->asJSONObject()Ltwitter4j/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V

    .line 439
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 449
    invoke-static {}, Ltwitter4j/TwitterObjectFactory;->clearThreadLocalMap()V

    .line 459
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

    .line 509
    invoke-direct {p0, v0, p1}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/HttpResponse;Ltwitter4j/JSONObject;)V

    return-void

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

    if-eqz p1, :cond_6

    .line 769
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 789
    :cond_1
    check-cast p1, Ltwitter4j/AccountTotalsJSONImpl;

    .line 809
    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    iget v3, p1, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    if-eq v2, v3, :cond_2

    return v1

    .line 819
    :cond_2
    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    iget v3, p1, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    if-eq v2, v3, :cond_3

    return v1

    .line 829
    :cond_3
    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    iget v3, p1, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    if-eq v2, v3, :cond_4

    return v1

    .line 839
    :cond_4
    iget v2, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    iget p1, p1, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

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

.method public getFavorites()I
    .locals 1

    .line 659
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFollowers()I
    .locals 1

    .line 609
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFriends()I
    .locals 1

    .line 709
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUpdates()I
    .locals 1

    .line 559
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 909
    iget v0, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    mul-int/lit8 v0, v0, 0x1f

    .line 919
    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 929
    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 939
    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d18a807

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->updates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224a4b34

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->followers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225d8b16

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->favorites:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x543181a2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AccountTotalsJSONImpl;->friends:I

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
