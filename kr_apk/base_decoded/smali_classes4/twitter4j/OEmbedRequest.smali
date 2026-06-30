.class public final Ltwitter4j/OEmbedRequest;
.super Ljava/lang/Object;
.source "OEmbedRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/OEmbedRequest$WidgetType;,
        Ltwitter4j/OEmbedRequest$Align;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x677263dd4692eabdL


# instance fields
.field private align:Ltwitter4j/OEmbedRequest$Align;

.field private hideMedia:Z

.field private hideThread:Z

.field private hideTweet:Z

.field private lang:Ljava/lang/String;

.field private maxWidth:I

.field private omitScript:Z

.field private related:[Ljava/lang/String;

.field private final statusId:J

.field private final url:Ljava/lang/String;

.field private widgetType:Ltwitter4j/OEmbedRequest$WidgetType;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    .line 339
    iput-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    .line 359
    sget-object v1, Ltwitter4j/OEmbedRequest$Align;->NONE:Ltwitter4j/OEmbedRequest$Align;

    iput-object v1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    new-array v1, v0, [Ljava/lang/String;

    .line 369
    iput-object v1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    .line 389
    sget-object v1, Ltwitter4j/OEmbedRequest$WidgetType;->NONE:Ltwitter4j/OEmbedRequest$WidgetType;

    iput-object v1, p0, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    .line 399
    iput-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideTweet:Z

    .line 429
    iput-wide p1, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    .line 439
    iput-object p3, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
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

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    .line 1709
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
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

    .line 1649
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
.method public HideMedia(Z)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 609
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public HideThread(Z)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 699
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public MaxWidth(I)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 519
    iput p1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public align(Ltwitter4j/OEmbedRequest$Align;)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 879
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method asHttpParameterArray()[Ltwitter4j/HttpParameter;
    .locals 4

    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const v1, 0x543effa2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 1429
    iget-wide v2, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    const v1, 0x543c2392

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 1439
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1449
    iget v1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    int-to-long v1, v1

    const v3, 0x5d1b6e9f    # 7.00004E17f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 1459
    new-instance v1, Ltwitter4j/HttpParameter;

    const v2, 0x5432428a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    new-instance v1, Ltwitter4j/HttpParameter;

    const v2, 0x6d075da0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    new-instance v1, Ltwitter4j/HttpParameter;

    const v2, 0x6d075d38

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v2}, Ltwitter4j/OEmbedRequest$Align;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d7b41f5

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_0

    const v2, 0x7d7b413d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 1509
    invoke-static {v1}, Ltwitter4j/StringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    const v1, 0x5439a272

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 1529
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1539
    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    sget-object v2, Ltwitter4j/OEmbedRequest$WidgetType;->NONE:Ltwitter4j/OEmbedRequest$WidgetType;

    if-eq v1, v2, :cond_1

    .line 1549
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    invoke-virtual {v2}, Ltwitter4j/OEmbedRequest$WidgetType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d7b4175

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    new-instance v1, Ltwitter4j/HttpParameter;

    const v2, 0x225e4be6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->hideTweet:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    .line 1599
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    return-object v0

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

    .line 1779
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 1799
    :cond_1
    check-cast p1, Ltwitter4j/OEmbedRequest;

    .line 1819
    iget-boolean v2, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    iget-boolean v3, p1, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 1829
    :cond_2
    iget-boolean v2, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    iget-boolean v3, p1, Ltwitter4j/OEmbedRequest;->hideThread:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 1839
    :cond_3
    iget v2, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    iget v3, p1, Ltwitter4j/OEmbedRequest;->maxWidth:I

    if-eq v2, v3, :cond_4

    return v1

    .line 1849
    :cond_4
    iget-boolean v2, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    iget-boolean v3, p1, Ltwitter4j/OEmbedRequest;->omitScript:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 1859
    :cond_5
    iget-wide v2, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    iget-wide v4, p1, Ltwitter4j/OEmbedRequest;->statusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v1

    .line 1869
    :cond_6
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    if-eq v2, v3, :cond_7

    return v1

    .line 1879
    :cond_7
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 1889
    :cond_9
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1899
    :cond_a
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_b
    iget-object v2, p1, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_1
    return v1

    .line 1909
    :cond_c
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    if-eq v2, v3, :cond_d

    return v1

    .line 1919
    :cond_d
    iget-boolean v2, p0, Ltwitter4j/OEmbedRequest;->hideTweet:Z

    iget-boolean p1, p1, Ltwitter4j/OEmbedRequest;->hideTweet:Z

    if-eq v2, p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_2
    return v1

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 4

    .line 1989
    iget-wide v0, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1999
    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

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

    .line 2009
    iget v1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2019
    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2029
    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2039
    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2049
    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ltwitter4j/OEmbedRequest$Align;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2059
    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2069
    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2079
    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ltwitter4j/OEmbedRequest$WidgetType;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2089
    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideTweet:Z

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public hideTweet(Z)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 1239
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideTweet:Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public lang(Ljava/lang/String;)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 1059
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public omitScript(Z)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 789
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public related([Ljava/lang/String;)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 969
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAlign(Ltwitter4j/OEmbedRequest$Align;)V
    .locals 0

    .line 839
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setHideMedia(Z)V
    .locals 0

    .line 569
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setHideThread(Z)V
    .locals 0

    .line 659
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setHideTweet(Z)V
    .locals 0

    .line 1199
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideTweet:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 479
    iput p1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setOmitScript(Z)V
    .locals 0

    .line 749
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setRelated([Ljava/lang/String;)V
    .locals 0

    .line 929
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setWidgetType(Ltwitter4j/OEmbedRequest$WidgetType;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x22498bf4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432333a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225e4a8e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d075e10

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1b756f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x45123397

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249944c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b5dc5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2229
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b5d65

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249974c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x224997cc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideTweet:Z

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

.method public widgetType(Ltwitter4j/OEmbedRequest$WidgetType;)Ltwitter4j/OEmbedRequest;
    .locals 0

    .line 1149
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->widgetType:Ltwitter4j/OEmbedRequest$WidgetType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
