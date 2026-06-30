.class Ltwitter4j/MediaEntityJSONImpl$Size;
.super Ljava/lang/Object;
.source "MediaEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/MediaEntity$Size;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/MediaEntityJSONImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Size"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x22ea1139d41d0d71L


# instance fields
.field height:I

.field resize:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x6d076df8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 1739
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    const v0, -0x2249b95c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 1749
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    const v0, 0x3369d483

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 1759
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, -0x2249b9f4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    :goto_0
    iput p1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

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

    .line 1969
    :cond_0
    instance-of v1, p1, Ltwitter4j/MediaEntityJSONImpl$Size;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1989
    :cond_1
    check-cast p1, Ltwitter4j/MediaEntityJSONImpl$Size;

    .line 2009
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    iget v3, p1, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    if-eq v1, v3, :cond_2

    return v2

    .line 2019
    :cond_2
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    iget v3, p1, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    if-eq v1, v3, :cond_3

    return v2

    .line 2029
    :cond_3
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    iget p1, p1, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public getHeight()I
    .locals 1

    .line 1859
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResize()I
    .locals 1

    .line 1909
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getWidth()I
    .locals 1

    .line 1809
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 2099
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2109
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2119
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2179
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5432722a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d74254d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249b844

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Size;->resize:I

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
