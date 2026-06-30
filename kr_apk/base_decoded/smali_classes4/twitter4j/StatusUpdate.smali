.class public final Ltwitter4j/StatusUpdate;
.super Ljava/lang/Object;
.source "StatusUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x670093d787091b13L


# instance fields
.field private attachmentUrl:Ljava/lang/String;

.field private autoPopulateReplyMetadata:Z

.field private displayCoordinates:Z

.field private inReplyToStatusId:J

.field private location:Ltwitter4j/GeoLocation;

.field private transient mediaBody:Ljava/io/InputStream;

.field private mediaFile:Ljava/io/File;

.field private mediaIds:[J

.field private mediaName:Ljava/lang/String;

.field private placeId:Ljava/lang/String;

.field private possiblySensitive:Z

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 339
    iput-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 359
    iput-object v0, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 369
    iput-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 439
    iput-object v0, p0, Ltwitter4j/StatusUpdate;->attachmentUrl:Ljava/lang/String;

    .line 469
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private appendParameter(Ljava/lang/String;DLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .line 2769
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .line 2809
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2719
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/HttpParameter;
    .locals 6

    .line 2389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x6d03b2f0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 2399
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2409
    iget-wide v1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const-wide/16 v3, -0x1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    const v3, 0x6d079d58

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    .line 2419
    invoke-direct {p0, v3, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 2439
    :cond_0
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v1, :cond_1

    const v2, 0x6d04f4b0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 2449
    invoke-virtual {v1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 2459
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v1

    const v3, 0x5d19360f    # 6.9000175E17f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    :cond_1
    const v1, 0x5432931a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 2489
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2499
    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-nez v1, :cond_2

    const v1, 0x5d1bb88f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x2247ce84

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    .line 2509
    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2529
    :cond_2
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    const v2, 0x6d078188

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5d1bbbd7

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 2539
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-object v4, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-direct {v1, v3, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2559
    :cond_3
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 2569
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-object v4, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    iget-object v5, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-direct {v1, v3, v4, v5}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2589
    :cond_4
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    if-eqz v1, :cond_5

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    .line 2599
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    invoke-static {v2}, Ltwitter4j/StringUtil;->join([J)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6d078f10

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    :cond_5
    :goto_0
    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->autoPopulateReplyMetadata:Z

    if-eqz v1, :cond_6

    const v1, 0x543291b2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x22546766

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 2629
    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_6
    const v1, 0x336948c3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 2649
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->attachmentUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2659
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    .line 2669
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public attachmentUrl(Ljava/lang/String;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 1639
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setAttachmentUrl(Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public autoPopulateReplyMetadata(Z)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 2339
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setAutoPopulateReplyMetadata(Z)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public displayCoordinates(Z)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 1019
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setDisplayCoordinates(Z)V

    return-object p0

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

    if-eqz p1, :cond_15

    .line 2869
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_7

    .line 2889
    :cond_1
    check-cast p1, Ltwitter4j/StatusUpdate;

    .line 2909
    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v4, p1, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 2919
    :cond_2
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    iget-boolean v3, p1, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 2929
    :cond_3
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    iget-boolean v3, p1, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 2939
    :cond_4
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->autoPopulateReplyMetadata:Z

    iget-boolean v3, p1, Ltwitter4j/StatusUpdate;->autoPopulateReplyMetadata:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 2949
    :cond_5
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_6
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_0
    return v1

    .line 2959
    :cond_7
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_8

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2, v3}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_8
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_9

    :goto_1
    return v1

    .line 2969
    :cond_9
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_a
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_2
    return v1

    .line 2979
    :cond_b
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_3

    :cond_c
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_3
    return v1

    .line 2989
    :cond_d
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v2, :cond_e

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    :cond_e
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v2, :cond_f

    :goto_4
    return v1

    .line 2999
    :cond_f
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v2, :cond_10

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_10
    iget-object v2, p1, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v2, :cond_11

    :goto_5
    return v1

    .line 3009
    :cond_11
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    iget-object v3, p1, Ltwitter4j/StatusUpdate;->mediaIds:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 3019
    :cond_12
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->attachmentUrl:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/StatusUpdate;->attachmentUrl:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :cond_13
    if-nez p1, :cond_14

    goto :goto_6

    :cond_14
    move v0, v1

    :goto_6
    return v0

    :cond_15
    :goto_7
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAttachmentUrl()Ljava/lang/String;
    .locals 1

    .line 1469
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->attachmentUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .line 549
    iget-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .line 679
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .line 809
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 6

    .line 3069
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3079
    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3089
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3099
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3109
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3119
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3129
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3139
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3149
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3159
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3169
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->autoPopulateReplyMetadata:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3179
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->attachmentUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public inReplyToStatusId(J)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 629
    invoke-virtual {p0, p1, p2}, Ltwitter4j/StatusUpdate;->setInReplyToStatusId(J)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public isAutoPopulateReplyMetadata()Z
    .locals 1

    .line 2149
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->autoPopulateReplyMetadata:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isDisplayCoordinates()Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method isForUpdateWithMedia()Z
    .locals 1

    .line 1689
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isPossiblySensitive()Z
    .locals 1

    .line 2059
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public location(Ltwitter4j/GeoLocation;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 759
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setLocation(Ltwitter4j/GeoLocation;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public media(Ljava/io/File;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 1199
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public media(Ljava/lang/String;Ljava/io/InputStream;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 1789
    invoke-virtual {p0, p1, p2}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public placeId(Ljava/lang/String;)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 889
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setPlaceId(Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public possiblySensitive(Z)Ltwitter4j/StatusUpdate;
    .locals 0

    .line 1969
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setPossiblySensitive(Z)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setAttachmentUrl(Ljava/lang/String;)V
    .locals 0

    .line 1549
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->attachmentUrl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setAutoPopulateReplyMetadata(Z)V
    .locals 0

    .line 2239
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->autoPopulateReplyMetadata:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setDisplayCoordinates(Z)V
    .locals 0

    .line 979
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setInReplyToStatusId(J)V
    .locals 0

    .line 589
    iput-wide p1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setLocation(Ltwitter4j/GeoLocation;)V
    .locals 0

    .line 719
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setMedia(Ljava/io/File;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setMedia(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    .line 1309
    iput-object p2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public varargs setMediaIds([J)V
    .locals 0

    .line 1389
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0

    .line 849
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setPossiblySensitive(Z)V
    .locals 0

    .line 1879
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3239
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x224925f4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3369499b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x33694ad3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512814f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d07f308

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224926f4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x33694c93

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432ea2a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432eba2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x33694d73

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaIds:[J

    .line 3339
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432e89a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->autoPopulateReplyMetadata:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432e86a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->attachmentUrl:Ljava/lang/String;

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

    nop

    .array-data 1
    .end array-data
.end method
