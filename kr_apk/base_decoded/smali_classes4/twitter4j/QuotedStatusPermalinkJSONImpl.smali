.class final Ltwitter4j/QuotedStatusPermalinkJSONImpl;
.super Ltwitter4j/EntityIndex;
.source "QuotedStatusPermalinkJSONImpl.java"

# interfaces
.implements Ltwitter4j/URLEntity;


# static fields
.field private static final serialVersionUID:J = -0x7d50f26ef03e509dL


# instance fields
.field private displayURL:Ljava/lang/String;

.field private expandedURL:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

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

    .line 339
    invoke-direct {p0}, Ltwitter4j/EntityIndex;-><init>()V

    .line 349
    invoke-direct {p0, p1}, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->init(Ltwitter4j/JSONObject;)V

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

    const v0, -0x224974ec

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d1b9487

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543c2392

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    :try_start_0
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 449
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    .line 479
    :cond_0
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 489
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->expandedURL:Ljava/lang/String;

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    iput-object v1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->expandedURL:Ljava/lang/String;

    .line 539
    :goto_0
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 549
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->displayURL:Ljava/lang/String;

    goto :goto_1

    .line 569
    :cond_2
    iget-object p1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    iput-object p1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->displayURL:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 599
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

    if-eqz p1, :cond_8

    .line 969
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 989
    :cond_1
    check-cast p1, Ltwitter4j/QuotedStatusPermalinkJSONImpl;

    .line 1009
    iget-object v2, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 1019
    :cond_3
    iget-object v2, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->expandedURL:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->expandedURL:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 1029
    :cond_5
    iget-object v2, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->displayURL:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    return v0

    :cond_8
    :goto_3
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayURL()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->displayURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnd()I
    .locals 1

    .line 909
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExpandedURL()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->expandedURL:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStart()I
    .locals 1

    .line 859
    invoke-super {p0}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 709
    iget-object v0, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 1079
    iget-object v0, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

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
    iget-object v2, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->expandedURL:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1099
    iget-object v2, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->displayURL:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d07a3f8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3369ea6b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->expandedURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249862c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/QuotedStatusPermalinkJSONImpl;->displayURL:Ljava/lang/String;

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
