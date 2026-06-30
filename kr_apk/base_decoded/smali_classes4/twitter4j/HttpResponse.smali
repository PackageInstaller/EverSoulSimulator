.class public abstract Ltwitter4j/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field private static final logger:Ltwitter4j/Logger;


# instance fields
.field protected final CONF:Ltwitter4j/HttpClientConfiguration;

.field protected is:Ljava/io/InputStream;

.field private json:Ltwitter4j/JSONObject;

.field private jsonArray:Ltwitter4j/JSONArray;

.field protected responseAsString:Ljava/lang/String;

.field protected statusCode:I

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 319
    const-class v0, Ltwitter4j/HttpResponseImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 459
    iput-boolean v1, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    .line 1199
    iput-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 1519
    iput-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 359
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .locals 2

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 459
    iput-boolean v1, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    .line 1199
    iput-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 1519
    iput-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 399
    iput-object p1, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    return-void

    .array-data 1
    .end array-data
.end method

.method private disconnectForcibly()V
    .locals 0

    .line 1939
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public asJSONArray()Ltwitter4j/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    if-nez v0, :cond_3

    .line 1639
    :try_start_0
    new-instance v0, Ltwitter4j/JSONArray;

    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 1649
    iget-object v0, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    sget-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ltwitter4j/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1679
    :cond_0
    sget-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 1689
    invoke-virtual {v1}, Ltwitter4j/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1679
    :goto_0
    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    :goto_1
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1719
    :try_start_1
    sget-object v1, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    invoke-virtual {v1}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1729
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1749
    :cond_2
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1779
    :goto_2
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 1789
    throw v0

    .line 1809
    :cond_3
    :goto_3
    iget-object v0, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public asJSONObject()Ltwitter4j/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    if-nez v0, :cond_3

    .line 1319
    :try_start_0
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 1329
    iget-object v0, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v0}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    sget-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1359
    :cond_0
    sget-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 1369
    invoke-virtual {v1}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1359
    :goto_0
    invoke-virtual {v0, v1}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    :goto_1
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1399
    :try_start_1
    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1409
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1429
    :cond_2
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    :goto_2
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 1469
    throw v0

    .line 1489
    :cond_3
    :goto_3
    iget-object v0, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public asReader()Ljava/io/Reader;
    .locals 4

    .line 1859
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1879
    :catch_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public asStream()Ljava/io/InputStream;
    .locals 2

    .line 669
    iget-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    return-object v0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const v1, 0x7d7b331d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public asString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 849
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 1039
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1139
    :catch_0
    :cond_0
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    return-object v0

    .line 889
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 929
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 949
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 959
    sget-object v3, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    invoke-virtual {v3, v0}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 979
    iput-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_3

    .line 1039
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1099
    :catch_1
    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1139
    :catch_2
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 999
    :goto_1
    :try_start_6
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    .line 1039
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_4
    if-eqz v2, :cond_5

    .line 1099
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1139
    :catch_7
    :cond_5
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 1149
    throw v0

    .line 1169
    :cond_6
    :goto_3
    iget-object v0, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaderFields()Ljava/util/Map;
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
.end method

.method public getStatusCode()I
    .locals 1

    .line 489
    iget v0, p0, Ltwitter4j/HttpResponse;->statusCode:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2029
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d1b25ef

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/HttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x54320f1a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d0713e0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d0713a0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
