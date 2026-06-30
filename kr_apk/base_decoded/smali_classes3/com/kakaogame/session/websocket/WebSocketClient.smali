.class public final Lcom/kakaogame/session/websocket/WebSocketClient;
.super Ljava/lang/Object;
.source "WebSocketClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/session/websocket/WebSocketClient$Companion;,
        Lcom/kakaogame/session/websocket/WebSocketClient$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketClient.kt\ncom/kakaogame/session/websocket/WebSocketClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,297:1\n1#2:298\n107#3:299\n79#3,22:300\n107#3:322\n79#3,22:323\n*S KotlinDebug\n*F\n+ 1 WebSocketClient.kt\ncom/kakaogame/session/websocket/WebSocketClient\n*L\n224#1:299\n224#1:300,22\n258#1:322\n258#1:323,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 -2\u00020\u0001:\u0002,-B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001d\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u001d\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0006\u0010 \u001a\u00020\u001bJ\u0010\u0010!\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0008J\u0010\u0010!\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0018\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0008H\u0002J\u0012\u0010\'\u001a\u0004\u0018\u00010\u00082\u0006\u0010(\u001a\u00020%H\u0002J\u0008\u0010)\u001a\u00020\u0008H\u0002J\u0010\u0010*\u001a\u00020\u001b2\u0008\u0010+\u001a\u0004\u0018\u00010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/kakaogame/session/websocket/WebSocketClient;",
        "",
        "mURI",
        "Ljava/net/URI;",
        "mListener",
        "Lcom/kakaogame/session/websocket/WebSocketClient$Listener;",
        "mExtraHeaders",
        "",
        "",
        "<init>",
        "(Ljava/net/URI;Lcom/kakaogame/session/websocket/WebSocketClient$Listener;Ljava/util/Map;)V",
        "mSocket",
        "Ljava/net/Socket;",
        "mThread",
        "Ljava/lang/Thread;",
        "mHandlerThread",
        "Landroid/os/HandlerThread;",
        "mHandler",
        "Landroid/os/Handler;",
        "mParser",
        "Lcom/kakaogame/session/websocket/HybiParser;",
        "value",
        "",
        "isConnected",
        "()Z",
        "mSendLock",
        "connect",
        "",
        "disconnect",
        "send",
        "data",
        "",
        "ping",
        "onMessage",
        "message",
        "checkResponse",
        "inputStream",
        "Ljava/io/InputStream;",
        "secWebSocketKey",
        "readLine",
        "reader",
        "createSecret",
        "sendFrame",
        "frame",
        "Listener",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/session/websocket/WebSocketClient$Companion;

.field private static final TAG:Ljava/lang/String; = "WebSocketClient"


# instance fields
.field private isConnected:Z

.field private final mExtraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

.field private final mParser:Lcom/kakaogame/session/websocket/HybiParser;

.field private final mSendLock:Ljava/lang/Object;

.field private mSocket:Ljava/net/Socket;

.field private mThread:Ljava/lang/Thread;

.field private final mURI:Ljava/net/URI;


