.class public Ltwitter4j/JSONStringer;
.super Ljava/lang/Object;
.source "JSONStringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/JSONStringer$Scope;
    }
.end annotation


# instance fields
.field private final indent:Ljava/lang/String;

.field final out:Ljava/lang/StringBuilder;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltwitter4j/JSONStringer$Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    const/4 v0, 0x0

    .line 1259
    iput-object v0, p0, Ltwitter4j/JSONStringer;->indent:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1

    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    .line 1169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    .line 1299
    new-array p1, p1, [C

    const/16 v0, 0x20

    .line 1309
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 1319
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Ltwitter4j/JSONStringer;->indent:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private beforeKey()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 3979
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->peek()Ltwitter4j/JSONStringer$Scope;

    move-result-object v0

    .line 3989
    sget-object v1, Ltwitter4j/JSONStringer$Scope;->NONEMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

    if-ne v0, v1, :cond_0

    .line 3999
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4009
    :cond_0
    sget-object v1, Ltwitter4j/JSONStringer$Scope;->EMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

    if-ne v0, v1, :cond_1

    .line 4039
    :goto_0
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->newline()V

    .line 4049
    sget-object v0, Ltwitter4j/JSONStringer$Scope;->DANGLING_KEY:Ltwitter4j/JSONStringer$Scope;

    invoke-direct {p0, v0}, Ltwitter4j/JSONStringer;->replaceTop(Ltwitter4j/JSONStringer$Scope;)V

    return-void

    .line 4019
    :cond_1
    new-instance v0, Ltwitter4j/JSONException;

    const v1, -0x451201e7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method private beforeValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 4139
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4179
    :cond_0
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->peek()Ltwitter4j/JSONStringer$Scope;

    move-result-object v0

    .line 4189
    sget-object v1, Ltwitter4j/JSONStringer$Scope;->EMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

    if-ne v0, v1, :cond_1

    .line 4199
    sget-object v0, Ltwitter4j/JSONStringer$Scope;->NONEMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

    invoke-direct {p0, v0}, Ltwitter4j/JSONStringer;->replaceTop(Ltwitter4j/JSONStringer$Scope;)V

    .line 4209
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->newline()V

    goto :goto_1

    .line 4219
    :cond_1
    sget-object v1, Ltwitter4j/JSONStringer$Scope;->NONEMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

    if-ne v0, v1, :cond_2

    .line 4229
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4239
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->newline()V

    goto :goto_1

    .line 4249
    :cond_2
    sget-object v1, Ltwitter4j/JSONStringer$Scope;->DANGLING_KEY:Ltwitter4j/JSONStringer$Scope;

    if-ne v0, v1, :cond_4

    .line 4259
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltwitter4j/JSONStringer;->indent:Ljava/lang/String;

    if-nez v1, :cond_3

    const v1, 0x543c0232

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x543c2ce2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4269
    sget-object v0, Ltwitter4j/JSONStringer$Scope;->NONEMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

    invoke-direct {p0, v0}, Ltwitter4j/JSONStringer;->replaceTop(Ltwitter4j/JSONStringer$Scope;)V

    goto :goto_1

    .line 4279
    :cond_4
    sget-object v1, Ltwitter4j/JSONStringer$Scope;->NULL:Ltwitter4j/JSONStringer$Scope;

    if-ne v0, v1, :cond_5

    :goto_1
    return-void

    .line 4289
    :cond_5
    new-instance v0, Ltwitter4j/JSONException;

    const v1, -0x451201e7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private newline()V
    .locals 3

    .line 3669
    iget-object v0, p0, Ltwitter4j/JSONStringer;->indent:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 3709
    :cond_0
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const v1, 0x33678963

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3719
    :goto_0
    iget-object v1, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3729
    iget-object v1, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltwitter4j/JSONStringer;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private peek()Ltwitter4j/JSONStringer$Scope;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2129
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2159
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/JSONStringer$Scope;

    return-object v0

    .line 2139
    :cond_0
    new-instance v0, Ltwitter4j/JSONException;

    const v1, -0x451201e7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method private replaceTop(Ltwitter4j/JSONStringer$Scope;)V
    .locals 2

    .line 2229
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private string(Ljava/lang/String;)V
    .locals 7

    .line 3159
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const v1, 0x2257cdc6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 3179
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_1

    packed-switch v4, :pswitch_data_0

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_0

    .line 3549
    iget-object v5, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const v4, 0x5d1b461f

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3569
    :cond_0
    iget-object v5, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3419
    :pswitch_0
    iget-object v4, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const v5, 0x5d1e704f

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3339
    :pswitch_1
    iget-object v4, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const v5, -0x224c905c

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3379
    :pswitch_2
    iget-object v4, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const v5, 0x225b508e

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3299
    :cond_1
    iget-object v5, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3459
    :cond_2
    iget-object v4, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const v5, 0x336cfd0b

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3499
    :cond_3
    iget-object v4, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    const v5, 0x7d7e5945

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3629
    :cond_4
    iget-object p1, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public array()Ltwitter4j/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1429
    sget-object v0, Ltwitter4j/JSONStringer$Scope;->EMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

    const v1, 0x6d0828f8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/JSONStringer;->open(Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method close(Ltwitter4j/JSONStringer$Scope;Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1959
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->peek()Ltwitter4j/JSONStringer$Scope;

    move-result-object v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1979
    :cond_0
    new-instance p1, Ltwitter4j/JSONException;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2009
    :cond_1
    :goto_0
    iget-object p1, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ne v0, p2, :cond_2

    .line 2029
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->newline()V

    .line 2049
    :cond_2
    iget-object p1, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public endArray()Ltwitter4j/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1529
    sget-object v0, Ltwitter4j/JSONStringer$Scope;->EMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

    sget-object v1, Ltwitter4j/JSONStringer$Scope;->NONEMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

    const v2, -0x2246c5bc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/JSONStringer;->close(Ltwitter4j/JSONStringer$Scope;Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public endObject()Ltwitter4j/JSONStringer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1739
    sget-object v0, Ltwitter4j/JSONStringer$Scope;->EMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

    sget-object v1, Ltwitter4j/JSONStringer$Scope;->NONEMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

    const v2, -0x451daabf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ltwitter4j/JSONStringer;->close(Ltwitter4j/JSONStringer$Scope;Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public key(Ljava/lang/String;)Ltwitter4j/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3879
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->beforeKey()V

    .line 3889
    invoke-direct {p0, p1}, Ltwitter4j/JSONStringer;->string(Ljava/lang/String;)V

    return-object p0

    .line 3859
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

.method public object()Ltwitter4j/JSONStringer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1639
    sget-object v0, Ltwitter4j/JSONStringer$Scope;->EMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

    const v1, 0x543083d2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/JSONStringer;->open(Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method open(Ltwitter4j/JSONStringer$Scope;Ljava/lang/String;)Ltwitter4j/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1819
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1829
    :cond_0
    new-instance p1, Ltwitter4j/JSONException;

    const-string p2, "Nesting problem: multiple top-level roots"

    invoke-direct {p1, p2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1849
    :cond_1
    :goto_0
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->beforeValue()V

    .line 1859
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1869
    iget-object p1, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4449
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public value(D)Ltwitter4j/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2909
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2939
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->beforeValue()V

    .line 2949
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Ltwitter4j/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    .line 2919
    :cond_0
    new-instance p1, Ltwitter4j/JSONException;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public value(J)Ltwitter4j/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 3069
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3099
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->beforeValue()V

    .line 3109
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0

    .line 3079
    :cond_0
    new-instance p1, Ltwitter4j/JSONException;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public value(Ljava/lang/Object;)Ltwitter4j/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2359
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2399
    instance-of v0, p1, Ltwitter4j/JSONArray;

    if-eqz v0, :cond_0

    .line 2409
    check-cast p1, Ltwitter4j/JSONArray;

    invoke-virtual {p1, p0}, Ltwitter4j/JSONArray;->writeTo(Ltwitter4j/JSONStringer;)V

    return-object p0

    .line 2439
    :cond_0
    instance-of v0, p1, Ltwitter4j/JSONObject;

    if-eqz v0, :cond_1

    .line 2449
    check-cast p1, Ltwitter4j/JSONObject;

    invoke-virtual {p1, p0}, Ltwitter4j/JSONObject;->writeTo(Ltwitter4j/JSONStringer;)V

    return-object p0

    .line 2489
    :cond_1
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->beforeValue()V

    if-eqz p1, :cond_4

    .line 2509
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 2559
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 2569
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Ltwitter4j/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2599
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltwitter4j/JSONStringer;->string(Ljava/lang/String;)V

    goto :goto_1

    .line 2539
    :cond_4
    :goto_0
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    return-object p0

    .line 2369
    :cond_5
    new-instance p1, Ltwitter4j/JSONException;

    const v0, -0x451201e7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public value(Z)Ltwitter4j/JSONStringer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2739
    iget-object v0, p0, Ltwitter4j/JSONStringer;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2769
    invoke-direct {p0}, Ltwitter4j/JSONStringer;->beforeValue()V

    .line 2779
    iget-object v0, p0, Ltwitter4j/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p0

    .line 2749
    :cond_0
    new-instance p1, Ltwitter4j/JSONException;

    const v0, -0x451201e7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
