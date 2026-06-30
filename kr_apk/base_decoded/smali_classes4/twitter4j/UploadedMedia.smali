.class public final Ltwitter4j/UploadedMedia;
.super Ljava/lang/Object;
.source "UploadedMedia.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4ad81d1659e17caeL


# instance fields
.field private imageHeight:I

.field private imageType:Ljava/lang/String;

.field private imageWidth:I

.field private mediaId:J

.field private processingCheckAfterSecs:I

.field private processingState:Ljava/lang/String;

.field private progressPercent:I

.field private size:J


# direct methods
.method constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-direct {p0, p1}, Ltwitter4j/UploadedMedia;->init(Ltwitter4j/JSONObject;)V

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

    const v0, 0x7d7a9185

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x22444c6c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543367c2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/UploadedMedia;->mediaId:J

    const v2, 0x54319f32

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-static {v2, p1}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/UploadedMedia;->size:J

    .line 779
    :try_start_0
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    invoke-virtual {p1, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    const-string v2, "w"

    .line 799
    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UploadedMedia;->imageWidth:I

    const-string v2, "h"

    .line 809
    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/UploadedMedia;->imageHeight:I

    const-string v2, "image_type"

    .line 819
    invoke-static {v2, v1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/UploadedMedia;->imageType:Ljava/lang/String;

    .line 849
    :cond_0
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 859
    invoke-virtual {p1, v0}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object p1

    const-string v0, "state"

    .line 869
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/UploadedMedia;->processingState:Ljava/lang/String;

    const-string v0, "check_after_secs"

    .line 879
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/UploadedMedia;->processingCheckAfterSecs:I

    const-string v0, "progress_percent"

    .line 889
    invoke-static {v0, p1}, Ltwitter4j/ParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/JSONObject;)I

    move-result p1

    iput p1, p0, Ltwitter4j/UploadedMedia;->progressPercent:I
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 939
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

    .line 1009
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1029
    :cond_1
    check-cast p1, Ltwitter4j/UploadedMedia;

    .line 1049
    iget v2, p0, Ltwitter4j/UploadedMedia;->imageWidth:I

    iget v3, p1, Ltwitter4j/UploadedMedia;->imageWidth:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1059
    :cond_2
    iget v2, p0, Ltwitter4j/UploadedMedia;->imageHeight:I

    iget v3, p1, Ltwitter4j/UploadedMedia;->imageHeight:I

    if-eq v2, v3, :cond_3

    return v1

    .line 1069
    :cond_3
    iget-object v2, p0, Ltwitter4j/UploadedMedia;->imageType:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/UploadedMedia;->imageType:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    return v1

    .line 1079
    :cond_4
    iget-wide v2, p0, Ltwitter4j/UploadedMedia;->mediaId:J

    iget-wide v4, p1, Ltwitter4j/UploadedMedia;->mediaId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v1

    .line 1089
    :cond_5
    iget-wide v2, p0, Ltwitter4j/UploadedMedia;->size:J

    iget-wide v4, p1, Ltwitter4j/UploadedMedia;->size:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getImageHeight()I
    .locals 1

    .line 469
    iget v0, p0, Ltwitter4j/UploadedMedia;->imageHeight:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getImageType()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Ltwitter4j/UploadedMedia;->imageType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getImageWidth()I
    .locals 1

    .line 429
    iget v0, p0, Ltwitter4j/UploadedMedia;->imageWidth:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMediaId()J
    .locals 2

    .line 549
    iget-wide v0, p0, Ltwitter4j/UploadedMedia;->mediaId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProcessingCheckAfterSecs()I
    .locals 1

    .line 669
    iget v0, p0, Ltwitter4j/UploadedMedia;->processingCheckAfterSecs:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProcessingState()Ljava/lang/String;
    .locals 1

    .line 629
    iget-object v0, p0, Ltwitter4j/UploadedMedia;->processingState:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProgressPercent()I
    .locals 1

    .line 709
    iget v0, p0, Ltwitter4j/UploadedMedia;->progressPercent:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSize()J
    .locals 2

    .line 589
    iget-wide v0, p0, Ltwitter4j/UploadedMedia;->size:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 5

    .line 1159
    iget-wide v0, p0, Ltwitter4j/UploadedMedia;->mediaId:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1169
    iget v1, p0, Ltwitter4j/UploadedMedia;->imageWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1179
    iget v1, p0, Ltwitter4j/UploadedMedia;->imageHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1189
    iget-object v1, p0, Ltwitter4j/UploadedMedia;->imageType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1199
    iget-wide v3, p0, Ltwitter4j/UploadedMedia;->size:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x54339352

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ltwitter4j/UploadedMedia;->mediaId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x22485be4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UploadedMedia;->imageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3368362b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/UploadedMedia;->imageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7a93c5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/UploadedMedia;->imageType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4511f1d7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/UploadedMedia;->size:J

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
