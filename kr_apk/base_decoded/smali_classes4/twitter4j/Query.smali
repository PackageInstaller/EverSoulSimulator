.class public final Ltwitter4j/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/Query$ResultType;,
        Ltwitter4j/Query$Unit;
    }
.end annotation


# static fields
.field public static final KILOMETERS:Ltwitter4j/Query$Unit;

.field public static final MILES:Ltwitter4j/Query$Unit;

.field public static final MIXED:Ltwitter4j/Query$ResultType;

.field public static final POPULAR:Ltwitter4j/Query$ResultType;

.field public static final RECENT:Ltwitter4j/Query$ResultType;

.field private static final WITH_TWITTER_USER_ID:Ltwitter4j/HttpParameter;

.field private static final serialVersionUID:J = 0x63dec3c8328258c3L


# instance fields
.field private count:I

.field private geocode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private maxId:J

.field private nextPageQuery:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private resultType:Ltwitter4j/Query$ResultType;

.field private since:Ljava/lang/String;

.field private sinceId:J

.field private until:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3359
    sget-object v0, Ltwitter4j/Query$Unit;->mi:Ltwitter4j/Query$Unit;

    sput-object v0, Ltwitter4j/Query;->MILES:Ltwitter4j/Query$Unit;

    .line 3369
    sget-object v0, Ltwitter4j/Query$Unit;->km:Ltwitter4j/Query$Unit;

    sput-object v0, Ltwitter4j/Query;->KILOMETERS:Ltwitter4j/Query$Unit;

    .line 4349
    sget-object v0, Ltwitter4j/Query$ResultType;->mixed:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->MIXED:Ltwitter4j/Query$ResultType;

    .line 4389
    sget-object v0, Ltwitter4j/Query$ResultType;->popular:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->POPULAR:Ltwitter4j/Query$ResultType;

    .line 4429
    sget-object v0, Ltwitter4j/Query$ResultType;->recent:Ltwitter4j/Query$ResultType;

    sput-object v0, Ltwitter4j/Query;->RECENT:Ltwitter4j/Query$ResultType;

    .line 4809
    new-instance v0, Ltwitter4j/HttpParameter;

    const v1, 0x33690fc3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x22546766

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Query;->WITH_TWITTER_USER_ID:Ltwitter4j/HttpParameter;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 379
    iput-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 389
    iput-wide v1, p0, Ltwitter4j/Query;->maxId:J

    const/4 v3, -0x1

    .line 399
    iput v3, p0, Ltwitter4j/Query;->count:I

    .line 409
    iput-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 419
    iput-wide v1, p0, Ltwitter4j/Query;->sinceId:J

    .line 429
    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 439
    iput-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 449
    iput-object v0, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    .line 459
    iput-object v0, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 379
    iput-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 389
    iput-wide v1, p0, Ltwitter4j/Query;->maxId:J

    const/4 v3, -0x1

    .line 399
    iput v3, p0, Ltwitter4j/Query;->count:I

    .line 409
    iput-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 419
    iput-wide v1, p0, Ltwitter4j/Query;->sinceId:J

    .line 429
    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 439
    iput-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 449
    iput-object v0, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    .line 459
    iput-object v0, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    .line 519
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

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

    .line 5099
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

    .line 5039
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static createWithNextPageQuery(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 13

    .line 559
    new-instance v0, Ltwitter4j/Query;

    invoke-direct {v0}, Ltwitter4j/Query;-><init>()V

    .line 569
    iput-object p0, v0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-eqz p0, :cond_a

    .line 599
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 619
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 629
    invoke-static {p0}, Ltwitter4j/HttpParameter;->decodeParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltwitter4j/HttpParameter;

    .line 659
    invoke-virtual {v3}, Ltwitter4j/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ltwitter4j/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "q"

    .line 689
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ltwitter4j/Query;->setQuery(Ljava/lang/String;)V

    :cond_1
    const-string p0, "lang"

    .line 709
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 719
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ltwitter4j/Query;->setLang(Ljava/lang/String;)V

    :cond_2
    const-string p0, "locale"

    .line 729
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 739
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ltwitter4j/Query;->setLocale(Ljava/lang/String;)V

    :cond_3
    const-string p0, "max_id"

    .line 749
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 759
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ltwitter4j/Query;->setMaxId(J)V

    :cond_4
    const-string p0, "count"

    .line 769
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 779
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ltwitter4j/Query;->setCount(I)V

    :cond_5
    const-string p0, "geocode"

    .line 789
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 799
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const v3, 0x22505926

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 809
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 819
    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v2, 0x2

    .line 859
    aget-object p0, p0, v2

    .line 869
    invoke-static {}, Ltwitter4j/Query$Unit;->values()[Ltwitter4j/Query$Unit;

    move-result-object v8

    array-length v9, v8

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_7

    aget-object v11, v8, v10

    .line 879
    invoke-virtual {v11}, Ltwitter4j/Query$Unit;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 889
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_8

    .line 959
    new-instance p0, Ltwitter4j/GeoLocation;

    invoke-direct {p0, v4, v5, v6, v7}, Ltwitter4j/GeoLocation;-><init>(DD)V

    invoke-virtual {v0, p0, v2, v3, v11}, Ltwitter4j/Query;->setGeoCode(Ltwitter4j/GeoLocation;DLtwitter4j/Query$Unit;)V

    goto :goto_3

    .line 939
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5432a952

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_3
    const-string p0, "result_type"

    .line 979
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 989
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ltwitter4j/Query$ResultType;->valueOf(Ljava/lang/String;)Ltwitter4j/Query$ResultType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltwitter4j/Query;->setResultType(Ltwitter4j/Query$ResultType;)V

    :cond_a
    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method asHttpParameterArray()[Ltwitter4j/HttpParameter;
    .locals 4

    .line 4839
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const v1, 0x225ead6e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 4849
    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const v1, 0x5439a272

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 4859
    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const v1, 0x5432a642

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 4869
    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const v1, -0x4512304f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 4879
    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 4889
    iget v1, p0, Ltwitter4j/Query;->count:I

    int-to-long v1, v1

    const v3, -0x2244f47c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    const v1, -0x4512ca37

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 4899
    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const v1, -0x4512303f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 4909
    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    const v1, 0x5432a7da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 4919
    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const v1, 0x5d1b8cc7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 4929
    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 4939
    iget-object v1, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    if-eqz v1, :cond_0

    .line 4949
    new-instance v1, Ltwitter4j/HttpParameter;

    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    invoke-virtual {v2}, Ltwitter4j/Query$ResultType;->name()Ljava/lang/String;

    move-result-object v2

    const v3, 0x5432a75a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4969
    :cond_0
    sget-object v1, Ltwitter4j/Query;->WITH_TWITTER_USER_ID:Ltwitter4j/HttpParameter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4979
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    .line 4989
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public count(I)Ltwitter4j/Query;
    .locals 0

    .line 2609
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setCount(I)V

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

    .line 5209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_8

    .line 5229
    :cond_1
    check-cast p1, Ltwitter4j/Query;

    .line 5249
    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v4, p1, Ltwitter4j/Query;->maxId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 5259
    :cond_2
    iget v2, p0, Ltwitter4j/Query;->count:I

    iget v3, p1, Ltwitter4j/Query;->count:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5269
    :cond_3
    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v4, p1, Ltwitter4j/Query;->sinceId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 5279
    :cond_4
    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    .line 5289
    :cond_6
    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    .line 5299
    :cond_8
    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v3, p1, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_9
    iget-object v2, p1, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_2
    return v1

    .line 5309
    :cond_a
    iget-object v2, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_3

    :cond_b
    iget-object v2, p1, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_3
    return v1

    .line 5329
    :cond_c
    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v3, p1, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_4

    :cond_d
    iget-object v2, p1, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v2, :cond_e

    :goto_4
    return v1

    .line 5339
    :cond_e
    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    if-eqz v2, :cond_f

    iget-object v3, p1, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    invoke-virtual {v2, v3}, Ltwitter4j/Query$ResultType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_5

    :cond_f
    iget-object v2, p1, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    if-eqz v2, :cond_10

    :goto_5
    return v1

    .line 5349
    :cond_10
    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v3, p1, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_6

    :cond_11
    iget-object v2, p1, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v2, :cond_12

    :goto_6
    return v1

    .line 5359
    :cond_12
    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_7

    :cond_13
    if-eqz p1, :cond_14

    :goto_7
    return v1

    :cond_14
    return v0

    :cond_15
    :goto_8
    return v1

    .array-data 1
    .end array-data
.end method

.method public geoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)Ltwitter4j/Query;
    .locals 0

    .line 3959
    invoke-virtual {p0, p1, p2, p3, p4}, Ltwitter4j/Query;->setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public geoCode(Ltwitter4j/GeoLocation;DLtwitter4j/Query$Unit;)Ltwitter4j/Query;
    .locals 0

    .line 3799
    invoke-virtual {p0, p1, p2, p3, p4}, Ltwitter4j/Query;->setGeoCode(Ltwitter4j/GeoLocation;DLtwitter4j/Query$Unit;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public getCount()I
    .locals 1

    .line 2409
    iget v0, p0, Ltwitter4j/Query;->count:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGeocode()Ljava/lang/String;
    .locals 1

    .line 3329
    iget-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 1469
    iget-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1779
    iget-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMaxId()J
    .locals 2

    .line 2099
    iget-wide v0, p0, Ltwitter4j/Query;->maxId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1129
    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResultType()Ltwitter4j/Query$ResultType;
    .locals 1

    .line 4559
    iget-object v0, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSince()Ljava/lang/String;
    .locals 1

    .line 2719
    iget-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSinceId()J
    .locals 2

    .line 3029
    iget-wide v0, p0, Ltwitter4j/Query;->sinceId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUntil()Ljava/lang/String;
    .locals 1

    .line 4069
    iget-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 7

    .line 5429
    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 5439
    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5449
    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5459
    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5469
    iget v2, p0, Ltwitter4j/Query;->count:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5479
    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5489
    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5499
    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5509
    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5519
    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ltwitter4j/Query$ResultType;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5529
    iget-object v2, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public lang(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0

    .line 1669
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setLang(Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public locale(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0

    .line 1989
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setLocale(Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public maxId(J)Ltwitter4j/Query;
    .locals 0

    .line 2309
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Query;->setMaxId(J)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method nextPage()Ljava/lang/String;
    .locals 1

    .line 5149
    iget-object v0, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public query(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0

    .line 1369
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setQuery(Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public resultType(Ltwitter4j/Query$ResultType;)Ltwitter4j/Query;
    .locals 0

    .line 4769
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setResultType(Ltwitter4j/Query$ResultType;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setCount(I)V
    .locals 0

    .line 2499
    iput p1, p0, Ltwitter4j/Query;->count:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V
    .locals 4

    .line 3659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x22505926

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setGeoCode(Ltwitter4j/GeoLocation;DLtwitter4j/Query$Unit;)V
    .locals 4

    .line 3529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x22505926

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p4}, Ltwitter4j/Query$Unit;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .line 1559
    iput-object p1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 1879
    iput-object p1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setMaxId(J)V
    .locals 0

    .line 2199
    iput-wide p1, p0, Ltwitter4j/Query;->maxId:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 1239
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setResultType(Ltwitter4j/Query$ResultType;)V
    .locals 0

    .line 4659
    iput-object p1, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setSince(Ljava/lang/String;)V
    .locals 0

    .line 2819
    iput-object p1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setSinceId(J)V
    .locals 0

    .line 3119
    iput-wide p1, p0, Ltwitter4j/Query;->sinceId:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setUntil(Ljava/lang/String;)V
    .locals 0

    .line 4169
    iput-object p1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public since(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0

    .line 2929
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setSince(Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public sinceId(J)Ltwitter4j/Query;
    .locals 0

    .line 3229
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Query;->setSinceId(J)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 5589
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7d7ba68d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1b8fff

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x336903d3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512c84f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->maxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1b7c97

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x33690313

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512cf3f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x33690453

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225ea93e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x3369059b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->resultType:Ltwitter4j/Query$ResultType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432a342

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

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

.method public until(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0

    .line 4279
    invoke-virtual {p0, p1}, Ltwitter4j/Query;->setUntil(Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method
