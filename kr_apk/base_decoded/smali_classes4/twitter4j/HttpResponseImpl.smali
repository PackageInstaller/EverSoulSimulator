.class public Ltwitter4j/HttpResponseImpl;
.super Ltwitter4j/HttpResponse;
.source "HttpResponseImpl.java"


# instance fields
.field private con:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 609
    invoke-direct {p0}, Ltwitter4j/HttpResponse;-><init>()V

    .line 619
    iput-object p1, p0, Ltwitter4j/HttpResponseImpl;->responseAsString:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ltwitter4j/HttpClientConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-direct {p0, p2}, Ltwitter4j/HttpResponse;-><init>(Ltwitter4j/HttpClientConfiguration;)V

    .line 339
    iput-object p1, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    .line 359
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p0, Ltwitter4j/HttpResponseImpl;->statusCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const v0, 0x5d1b210f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p0, Ltwitter4j/HttpResponseImpl;->statusCode:I

    .line 499
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    if-nez p2, :cond_0

    .line 509
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    .line 529
    :cond_0
    iget-object p2, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    if-eqz p2, :cond_1

    const-string p2, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 549
    new-instance p1, Ltwitter4j/StreamingGZIPInputStream;

    iget-object p2, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    invoke-direct {p1, p2}, Ltwitter4j/StreamingGZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Ltwitter4j/HttpResponseImpl;->is:Ljava/io/InputStream;

    :cond_1
    return-void

    .line 469
    :cond_2
    throw p2

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .line 769
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Ltwitter4j/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
