.class public Ltwitter4j/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private final in:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1139
    new-instance v0, Ljava/io/InputStreamReader;

    const v1, 0x225e665e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x19000

    new-array v1, v1, [C

    .line 1009
    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 1029
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {p1, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_0

    .line 1059
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    .line 1069
    iput v3, p0, Ltwitter4j/JSONTokener;->pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1089
    new-instance v0, Ltwitter4j/JSONException;

    const v1, -0x2249a6dc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "\ufeff"

    .line 909
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 919
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 939
    :cond_0
    iput-object p1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static dehexchar(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1

    :goto_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private nextCleanInternal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1469
    :cond_0
    :goto_0
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_7

    .line 1479
    iget-object v0, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    return v0

    .line 1569
    :cond_1
    iget v3, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v4, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    return v0

    .line 1609
    :cond_2
    iget-object v3, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_4

    if-eq v3, v1, :cond_3

    return v0

    .line 1749
    :cond_3
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    .line 1759
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->skipToEndOfLine()V

    goto :goto_0

    .line 1649
    :cond_4
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    .line 1659
    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    const v3, -0x451207a7

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_5

    add-int/lit8 v0, v0, 0x2

    .line 1699
    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    goto :goto_0

    :cond_5
    const v0, 0x3369cc73

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 1679
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    .line 1889
    :cond_6
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->skipToEndOfLine()V

    goto :goto_0

    :cond_7
    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method private nextToInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3699
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    .line 3709
    :goto_0
    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v2, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3719
    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 3729
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 3709
    :cond_0
    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ltwitter4j/JSONTokener;->pos:I

    goto :goto_0

    .line 3739
    :cond_1
    :goto_1
    iget-object p1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3769
    :cond_2
    iget-object p1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private readArray()Ltwitter4j/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 4399
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-direct {v0}, Ltwitter4j/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 4459
    :goto_0
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->nextCleanInternal()I

    move-result v2

    const/4 v3, -0x1

    const v4, 0x6d077488

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    if-eq v2, v3, :cond_5

    const/4 v3, 0x0

    const/16 v5, 0x2c

    const/4 v6, 0x1

    if-eq v2, v5, :cond_3

    const/16 v7, 0x3b

    if-eq v2, v7, :cond_3

    const/16 v8, 0x5d

    if-eq v2, v8, :cond_1

    .line 4609
    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    sub-int/2addr v1, v6

    iput v1, p0, Ltwitter4j/JSONTokener;->pos:I

    .line 4639
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    .line 4659
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->nextCleanInternal()I

    move-result v1

    if-eq v1, v5, :cond_4

    if-eq v1, v7, :cond_4

    if-ne v1, v8, :cond_0

    return-object v0

    .line 4739
    :cond_0
    invoke-virtual {p0, v4}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    :cond_1
    if-eqz v1, :cond_2

    .line 4509
    invoke-virtual {v0, v3}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    :cond_2
    return-object v0

    .line 4569
    :cond_3
    invoke-virtual {v0, v3}, Ltwitter4j/JSONArray;->put(Ljava/lang/Object;)Ltwitter4j/JSONArray;

    :cond_4
    move v1, v6

    goto :goto_0

    .line 4479
    :cond_5
    invoke-virtual {p0, v4}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    .array-data 1
    .end array-data
.end method

.method private readEscapeCharacter()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2719
    iget-object v0, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_6

    const/16 v1, 0x66

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x72

    if-eq v0, v1, :cond_3

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    return v0

    .line 2749
    :cond_0
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 2779
    iget-object v0, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2789
    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ltwitter4j/JSONTokener;->pos:I

    const/16 v1, 0x10

    .line 2809
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v0, v0

    return v0

    .line 2829
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x225e6026

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    :cond_1
    const v0, 0x3369ce1b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 2759
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    :cond_2
    const/16 v0, 0x9

    return v0

    :cond_3
    const/16 v0, 0xd

    return v0

    :cond_4
    const/16 v0, 0xa

    return v0

    :cond_5
    const/16 v0, 0xc

    return v0

    :cond_6
    const/16 v0, 0x8

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private readLiteral()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    const-string v0, "{}[]/\\:,=;# \t\u000c"

    .line 3149
    invoke-direct {p0, v0}, Ltwitter4j/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3169
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7d76b075

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 3189
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3199
    sget-object v0, Ltwitter4j/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    :cond_0
    const v1, 0x22546766

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 3209
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3219
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    const v1, -0x2247ce84

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 3229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3239
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_2
    const/16 v1, 0x2e

    .line 3279
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    const v1, 0x5d1565d7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 3309
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x6d05d080

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x543c028a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 3339
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 3349
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    goto :goto_1

    :cond_4
    const/16 v2, 0xa

    move-object v1, v0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x2

    .line 3319
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 3389
    :goto_1
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_6

    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-ltz v3, :cond_6

    long-to-int v1, v1

    .line 3409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 3429
    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3559
    :catch_0
    :cond_7
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 3619
    :catch_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_8
    const v0, -0x4512049f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3179
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    .array-data 1
    .end array-data
.end method

.method private readObject()Ltwitter4j/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 3849
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0}, Ltwitter4j/JSONObject;-><init>()V

    .line 3879
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->nextCleanInternal()I

    move-result v1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 3919
    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ltwitter4j/JSONTokener;->pos:I

    .line 3959
    :cond_1
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 3969
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    const v0, 0x3369c0ab

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3989
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    .line 4009
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x7d7b6595

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, -0x45120937

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4019
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4009
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    .line 4109
    :cond_3
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->nextCleanInternal()I

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    goto :goto_0

    .line 4129
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x6d077b58

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    .line 4149
    :cond_5
    :goto_0
    iget v3, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v4, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v4, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_6

    .line 4159
    iget v3, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ltwitter4j/JSONTokener;->pos:I

    .line 4189
    :cond_6
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ltwitter4j/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ltwitter4j/JSONObject;

    .line 4209
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->nextCleanInternal()I

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_7

    return-object v0

    :cond_7
    const v0, -0x2249ae4c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 4279
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private skipToEndOfLine()V
    .locals 2

    .line 2059
    :goto_0
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2069
    iget-object v0, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2059
    :cond_0
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    goto :goto_0

    .line 2089
    :cond_1
    :goto_1
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public back()V
    .locals 2

    .line 6479
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6489
    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public more()Z
    .locals 2

    .line 5129
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public next()C
    .locals 3

    .line 5239
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public next(C)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 5359
    invoke-virtual {p0}, Ltwitter4j/JSONTokener;->next()C

    move-result v0

    if-ne v0, p1, :cond_0

    return v0

    .line 5379
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x22479df4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x7d7b676d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 5709
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/2addr v0, p1

    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 5739
    iget-object v0, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int v2, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5749
    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Ltwitter4j/JSONTokener;->pos:I

    return-object v0

    .line 5719
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const v0, 0x225e69fe

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    .array-data 1
    .end array-data
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 5529
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->nextCleanInternal()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 2339
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    const/4 v1, 0x0

    .line 2359
    :cond_0
    :goto_0
    iget v2, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v3, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2369
    iget-object v2, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_2

    if-nez v1, :cond_1

    .line 2419
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2439
    :cond_1
    iget-object p1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v2, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 2499
    iget v2, p0, Ltwitter4j/JSONTokener;->pos:I

    iget-object v3, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_4

    if-nez v1, :cond_3

    .line 2539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2559
    :cond_3
    iget-object v2, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v3, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2569
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->readEscapeCharacter()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2579
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated escape sequence"

    .line 2509
    invoke-virtual {p0, p1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    :cond_5
    const-string p1, "Unterminated string"

    .line 2619
    invoke-virtual {p0, p1}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 0

    .line 6099
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ltwitter4j/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 5999
    invoke-direct {p0, p1}, Ltwitter4j/JSONTokener;->nextToInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5979
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const v0, 0x5d1b4997

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/JSONException;
        }
    .end annotation

    .line 1249
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->nextCleanInternal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    .line 1409
    iget v0, p0, Ltwitter4j/JSONTokener;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    .line 1419
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->readLiteral()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1309
    :cond_0
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->readObject()Ltwitter4j/JSONObject;

    move-result-object v0

    return-object v0

    .line 1339
    :cond_1
    invoke-direct {p0}, Ltwitter4j/JSONTokener;->readArray()Ltwitter4j/JSONArray;

    move-result-object v0

    return-object v0

    :cond_2
    int-to-char v0, v0

    .line 1379
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const v0, -0x2249a834

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-virtual {p0, v0}, Ltwitter4j/JSONTokener;->syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;

    move-result-object v0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public skipPast(Ljava/lang/String;)V
    .locals 2

    .line 6209
    iget-object v0, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 6219
    iget-object p1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    iput p1, p0, Ltwitter4j/JSONTokener;->pos:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public skipTo(C)C
    .locals 2

    .line 6339
    iget-object v0, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6359
    iput v0, p0, Ltwitter4j/JSONTokener;->pos:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method public syntaxError(Ljava/lang/String;)Ltwitter4j/JSONException;
    .locals 2

    .line 4869
    new-instance v0, Ltwitter4j/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ltwitter4j/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4959
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x225e6816

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/JSONTokener;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d140b0f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/JSONTokener;->in:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
