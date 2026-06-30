.class public Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;
.super Ljavax/net/ssl/SSLSocket;
.source "NoSSLv3SocketFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/server/NoSSLv3SocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelegateSSLSocket"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\'\n\u0002\u0010\u0000\n\u0000\u0008\u0096\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0002\u0010\nJ\u001b\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0002\u0010\nJ\u001b\u0010\u0012\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u001a\u001a\u00020\rH\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u001dH\u0016J\u0010\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u001dH\u0016J\u0008\u0010#\u001a\u00020\u001dH\u0016J\u0008\u0010$\u001a\u00020\u001dH\u0016J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u001dH\u0016J\u0008\u0010\'\u001a\u00020\u001dH\u0016J\u0010\u0010(\u001a\u00020\r2\u0006\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020\rH\u0016J\u0010\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020*H\u0016J\u0018\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020*2\u0006\u0010.\u001a\u00020/H\u0016J\u0008\u00100\u001a\u000201H\u0016J\u0008\u00102\u001a\u000203H\u0016J\u0008\u00104\u001a\u000205H\u0016J\u0008\u00106\u001a\u00020\u001dH\u0016J\u0008\u00107\u001a\u000203H\u0016J\u0008\u00108\u001a\u00020/H\u0016J\u0008\u00109\u001a\u00020*H\u0016J\u0008\u0010:\u001a\u00020\u001dH\u0016J\u0008\u0010;\u001a\u00020<H\u0016J\u0008\u0010=\u001a\u00020/H\u0016J\u0008\u0010>\u001a\u00020/H\u0016J\u0008\u0010?\u001a\u00020*H\u0016J\u0008\u0010@\u001a\u00020\u001dH\u0016J\u0008\u0010A\u001a\u00020/H\u0016J\u0008\u0010B\u001a\u00020/H\u0016J\u0008\u0010C\u001a\u00020/H\u0016J\u0008\u0010D\u001a\u00020\u001dH\u0016J\u0008\u0010E\u001a\u00020/H\u0016J\u0008\u0010F\u001a\u00020\u001dH\u0016J\u0008\u0010G\u001a\u00020\u001dH\u0016J\u0008\u0010H\u001a\u00020\u001dH\u0016J\u0008\u0010I\u001a\u00020\u001dH\u0016J\u0008\u0010J\u001a\u00020\u001dH\u0016J\u0010\u0010K\u001a\u00020\r2\u0006\u0010L\u001a\u00020/H\u0016J\u0010\u0010M\u001a\u00020\r2\u0006\u0010N\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\r2\u0006\u0010P\u001a\u00020\u001dH\u0016J \u0010Q\u001a\u00020\r2\u0006\u0010R\u001a\u00020/2\u0006\u0010S\u001a\u00020/2\u0006\u0010T\u001a\u00020/H\u0016J\u0010\u0010U\u001a\u00020\r2\u0006\u0010V\u001a\u00020/H\u0016J\u0010\u0010W\u001a\u00020\r2\u0006\u0010X\u001a\u00020\u001dH\u0016J\u0010\u0010Y\u001a\u00020\r2\u0006\u0010V\u001a\u00020/H\u0016J\u0018\u0010Z\u001a\u00020\r2\u0006\u0010[\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u0010\\\u001a\u00020\r2\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u0010]\u001a\u00020\r2\u0006\u0010[\u001a\u00020\u001dH\u0016J\u0010\u0010^\u001a\u00020\r2\u0006\u0010L\u001a\u00020/H\u0016J\u0008\u0010_\u001a\u00020\rH\u0016J\u0008\u0010`\u001a\u00020\rH\u0016J\u0008\u0010a\u001a\u00020\tH\u0016J\u0013\u0010b\u001a\u00020\u001d2\u0008\u0010c\u001a\u0004\u0018\u00010dH\u0096\u0002R\u0014\u0010\u0002\u001a\u00020\u0001X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006e"
    }
    d2 = {
        "Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;",
        "Ljavax/net/ssl/SSLSocket;",
        "delegate",
        "<init>",
        "(Lcom/kakaogame/server/NoSSLv3SocketFactory;Ljavax/net/ssl/SSLSocket;)V",
        "getDelegate",
        "()Ljavax/net/ssl/SSLSocket;",
        "getSupportedCipherSuites",
        "",
        "",
        "()[Ljava/lang/String;",
        "getEnabledCipherSuites",
        "setEnabledCipherSuites",
        "",
        "suites",
        "([Ljava/lang/String;)V",
        "getSupportedProtocols",
        "getEnabledProtocols",
        "setEnabledProtocols",
        "protocols",
        "getSession",
        "Ljavax/net/ssl/SSLSession;",
        "addHandshakeCompletedListener",
        "listener",
        "Ljavax/net/ssl/HandshakeCompletedListener;",
        "removeHandshakeCompletedListener",
        "startHandshake",
        "setUseClientMode",
        "mode",
        "",
        "getUseClientMode",
        "setNeedClientAuth",
        "need",
        "setWantClientAuth",
        "want",
        "getNeedClientAuth",
        "getWantClientAuth",
        "setEnableSessionCreation",
        "flag",
        "getEnableSessionCreation",
        "bind",
        "localAddr",
        "Ljava/net/SocketAddress;",
        "close",
        "connect",
        "remoteAddr",
        "timeout",
        "",
        "getChannel",
        "Ljava/nio/channels/SocketChannel;",
        "getInetAddress",
        "Ljava/net/InetAddress;",
        "getInputStream",
        "Ljava/io/InputStream;",
        "getKeepAlive",
        "getLocalAddress",
        "getLocalPort",
        "getLocalSocketAddress",
        "getOOBInline",
        "getOutputStream",
        "Ljava/io/OutputStream;",
        "getPort",
        "getReceiveBufferSize",
        "getRemoteSocketAddress",
        "getReuseAddress",
        "getSendBufferSize",
        "getSoLinger",
        "getSoTimeout",
        "getTcpNoDelay",
        "getTrafficClass",
        "isBound",
        "isClosed",
        "isConnected",
        "isInputShutdown",
        "isOutputShutdown",
        "sendUrgentData",
        "value",
        "setKeepAlive",
        "keepAlive",
        "setOOBInline",
        "oobinline",
        "setPerformancePreferences",
        "connectionTime",
        "latency",
        "bandwidth",
        "setReceiveBufferSize",
        "size",
        "setReuseAddress",
        "reuse",
        "setSendBufferSize",
        "setSoLinger",
        "on",
        "setSoTimeout",
        "setTcpNoDelay",
        "setTrafficClass",
        "shutdownInput",
        "shutdownOutput",
        "toString",
        "equals",
        "o",
        "",
        "common-kakaogames_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Ljavax/net/ssl/SSLSocket;

.field final synthetic this$0:Lcom/kakaogame/server/NoSSLv3SocketFactory;


# direct methods
.method public constructor <init>(Lcom/kakaogame/server/NoSSLv3SocketFactory;Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            ")V"
        }
    .end annotation

    const v0, 0x336de273

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    iput-object p1, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->this$0:Lcom/kakaogame/server/NoSSLv3SocketFactory;

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    iput-object p2, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    const v0, 0x3365cce3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x5d1f6fa7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1779
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x6d035a90

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x6d035a90

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1879
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 3689
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 2

    .line 1919
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const v1, 0x6d035a70

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getDelegate()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .line 1669
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnableSessionCreation()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d1f6967

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 2

    .line 1139
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d1f684f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .line 1959
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    const v1, -0x224d888c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2009
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const v1, 0x5d1f6bc7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 2059
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    .line 2099
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    const v1, 0x6d035ee0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalPort()I
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 2179
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    const v1, 0x5436417a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 2229
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOOBInline()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2279
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const v1, -0x224d95ac

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPort()I
    .locals 1

    .line 2319
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 2379
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 2419
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    const v1, 0x7d7f5dc5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 2469
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 2529
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .line 1219
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    const v1, -0x45163147

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 2579
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 2639
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSoTimeout()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const v1, 0x336dfa3b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d7f5f5d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 2739
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUseClientMode()Z
    .locals 1

    .line 1429
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getUseClientMode()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getWantClientAuth()Z
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isBound()Z
    .locals 1

    .line 2779
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isClosed()Z
    .locals 1

    .line 2819
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isConnected()Z
    .locals 1

    .line 2859
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 2899
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 2939
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    const v0, 0x3365cce3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public sendUrgentData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2989
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->sendUrgentData(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    const v0, 0x5d1f7197

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    const v0, 0x54365b92

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 3039
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setOOBInline(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 3089
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setOOBInline(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setPerformancePreferences(III)V
    .locals 1

    .line 3129
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 3189
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 3239
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 3299
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3309
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 3349
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 3409
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3419
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 3459
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setTrafficClass(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 3509
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setUseClientMode(Z)V
    .locals 1

    .line 1389
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3559
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->shutdownInput()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3609
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->shutdownOutput()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public startHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3649
    iget-object v0, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->delegate:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e20f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
