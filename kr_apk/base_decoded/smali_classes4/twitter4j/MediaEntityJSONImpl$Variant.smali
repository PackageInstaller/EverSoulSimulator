.class Ltwitter4j/MediaEntityJSONImpl$Variant;
.super Ljava/lang/Object;
.source "MediaEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/MediaEntity$Variant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/MediaEntityJSONImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe417a3c1936481cL


# instance fields
.field bitrate:I

.field contentType:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x2249b81c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 2579
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->bitrate:I

    const v0, 0x225e7816

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2589
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->contentType:Ljava/lang/String;

    const v0, 0x543c2392

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 2599
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->url:Ljava/lang/String;

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

    .line 2849
    :cond_0
    instance-of v1, p1, Ltwitter4j/MediaEntityJSONImpl$Variant;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2869
    :cond_1
    check-cast p1, Ltwitter4j/MediaEntityJSONImpl$Variant;

    .line 2889
    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->bitrate:I

    iget v3, p1, Ltwitter4j/MediaEntityJSONImpl$Variant;->bitrate:I

    if-eq v1, v3, :cond_2

    return v2

    .line 2899
    :cond_2
    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->contentType:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/MediaEntityJSONImpl$Variant;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 2909
    :cond_3
    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->url:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/MediaEntityJSONImpl$Variant;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public getBitrate()I
    .locals 1

    .line 2689
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->bitrate:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 2739
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->contentType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 2789
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 2979
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->bitrate:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2989
    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->contentType:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2999
    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3059
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x45121d17

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x54327052

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b73fd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl$Variant;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
