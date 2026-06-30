.class public final Ltwitter4j/HttpParameter;
.super Ljava/lang/Object;
.source "HttpParameter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ltwitter4j/HttpParameter;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final GIF:Ljava/lang/String; = "image/gif"

.field private static final JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final OCTET:Ljava/lang/String; = "application/octet-stream"

.field private static final PNG:Ljava/lang/String; = "image/png"

.field private static final serialVersionUID:J = 0x382981cb088625a4L


# instance fields
.field private file:Ljava/io/File;

.field private fileBody:Ljava/io/InputStream;

.field private jsonObject:Ltwitter4j/JSONObject;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    .line 379
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 389
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 719
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 729
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    .line 379
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 389
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 619
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 629
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    .line 379
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 389
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 669
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 679
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    .line 389
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 509
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 519
    iput-object p2, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    .line 379
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 389
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 419
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 429
    iput-object p2, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    .line 379
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 389
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 559
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 569
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 579
    iput-object p3, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    .line 379
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 389
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 769
    iput-object p1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 779
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/JSONObject;)V
    .locals 1

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    .line 359
    iput-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    .line 379
    iput-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    .line 389
    iput-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 469
    iput-object p1, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static containsFile(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;)Z"
        }
    .end annotation

    .line 1919
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/HttpParameter;

    .line 1929
    invoke-virtual {v0}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static containsFile([Ltwitter4j/HttpParameter;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1799
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 1809
    invoke-virtual {v3}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .array-data 1
    .end array-data
.end method

.method public static containsJson([Ltwitter4j/HttpParameter;)Z
    .locals 3

    .line 1719
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ltwitter4j/HttpParameter;->isJson()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const v0, 0x225e334e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x4512514f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 3129
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x225e3316

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3139
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x5432387a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x543c4f92

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 3149
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "UTF-8"

    .line 3189
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static decodeParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ltwitter4j/HttpParameter;",
            ">;"
        }
    .end annotation

    .line 3339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x6d025678

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 3349
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const v5, 0x543caf0a

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 3359
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 3369
    array-length v5, v4

    if-ne v5, v6, :cond_0

    .line 3379
    aget-object v5, v4, v2

    invoke-static {v5}, Ltwitter4j/HttpParameter;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 3389
    aget-object v4, v4, v6

    invoke-static {v4}, Ltwitter4j/HttpParameter;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    .line 3399
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3409
    new-instance v6, Ltwitter4j/HttpParameter;

    invoke-direct {v6, v5, v4}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "UTF-8"

    .line 2829
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 2859
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2879
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2889
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_0

    const v2, 0x225e334e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 2909
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    const v2, 0x5432387a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 2929
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 2939
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2949
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x37

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    const/16 v1, 0x7e

    .line 2959
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_2

    .line 2989
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3019
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2589
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2599
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 2609
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    const v2, 0x6d025678

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 2649
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2669
    :cond_1
    aget-object v2, p0, v1

    iget-object v2, v2, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-static {v2}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x543caf0a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    .line 2679
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    iget-object v3, v3, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-static {v3}, Ltwitter4j/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2619
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x45125437

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v1

    iget-object p0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const v1, 0x543239ea

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2699
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getParameterArray(Ljava/lang/String;I)[Ltwitter4j/HttpParameter;
    .locals 0

    .line 2059
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltwitter4j/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getParameterArray(Ljava/lang/String;ILjava/lang/String;I)[Ltwitter4j/HttpParameter;
    .locals 0

    .line 2169
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Ltwitter4j/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    .line 2019
    new-instance v1, Ltwitter4j/HttpParameter;

    invoke-direct {v1, p0, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/HttpParameter;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    .line 2109
    new-instance v1, Ltwitter4j/HttpParameter;

    invoke-direct {v1, p0, p1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    new-instance p0, Ltwitter4j/HttpParameter;

    invoke-direct {p0, p2, p3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 329
    check-cast p1, Ltwitter4j/HttpParameter;

    invoke-virtual {p0, p1}, Ltwitter4j/HttpParameter;->compareTo(Ltwitter4j/HttpParameter;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public compareTo(Ltwitter4j/HttpParameter;)I
    .locals 2

    .line 2439
    iget-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2449
    iget-object v1, p1, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2479
    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2489
    iget-object p1, p1, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 1589
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_5

    .line 1609
    :cond_1
    check-cast p1, Ltwitter4j/HttpParameter;

    .line 1629
    iget-object v2, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 1639
    :cond_3
    iget-object v2, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 1649
    :cond_5
    iget-object v2, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    if-eqz v2, :cond_6

    iget-object v3, p1, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 1659
    :cond_7
    iget-object v2, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v2, :cond_8

    iget-object v3, p1, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 1669
    :cond_9
    iget-object v2, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    iget-object p1, p1, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_a
    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    move v0, v1

    :goto_4
    return v0

    :cond_c
    :goto_5
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    .line 1219
    invoke-virtual {p0}, Ltwitter4j/HttpParameter;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1259
    iget-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x22504cc6    # 2.82299E-18f

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const v4, 0x336990d3

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v2, :cond_0

    goto :goto_1

    .line 1319
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1329
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    const v3, 0x225bda5e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v2, :cond_3

    const v1, 0x33699003

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 1339
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v4, 0x6d072920

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v1, 0x225e3c86

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v4, -0x2249fc1c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const v1, 0x7d7b356d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 1379
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1429
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const v1, 0x6d072820

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 1439
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    move-object v4, v3

    :cond_4
    :goto_1
    return-object v4

    .line 1229
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const v1, 0x336992fb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 939
    iget-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFileBody()Ljava/io/InputStream;
    .locals 1

    .line 979
    iget-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getJsonObject()Ltwitter4j/JSONObject;
    .locals 1

    .line 899
    iget-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 819
    iget-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasFileBody()Z
    .locals 1

    .line 1099
    iget-object v0, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 2219
    iget-object v0, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2229
    iget-object v2, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2239
    iget-object v2, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2249
    iget-object v2, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2259
    iget-object v2, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public isFile()Z
    .locals 1

    .line 1019
    iget-object v0, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public isJson()Z
    .locals 1

    .line 1059
    iget-object v0, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d072b50

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x4512581f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249fefc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->jsonObject:Ltwitter4j/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d072dc0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d072db8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
