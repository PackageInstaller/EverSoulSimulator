.class public final Lcom/google/firebase/perf/network/InstrHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "InstrHttpURLConnection.java"


# instance fields
.field private final delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 46
    new-instance v0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    iput-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->connect()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public disconnect()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->disconnect()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getAllowUserInteraction()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getConnectTimeout()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentLength()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContentLength()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentLengthLong()J
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDate()J
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDate()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDefaultUseCaches()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDoInput()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDoInput()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDoOutput()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDoOutput()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExpiration()J
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getExpiration()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFields()Ljava/util/Map;
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

    .line 137
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getInstanceFollowRedirects()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLastModified()J
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getLastModified()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getReadTimeout()I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getReadTimeout()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestProperties()Ljava/util/Map;
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

    .line 227
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getResponseCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUseCaches()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getUseCaches()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setAllowUserInteraction(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setChunkedStreamingMode(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setConnectTimeout(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setDefaultUseCaches(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setDoInput(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setDoOutput(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setFixedLengthStreamingMode(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setFixedLengthStreamingMode(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setIfModifiedSince(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setInstanceFollowRedirects(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setReadTimeout(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setRequestMethod(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setUseCaches(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public usingProxy()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->usingProxy()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
