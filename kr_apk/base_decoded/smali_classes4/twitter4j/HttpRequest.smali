.class public final Ltwitter4j/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

.field private static final serialVersionUID:J = 0x2eb4a519dbc50ddcL


# instance fields
.field private final authorization:Ltwitter4j/auth/Authorization;

.field private final method:Ltwitter4j/RequestMethod;

.field private final parameters:[Ltwitter4j/HttpParameter;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/HttpParameter;

    .line 439
    sput-object v0, Ltwitter4j/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/RequestMethod;",
            "Ljava/lang/String;",
            "[",
            "Ltwitter4j/HttpParameter;",
            "Ltwitter4j/auth/Authorization;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput-object p1, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    .line 559
    sget-object v0, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    if-eq p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length p1, p3

    if-eqz p1, :cond_0

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ltwitter4j/HttpParameter;->encodeParameters([Ltwitter4j/HttpParameter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    .line 579
    sget-object p1, Ltwitter4j/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/HttpParameter;

    iput-object p1, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    goto :goto_0

    .line 599
    :cond_0
    iput-object p2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    .line 609
    iput-object p3, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    .line 629
    :goto_0
    iput-object p4, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    .line 639
    iput-object p5, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

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

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 899
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 919
    :cond_1
    check-cast p1, Ltwitter4j/HttpRequest;

    .line 939
    iget-object v2, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v2, :cond_2

    iget-object v3, p1, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 959
    :cond_3
    iget-object v2, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    iget-object v3, p1, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 969
    :cond_4
    iget-object v2, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_5

    iget-object v3, p1, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 989
    :cond_6
    iget-object v2, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    if-eqz v2, :cond_7

    iget-object v3, p1, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    invoke-virtual {v2, v3}, Ltwitter4j/RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 1009
    :cond_8
    iget-object v2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    iget-object p1, p1, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    :goto_3
    return v1

    :cond_a
    return v0

    :cond_b
    :goto_4
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAuthorization()Ltwitter4j/auth/Authorization;
    .locals 1

    .line 799
    iget-object v0, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMethod()Ltwitter4j/RequestMethod;
    .locals 1

    .line 679
    iget-object v0, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getParameters()[Ltwitter4j/HttpParameter;
    .locals 1

    .line 719
    iget-object v0, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 759
    iget-object v0, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    .line 1089
    iget-object v0, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltwitter4j/RequestMethod;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1099
    iget-object v2, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1109
    iget-object v2, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1119
    iget-object v2, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1129
    iget-object v2, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d1b199f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/HttpRequest;->method:Ltwitter4j/RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5432333a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x2249f894

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->parameters:[Ltwitter4j/HttpParameter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1219
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7d7b32cd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1b1a5f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpRequest;->requestHeaders:Ljava/util/Map;

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
