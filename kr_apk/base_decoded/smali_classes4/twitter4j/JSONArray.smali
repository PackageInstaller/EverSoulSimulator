.class public Ltwitter4j/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1239
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ltwitter4j/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1189
    :cond_1
    new-instance v0, Ltwitter4j/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d071aa8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

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

    .line 1079
    new-instance v0, Ltwitter4j/JSONTokener;

    invoke-direct {v0, p1}, Ltwitter4j/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/JSONArray;-><init>(Ltwitter4j/JSONTokener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 699
    invoke-direct {p0}, Ltwitter4j/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 719
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 729
    invoke-static {v0}, Ltwitter4j/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    goto :goto_0

    :cond_0
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

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    invoke-virtual {p1}, Ltwitter4j/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    .line 929
    instance-of v0, p1, Ltwitter4j/JSONArray;

    if-eqz v0, :cond_0

    .line 939
    check-cast p1, Ltwitter4j/JSONArray;

    iget-object p1, p1, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    iput-object p1, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    return-void

    :cond_0
    const v0, 0x3369a4eb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-static {p1, v0}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method checkedPut(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2019
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 2029
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ltwitter4j/JSON;->checkDouble(D)D

    .line 2059
    :cond_0
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    return-void

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 7209
    instance-of v0, p1, Ltwitter4j/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Ltwitter4j/JSONArray;

    iget-object p1, p1, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    const v0, -0x2249cce4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3139
    :try_start_0
    iget-object v1, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3159
    :cond_0
    new-instance v1, Ltwitter4j/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    :catch_0
    new-instance v0, Ltwitter4j/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d1b29c7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x6d071d08

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x6d0823a8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBoolean(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 3619
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3629
    invoke-static {v0}, Ltwitter4j/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3669
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3649
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x336bba83

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 4049
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4059
    invoke-static {v0}, Ltwitter4j/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4099
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 4079
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x54301d1a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getInt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 4479
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4489
    invoke-static {v0}, Ltwitter4j/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4529
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 4509
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x6d0502e8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getJSONArray(I)Ltwitter4j/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 5759
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 5769
    instance-of v1, v0, Ltwitter4j/JSONArray;

    if-eqz v1, :cond_0

    .line 5779
    check-cast v0, Ltwitter4j/JSONArray;

    return-object v0

    .line 5799
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x3369a4eb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getJSONObject(I)Ltwitter4j/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 6059
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 6069
    instance-of v1, v0, Ltwitter4j/JSONObject;

    if-eqz v1, :cond_0

    .line 6079
    check-cast v0, Ltwitter4j/JSONObject;

    return-object v0

    .line 6099
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, -0x2249c814

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 4909
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4919
    invoke-static {v0}, Ltwitter4j/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4959
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4939
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x5d19360f    # 6.9000175E17f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 5329
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 5339
    invoke-static {v0}, Ltwitter4j/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 5359
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v1, -0x2249c8b4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ltwitter4j/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 7269
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isNull(I)Z
    .locals 1

    .line 2989
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2999
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

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 6619
    new-instance v0, Ltwitter4j/JSONStringer;

    invoke-direct {v0}, Ltwitter4j/JSONStringer;-><init>()V

    .line 6629
    sget-object v1, Ltwitter4j/JSONStringer$Scope;->NULL:Ltwitter4j/JSONStringer$Scope;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ltwitter4j/JSONStringer;->open(Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;

    .line 6639
    iget-object v1, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-lez v3, :cond_0

    .line 6659
    iget-object v4, v0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6679
    :cond_0
    iget-object v4, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ltwitter4j/JSONStringer;->value(Ljava/lang/Object;)Ltwitter4j/JSONStringer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6699
    :cond_1
    sget-object p1, Ltwitter4j/JSONStringer$Scope;->NULL:Ltwitter4j/JSONStringer$Scope;

    sget-object v1, Ltwitter4j/JSONStringer$Scope;->NULL:Ltwitter4j/JSONStringer$Scope;

    invoke-virtual {v0, p1, v1, v2}, Ltwitter4j/JSONStringer;->close(Ltwitter4j/JSONStringer$Scope;Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;

    .line 6709
    iget-object p1, v0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public length()I
    .locals 1

    .line 1319
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    .line 3319
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3349
    :cond_0
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public optBoolean(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3779
    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONArray;->optBoolean(IZ)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public optBoolean(IZ)Z
    .locals 0

    .line 3899
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 3909
    invoke-static {p1}, Ltwitter4j/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3919
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    return p2

    nop

    .array-data 1
    .end array-data
.end method

.method public optDouble(I)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 4209
    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public optDouble(ID)D
    .locals 0

    .line 4329
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 4339
    invoke-static {p1}, Ltwitter4j/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4349
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    :cond_0
    return-wide p2

    nop

    .array-data 1
    .end array-data
.end method

.method public optInt(I)I
    .locals 1

    const/4 v0, 0x0

    .line 4639
    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONArray;->optInt(II)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public optInt(II)I
    .locals 0

    .line 4759
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 4769
    invoke-static {p1}, Ltwitter4j/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4779
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2

    nop

    .array-data 1
    .end array-data
.end method

.method public optJSONArray(I)Ltwitter4j/JSONArray;
    .locals 1

    .line 5919
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 5929
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

.method public optJSONObject(I)Ltwitter4j/JSONObject;
    .locals 1

    .line 6219
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 6229
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

.method public optLong(I)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 5069
    invoke-virtual {p0, p1, v0, v1}, Ltwitter4j/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public optLong(IJ)J
    .locals 0

    .line 5189
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 5199
    invoke-static {p1}, Ltwitter4j/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2

    nop

    .array-data 1
    .end array-data
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 5489
    invoke-virtual {p0, p1, v0}, Ltwitter4j/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5609
    invoke-virtual {p0, p1}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    .line 5619
    invoke-static {p1}, Ltwitter4j/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2

    .array-data 1
    .end array-data
.end method

.method public put(D)Ltwitter4j/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1549
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-static {p1, p2}, Ltwitter4j/JSON;->checkDouble(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public put(I)Ltwitter4j/JSONArray;
    .locals 1

    .line 1659
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public put(ID)Ltwitter4j/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2349
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/JSONArray;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public put(II)Ltwitter4j/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2489
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/JSONArray;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public put(IJ)Ltwitter4j/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2629
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/JSONArray;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public put(ILjava/lang/Object;)Ltwitter4j/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2799
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 2819
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ltwitter4j/JSON;->checkDouble(D)D

    .line 2839
    :cond_0
    :goto_0
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 2849
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2869
    :cond_1
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public put(IZ)Ltwitter4j/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2199
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltwitter4j/JSONArray;->put(ILjava/lang/Object;)Ltwitter4j/JSONArray;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public put(J)Ltwitter4j/JSONArray;
    .locals 1

    .line 1769
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/Object;)Ltwitter4j/JSONArray;
    .locals 1

    .line 1919
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public put(Z)Ltwitter4j/JSONArray;
    .locals 1

    .line 1419
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    .line 3459
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3489
    :cond_0
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public toJSONObject(Ltwitter4j/JSONArray;)Ltwitter4j/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 6379
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0}, Ltwitter4j/JSONObject;-><init>()V

    .line 6389
    invoke-virtual {p1}, Ltwitter4j/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6439
    invoke-virtual {p1, v2}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6449
    invoke-virtual {p0, v2}, Ltwitter4j/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 6829
    :try_start_0
    new-instance v0, Ltwitter4j/JSONStringer;

    invoke-direct {v0}, Ltwitter4j/JSONStringer;-><init>()V

    .line 6839
    invoke-virtual {p0, v0}, Ltwitter4j/JSONArray;->writeTo(Ltwitter4j/JSONStringer;)V

    .line 6849
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

    .line 7059
    new-instance v0, Ltwitter4j/JSONStringer;

    invoke-direct {v0, p1}, Ltwitter4j/JSONStringer;-><init>(I)V

    .line 7069
    invoke-virtual {p0, v0}, Ltwitter4j/JSONArray;->writeTo(Ltwitter4j/JSONStringer;)V

    .line 7079
    invoke-virtual {v0}, Ltwitter4j/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method writeTo(Ltwitter4j/JSONStringer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 7119
    invoke-virtual {p1}, Ltwitter4j/JSONStringer;->array()Ltwitter4j/JSONStringer;

    .line 7129
    iget-object v0, p0, Ltwitter4j/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7139
    invoke-virtual {p1, v1}, Ltwitter4j/JSONStringer;->value(Ljava/lang/Object;)Ltwitter4j/JSONStringer;

    goto :goto_0

    .line 7159
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/JSONStringer;->endArray()Ltwitter4j/JSONStringer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