# direct methods
.method public static synthetic $r8$lambda$2VAz6yxonJo0-JoIiObO7SbBSzU(Lcom/kakaogame/session/websocket/WebSocketClient;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient;->sendFrame$lambda$8(Lcom/kakaogame/session/websocket/WebSocketClient;[B)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$GkQoP6svKviIG9ANwLXD8VINpP8(Lcom/kakaogame/session/websocket/WebSocketClient;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/session/websocket/WebSocketClient;->connect$lambda$0(Lcom/kakaogame/session/websocket/WebSocketClient;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$tQOWLPWFcGHtqBIc2C8tso3bRuo(Lcom/kakaogame/session/websocket/WebSocketClient;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/session/websocket/WebSocketClient;->disconnect$lambda$1(Lcom/kakaogame/session/websocket/WebSocketClient;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/session/websocket/WebSocketClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/session/websocket/WebSocketClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/session/websocket/WebSocketClient;->Companion:Lcom/kakaogame/session/websocket/WebSocketClient$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/kakaogame/session/websocket/WebSocketClient$Listener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/kakaogame/session/websocket/WebSocketClient$Listener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, -0x45168cc7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x45169337

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    .line 369
    iput-object p2, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    .line 379
    iput-object p3, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mExtraHeaders:Ljava/util/Map;

    .line 419
    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo p2, "websocket-thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mHandlerThread:Landroid/os/HandlerThread;

    .line 439
    new-instance p2, Lcom/kakaogame/session/websocket/HybiParser;

    invoke-direct {p2, p0}, Lcom/kakaogame/session/websocket/HybiParser;-><init>(Lcom/kakaogame/session/websocket/WebSocketClient;)V

    iput-object p2, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mParser:Lcom/kakaogame/session/websocket/HybiParser;

    .line 469
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mSendLock:Ljava/lang/Object;

    .line 2949
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 2959
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mHandler:Landroid/os/Handler;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final checkResponse(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const v0, 0x7d7ffcd5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d7ffc0d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 1759
    invoke-direct {p0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 1769
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 1789
    :goto_0
    invoke-direct {p0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v6

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v7

    :goto_2
    const v8, -0x451692c7

    invoke-static {v8}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v8

    if-nez v5, :cond_3

    .line 1799
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const v7, -0x224d370c

    invoke-static {v7}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    new-instance v5, Ljava/util/StringTokenizer;

    const v6, 0x543c2ce2

    invoke-static {v6}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 1849
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1859
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1869
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1829
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const v0, 0x225af73e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1889
    :cond_3
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, -0x224d369c

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v8, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v6

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v7

    :goto_4
    if-nez p1, :cond_11

    .line 1929
    new-instance p1, Ljava/util/StringTokenizer;

    const v4, 0x543c4f92

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_10

    .line 1969
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1979
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1989
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const v4, -0x224d310c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    .line 1999
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x5d179617

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_f

    .line 2029
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v4, 0x5436fa02

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v8, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo p1, "websocket"

    .line 2049
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2059
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebSocket Connect Response Header is wrong: Upgrade: websocket : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v8, v2}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 2089
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v2, v8, v4, p1}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    :try_start_1
    const-string p1, "Connection"

    .line 2119
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_7

    .line 2129
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocket Connect Response Header is wrong: Connection: Upgrade : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 2159
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v8, v2, p1}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    :try_start_2
    const-string p1, "Sec-WebSocket-Accept"

    .line 2189
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "US-ASCII"

    .line 2209
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(charsetName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SHA-1"

    .line 2219
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2229
    array-length v1, p2

    invoke-virtual {v0, p2, v6, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 2239
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    .line 2249
    invoke-static {p2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v0, "encodeToString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2999
    check-cast p2, Ljava/lang/CharSequence;

    .line 3019
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v7

    move v1, v6

    move v2, v1

    :goto_7
    if-gt v1, v0, :cond_d

    if-nez v2, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    move v3, v0

    .line 3069
    :goto_8
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    .line 2249
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gtz v3, :cond_9

    move v3, v7

    goto :goto_9

    :cond_9
    move v3, v6

    :goto_9
    if-nez v2, :cond_b

    if-nez v3, :cond_a

    move v2, v7

    goto :goto_7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    if-nez v3, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_d
    :goto_a
    add-int/2addr v0, v7

    .line 3219
    invoke-interface {p2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2999
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2259
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2269
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocket Connect Response Header is wrong: Sec-WebSocket-Accept : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    move-exception p1

    .line 2299
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v8, v0, p1}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_b
    return-void

    .line 2009
    :cond_f
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d03e4f0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1949
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const v0, -0x224d334c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1909
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Received no reply from server."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private static final connect$lambda$0(Lcom/kakaogame/session/websocket/WebSocketClient;)V
    .locals 17

    move-object/from16 v1, p0

    const v0, 0x6d03e6f0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x5436f9c2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x451692c7

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x6d03e6a8

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const v5, -0x224d3d7c

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    const v6, -0x45169b4f

    invoke-static {v6}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x225afc66

    invoke-static {v7}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7d7ff55d

    invoke-static {v8}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v8

    const v9, -0x4516995f

    invoke-static {v9}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v9

    .line 539
    :try_start_0
    iget-object v11, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v11
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v12, -0x1

    const v13, 0x543d7102

    invoke-static {v13}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7d72c9e5

    invoke-static {v14}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v14

    if-eq v11, v12, :cond_0

    :try_start_1
    iget-object v11, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v11

    goto :goto_1

    :cond_0
    iget-object v11, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v11, 0x50

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v11, 0x1bb

    .line 549
    :goto_1
    iget-object v12, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "/"

    goto :goto_2

    :cond_3
    iget-object v12, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 559
    :goto_2
    iget-object v15, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v15}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    if-eqz v15, :cond_5

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_4

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v15, 0x1

    :goto_4
    if-nez v15, :cond_6

    .line 569
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v15, 0x3f

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v15}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 589
    :cond_6
    iget-object v15, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v15, v13

    goto :goto_5

    :cond_7
    const-string v15, "http"

    .line 599
    :goto_5
    new-instance v10, Ljava/net/URI;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v16, v0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-direct {v10, v15, v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    goto :goto_7

    :cond_9
    :goto_6
    invoke-static {}, Lcom/kakaogame/server/ServerSecurityManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/SocketFactory;

    .line 619
    :goto_7
    iget-object v13, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13, v11}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/kakaogame/session/websocket/WebSocketClient;->createSecret()Ljava/lang/String;

    move-result-object v0

    .line 639
    sget-object v11, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v3, v8}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    new-instance v8, Ljava/io/PrintWriter;

    iget-object v11, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 659
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " HTTP/1.1\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Upgrade: websocket\r\n"

    .line 689
    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "Connection: Upgrade\r\n"

    .line 699
    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 729
    iget-object v6, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mURI:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 719
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n                                \n                                "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 749
    invoke-static {v6}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 709
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Sec-WebSocket-Version: 13\r\n"

    .line 789
    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    iget-object v4, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mExtraHeaders:Ljava/util/Map;

    if-eqz v4, :cond_a

    .line 809
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 819
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v7, "%s: %s\r\n"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v12, 0x0

    :try_start_3
    aput-object v6, v11, v12
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v6, 0x1

    :try_start_4
    aput-object v5, v11, v6

    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format(format, *args)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    :catch_0
    move v2, v12

    goto/16 :goto_a

    :catch_1
    move v2, v12

    goto :goto_9

    .line 849
    :cond_a
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 869
    new-instance v2, Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;

    iget-object v4, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    :cond_b
    invoke-direct {v2, v9}, Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 899
    move-object v4, v2

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v1, v4, v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->checkResponse(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 909
    iput-boolean v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    .line 919
    iget-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    invoke-interface {v0}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onConnect()V

    .line 949
    iget-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mParser:Lcom/kakaogame/session/websocket/HybiParser;

    invoke-virtual {v0, v2}, Lcom/kakaogame/session/websocket/HybiParser;->start(Lcom/kakaogame/session/websocket/HybiParser$HappyDataInputStream;)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v2, 0x0

    .line 959
    :try_start_5
    iput-boolean v2, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    .line 969
    iget-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v4, v16

    :try_start_6
    invoke-interface {v0, v2, v4}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_d

    :catch_2
    :goto_9
    move-object/from16 v4, v16

    goto :goto_c

    :catch_3
    move-object/from16 v4, v16

    goto :goto_b

    :catch_4
    move-exception v0

    .line 1179
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, -0x224d3ffc

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1189
    iget-boolean v2, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    .line 1199
    iput-boolean v2, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    .line 1209
    iget-object v3, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    const v4, -0x224d3e34    # -1.6101001E18f

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V

    .line 1229
    :cond_c
    iget-object v1, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    invoke-interface {v1, v0}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_d

    .line 1119
    :catch_5
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x6d03ea50

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-boolean v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    .line 1139
    iput-boolean v2, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    .line 1149
    iget-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    const v1, 0x6d03edb0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V

    goto :goto_d

    :catch_6
    const/4 v2, 0x0

    .line 1059
    :catch_7
    :goto_a
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v4, 0x7d7ff015

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-boolean v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    if-eqz v0, :cond_d

    .line 1079
    iput-boolean v2, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    .line 1089
    iget-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    const v1, -0x224d383c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V

    goto :goto_d

    :catch_8
    move-object v4, v0

    :goto_b
    const/4 v2, 0x0

    .line 989
    :catch_9
    :goto_c
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v5, 0x5d1fd8d7

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/kakaogame/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-boolean v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    if-eqz v0, :cond_d

    .line 1009
    iput-boolean v2, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    .line 1019
    iget-object v0, v1, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    invoke-interface {v0, v2, v4}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    .array-data 1
    .end array-data
.end method

.method private final createSecret()Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2569
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const/16 v6, 0x100

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2589
    :cond_0
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0cab50

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3229
    check-cast v0, Ljava/lang/CharSequence;

    .line 3249
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move v4, v2

    move v5, v4

    :goto_1
    if-gt v4, v1, :cond_6

    if-nez v5, :cond_1

    move v6, v4

    goto :goto_2

    :cond_1
    move v6, v1

    .line 3299
    :goto_2
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 2589
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_2

    move v6, v3

    goto :goto_3

    :cond_2
    move v6, v2

    :goto_3
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/2addr v1, v3

    .line 3449
    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3229
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final disconnect$lambda$1(Lcom/kakaogame/session/websocket/WebSocketClient;)V
    .locals 4

    const v0, -0x451692c7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 1319
    iget-object v1, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    .line 1339
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1389
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v3, 0x7d7ff2bd

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    invoke-interface {v0, v1}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1359
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v3, 0x225afb2e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    check-cast v1, Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1419
    iput-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method private final readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2369
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2409
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_1
    const/16 v4, 0xa

    if-eq v0, v4, :cond_3

    const/16 v4, 0xd

    if-eq v0, v4, :cond_2

    int-to-char v0, v0

    .line 2439
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2459
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_1

    return-object v1

    .line 2509
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private static final sendFrame$lambda$8(Lcom/kakaogame/session/websocket/WebSocketClient;[B)V
    .locals 2

    .line 2649
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mSendLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2659
    :try_start_1
    iget-object v1, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 2669
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 2679
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2689
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 2709
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2649
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 2769
    iget-object p0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    invoke-interface {p0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2749
    iget-object p0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    check-cast p1, Ljava/lang/Exception;

    invoke-interface {p0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onError(Ljava/lang/Exception;)V

    :catch_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final connect()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kakaogame/session/websocket/WebSocketClient$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/kakaogame/session/websocket/WebSocketClient$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/session/websocket/WebSocketClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mThread:Ljava/lang/Thread;

    .line 1259
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final disconnect()V
    .locals 2

    .line 1299
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kakaogame/session/websocket/WebSocketClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/kakaogame/session/websocket/WebSocketClient$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/session/websocket/WebSocketClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final isConnected()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->isConnected:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final onMessage(Ljava/lang/String;)V
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    invoke-interface {v0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onMessage(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final onMessage([B)V
    .locals 1

    .line 1689
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mListener:Lcom/kakaogame/session/websocket/WebSocketClient$Listener;

    invoke-interface {v0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient$Listener;->onMessage([B)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final ping()V
    .locals 1

    .line 1609
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mParser:Lcom/kakaogame/session/websocket/HybiParser;

    invoke-virtual {v0}, Lcom/kakaogame/session/websocket/HybiParser;->framePing()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/session/websocket/WebSocketClient;->sendFrame([B)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final send(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mParser:Lcom/kakaogame/session/websocket/HybiParser;

    invoke-virtual {v0, p1}, Lcom/kakaogame/session/websocket/HybiParser;->frame(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient;->sendFrame([B)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final send([B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mParser:Lcom/kakaogame/session/websocket/HybiParser;

    invoke-virtual {v0, p1}, Lcom/kakaogame/session/websocket/HybiParser;->frame([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient;->sendFrame([B)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final sendFrame([B)V
    .locals 2

    .line 2629
    iget-object v0, p0, Lcom/kakaogame/session/websocket/WebSocketClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kakaogame/session/websocket/WebSocketClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/kakaogame/session/websocket/WebSocketClient$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/session/websocket/WebSocketClient;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method
