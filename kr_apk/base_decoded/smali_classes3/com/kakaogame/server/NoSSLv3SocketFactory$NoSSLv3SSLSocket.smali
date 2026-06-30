.class final Lcom/kakaogame/server/NoSSLv3SocketFactory$NoSSLv3SSLSocket;
.super Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;
.source "NoSSLv3SocketFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/server/NoSSLv3SocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NoSSLv3SSLSocket"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoSSLv3SocketFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoSSLv3SocketFactory.kt\ncom/kakaogame/server/NoSSLv3SocketFactory$NoSSLv3SSLSocket\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,371:1\n37#2,2:372\n*S KotlinDebug\n*F\n+ 1 NoSSLv3SocketFactory.kt\ncom/kakaogame/server/NoSSLv3SocketFactory$NoSSLv3SSLSocket\n*L\n89#1:372,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/server/NoSSLv3SocketFactory$NoSSLv3SSLSocket;",
        "Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;",
        "Lcom/kakaogame/server/NoSSLv3SocketFactory;",
        "delegate",
        "Ljavax/net/ssl/SSLSocket;",
        "<init>",
        "(Lcom/kakaogame/server/NoSSLv3SocketFactory;Ljavax/net/ssl/SSLSocket;)V",
        "setEnabledProtocols",
        "",
        "protocols",
        "",
        "",
        "([Ljava/lang/String;)V",
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

    .line 789
    iput-object p1, p0, Lcom/kakaogame/server/NoSSLv3SocketFactory$NoSSLv3SSLSocket;->this$0:Lcom/kakaogame/server/NoSSLv3SocketFactory;

    invoke-direct {p0, p1, p2}, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;-><init>(Lcom/kakaogame/server/NoSSLv3SocketFactory;Ljavax/net/ssl/SSLSocket;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 5

    const v0, 0x54365b92

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const v3, 0x6d034480

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 829
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/kakaogame/server/NoSSLv3SocketFactory$NoSSLv3SSLSocket;->getDelegate()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p1, Ljava/util/List;

    .line 839
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 849
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const v1, 0x6d034448

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 859
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 879
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x5d1f7397

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 899
    :goto_0
    check-cast p1, Ljava/util/Collection;

    new-array v0, v0, [Ljava/lang/String;

    .line 3739
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 919
    :cond_1
    invoke-super {p0, p1}, Lcom/kakaogame/server/NoSSLv3SocketFactory$DelegateSSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
