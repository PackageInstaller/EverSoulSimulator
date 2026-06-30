.class public Ltwitter4j/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# static fields
.field private static final NEGATIVE_ZERO:Ljava/lang/Double;

.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private final nameValuePairs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 839
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Ltwitter4j/JSONObject;->NEGATIVE_ZERO:Ljava/lang/Double;

    .line 1009
    new-instance v0, Ltwitter4j/JSONObject$1;

    invoke-direct {v0}, Ltwitter4j/JSONObject$1;-><init>()V

    sput-object v0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1849
    new-instance v0, Ltwitter4j/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/JSONObject;-><init>(Ltwitter4j/JSONTokener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3

    .line 1389
    invoke-direct {p0}, Ltwitter4j/JSONObject;-><init>()V

    .line 1409
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1459
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1499
    iget-object v2, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1479
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const v0, 0x6d02e048

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/JSONObject;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1979
    invoke-direct {p0}, Ltwitter4j/JSONObject;-><init>()V

    .line 1989
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 1999
    invoke-virtual {p1, v2}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2019
    iget-object v4, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/JSONTokener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1679
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 1689
    instance-of v0, p1, Ltwitter4j/JSONObject;

    if-eqz v0, :cond_0

    .line 1699
    check-cast p1, Ltwitter4j/JSONObject;

    iget-object p1, p1, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    return-void

    :cond_0
    const v0, -0x2249c814

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 1719
    invoke-static {p1, v0}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    .array-data 1
    .end array-data
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 8579
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 8589
    invoke-static {v0, v1}, Ltwitter4j/JSON;->checkDouble(D)D

    .line 8619
    sget-object v2, Ltwitter4j/JSONObject;->NEGATIVE_ZERO:Ljava/lang/Double;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "-0"

    return-object p0

    .line 8659
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v4, v2

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1

    .line 8679
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8709
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8549
    :cond_2
    new-instance p0, Ltwitter4j/JSONException;

    const v0, 0x3369a7e3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    const-string p0, "\"\""

    return-object p0

    .line 8869
    :cond_0
    :try_start_0
    new-instance v1, Ltwitter4j/JSONStringer;

    invoke-direct {v1}, Ltwitter4j/JSONStringer;-><init>()V

    .line 8879
    sget-object v2, Ltwitter4j/JSONStringer$Scope;->NULL:Ltwitter4j/JSONStringer$Scope;

    invoke-virtual {v1, v2, v0}, Ltwitter4j/JSONStringer;->open(Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;

    .line 8889
    invoke-virtual {v1, p0}, Ltwitter4j/JSONStringer;->value(Ljava/lang/Object;)Ltwitter4j/JSONStringer;

    .line 8899
    sget-object p0, Ltwitter4j/JSONStringer$Scope;->NULL:Ltwitter4j/JSONStringer$Scope;

    sget-object v2, Ltwitter4j/JSONStringer$Scope;->NULL:Ltwitter4j/JSONStringer$Scope;

    invoke-virtual {v1, p0, v2, v0}, Ltwitter4j/JSONStringer;->close(Ltwitter4j/JSONStringer$Scope;Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;

    .line 8909
    invoke-virtual {v1}, Ltwitter4j/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 8929
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .array-data 1
    .end array-data
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    .line 9139
    sget-object p0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    .line 9159
    :cond_0
    instance-of v0, p0, Ltwitter4j/JSONArray;

    if-nez v0, :cond_9

    instance-of v0, p0, Ltwitter4j/JSONObject;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 9189
    :cond_1
    sget-object v0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 9229
    :cond_2
    :try_start_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 9239
    new-instance v0, Ltwitter4j/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ltwitter4j/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 9249
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9259
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0, p0}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 9279
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 9289
    new-instance v0, Ltwitter4j/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 9309
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_0

    .line 9419
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9429
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    return-object p0

    :catch_0
    :cond_8
    const/4 p0, 0x0

    :cond_9
    :goto_1
    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 3389
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3409
    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    move-result-object p1

    return-object p1

    .line 3439
    :cond_0
    instance-of v1, v0, Ltwitter4j/JSONArray;

    if-eqz v1, :cond_1

    .line 3449
    check-cast v0, Ltwitter4j/JSONArray;

    .line 3459
    invoke-virtual {v0, p2}, Ltwitter4j/JSONArray;->checkedPut(Ljava/lang/Object;)V

    goto :goto_0

    .line 3479
    :cond_1
    new-instance v1, Ltwitter4j/JSONArray;

    invoke-direct {v1}, Ltwitter4j/JSONArray;-><init>()V

    .line 3489
    invoke-virtual {v1, v0}, Ltwitter4j/JSONArray;->checkedPut(Ljava/lang/Object;)V

    .line 3499
    invoke-virtual {v1, p2}, Ltwitter4j/JSONArray;->checkedPut(Ljava/lang/Object;)V

    .line 3509
    iget-object p2, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 3689
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3719
    instance-of v1, v0, Ltwitter4j/JSONArray;

    if-eqz v1, :cond_0

    .line 3729
    check-cast v0, Ltwitter4j/JSONArray;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3749
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0}, Ltwitter4j/JSONArray;-><init>()V

    .line 3759
    iget-object v1, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3819
    :goto_0
    invoke-virtual {v0, p2}, Ltwitter4j/JSONArray;->checkedPut(Ljava/lang/Object;)V

    return-object p0

    .line 3789
    :cond_1
    new-instance p2, Ltwitter4j/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, -0x224bffcc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v0, 0x3369a72b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .array-data 1
    .end array-data
.end method

.method checkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 3889
    :cond_0
    new-instance p1, Ltwitter4j/JSONException;

    const v0, 0x6d070178

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 4359
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4379
    :cond_0
    new-instance v0, Ltwitter4j/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d0700b8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 4639
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4649
    invoke-static {v0}, Ltwitter4j/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4689
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const v1, 0x336bba83

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 4669
    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 5069
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5079
    invoke-static {v0}, Ltwitter4j/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5119
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const v1, 0x54301d1a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 5099
    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 5499
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5509
    invoke-static {v0}, Ltwitter4j/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5549
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const v1, 0x6d0502e8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 5529
    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 6849
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6859
    instance-of v1, v0, Ltwitter4j/JSONArray;

    if-eqz v1, :cond_0

    .line 6869
    check-cast v0, Ltwitter4j/JSONArray;

    return-object v0

    :cond_0
    const v1, 0x3369a4eb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 6889
    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 7149
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 7159
    instance-of v1, v0, Ltwitter4j/JSONObject;

    if-eqz v1, :cond_0

    .line 7169
    check-cast v0, Ltwitter4j/JSONObject;

    return-object v0

    :cond_0
    const v1, -0x2249c814

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 7189
    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 5969
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5979
    invoke-static {v0}, Ltwitter4j/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6019
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const v1, 0x5d19360f    # 6.9000175E17f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 5999
    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 6419
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6429
    invoke-static {v0}, Ltwitter4j/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const v1, -0x2249c8b4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 6449
    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .line 4249
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 1

    .line 4129
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4139
    sget-object v0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7839
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7699
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public length()I
    .locals 1

    .line 2129
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public names()Ltwitter4j/JSONArray;
    .locals 3

    .line 7939
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ltwitter4j/JSONArray;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    .line 7959
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Ltwitter4j/JSONArray;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 4509
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 4799
    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 4919
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 4929
    invoke-static {p1}, Ltwitter4j/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4939
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2

    nop

    .array-data 1
    .end array-data
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 5229
    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 0

    .line 5349
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 5359
    invoke-static {p1}, Ltwitter4j/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5369
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    :cond_0
    return-wide p2

    nop

    .array-data 1
    .end array-data
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 5659
    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 0

    .line 5779
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 5789
    invoke-static {p1}, Ltwitter4j/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5799
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2

    nop

    .array-data 1
    .end array-data
.end method

.method public optJSONArray(Ljava/lang/String;)Ltwitter4j/JSONArray;
    .locals 1

    .line 7009
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7019
    instance-of v0, p1, Ltwitter4j/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Ltwitter4j/JSONArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public optJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;
    .locals 1

    .line 7309
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7319
    instance-of v0, p1, Ltwitter4j/JSONObject;

    if-eqz v0, :cond_0

    check-cast p1, Ltwitter4j/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 6139
    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 0

    .line 6279
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 6289
    invoke-static {p1}, Ltwitter4j/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6299
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2

    nop

    .array-data 1
    .end array-data
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 6579
    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6699
    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 6709
    invoke-static {p1}, Ltwitter4j/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/String;D)Ltwitter4j/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2409
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ltwitter4j/JSON;->checkDouble(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/String;I)Ltwitter4j/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2549
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/String;J)Ltwitter4j/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2879
    iget-object p2, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 2909
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 2929
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ltwitter4j/JSON;->checkDouble(D)D

    .line 2949
    :cond_1
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/String;Z)Ltwitter4j/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2259
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ltwitter4j/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3119
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 4019
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public toJSONArray(Ltwitter4j/JSONArray;)Ltwitter4j/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 7449
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0}, Ltwitter4j/JSONArray;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 7489
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 7539
    invoke-virtual {p1, v1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7549
    invoke-virtual {p0, v3}, Ltwitter4j/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 8059
    :try_start_0
    new-instance v0, Ltwitter4j/JSONStringer;

    invoke-direct {v0}, Ltwitter4j/JSONStringer;-><init>()V

    .line 8069
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->writeTo(Ltwitter4j/JSONStringer;)V

    .line 8079
    invoke-virtual {v0}, Ltwitter4j/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 8319
    new-instance v0, Ltwitter4j/JSONStringer;

    invoke-direct {v0, p1}, Ltwitter4j/JSONStringer;-><init>(I)V

    .line 8329
    invoke-virtual {p0, v0}, Ltwitter4j/JSONObject;->writeTo(Ltwitter4j/JSONStringer;)V

    .line 8339
    invoke-virtual {v0}, Ltwitter4j/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method writeTo(Ltwitter4j/JSONStringer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 8379
    invoke-virtual {p1}, Ltwitter4j/JSONStringer;->object()Ltwitter4j/JSONStringer;

    .line 8389
    iget-object v0, p0, Ltwitter4j/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8399
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ltwitter4j/JSONStringer;->key(Ljava/lang/String;)Ltwitter4j/JSONStringer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ltwitter4j/JSONStringer;->value(Ljava/lang/Object;)Ltwitter4j/JSONStringer;

    goto :goto_0

    .line 8419
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/JSONStringer;->endObject()Ltwitter4j/JSONStringer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
