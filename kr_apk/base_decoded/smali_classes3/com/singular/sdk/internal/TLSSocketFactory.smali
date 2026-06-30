.class public Lcom/singular/sdk/internal/TLSSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TLSSocketFactory.java"


# instance fields
.field private internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const-string v0, "TLS"

    .line 199
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 219
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void

    .array-data 1
    .end array-data
.end method

.method private enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2

    if-eqz p1, :cond_0

    .line 659
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 669
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    const-string v1, "TLSv1.2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/singular/sdk/internal/TLSSocketFactory;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/TLSSocketFactory;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/TLSSocketFactory;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/TLSSocketFactory;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/TLSSocketFactory;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/TLSSocketFactory;->enableTLSOnSocket(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/singular/sdk/internal/TLSSocketFactory;->internalSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
