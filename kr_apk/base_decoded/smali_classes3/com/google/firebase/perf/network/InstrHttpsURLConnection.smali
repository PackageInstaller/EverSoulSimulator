.class public final Lcom/google/firebase/perf/network/InstrHttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "InstrHttpsURLConnection.java"


# instance fields
.field private final delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

.field private final httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method constructor <init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 52
    iput-object p1, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 53
    new-instance v0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/NetworkRequestMetricBuilder;)V

    iput-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 58
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->connect()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public disconnect()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->disconnect()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getAllowUserInteraction()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 68
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 74
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentLength()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContentLength()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentLengthLong()J
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDate()J
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDate()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDefaultUseCaches()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDoInput()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDoInput()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDoOutput()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDoOutput()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExpiration()J
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getExpiration()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 144
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 79
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getInstanceFollowRedirects()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLastModified()J
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getLastModified()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

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

    .line 89
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

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

    .line 94
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getReadTimeout()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getReadTimeout()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 234
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 99
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 104
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUseCaches()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getUseCaches()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setAllowUserInteraction(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setChunkedStreamingMode(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setConnectTimeout(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setDefaultUseCaches(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setDoInput(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setDoOutput(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setFixedLengthStreamingMode(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setFixedLengthStreamingMode(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setIfModifiedSince(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setInstanceFollowRedirects(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

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

    .line 314
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setRequestMethod(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->setUseCaches(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public usingProxy()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpsURLConnection;->delegate:Lcom/google/firebase/perf/network/InstrURLConnectionBase;

    invoke-virtual {v0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->usingProxy()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
