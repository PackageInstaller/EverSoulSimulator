.class public final Lcom/kakaogame/web/protocol/CopyToClipboardHandler;
.super Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.source "CopyToClipboardHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/web/protocol/CopyToClipboardHandler;",
        "Lcom/kakaogame/web/protocol/WebAppProtocolHandler;",
        "<init>",
        "()V",
        "handleInternal",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "webUri",
        "Landroid/net/Uri;",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x336c4a63

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/kakaogame/web/protocol/CopyToClipboardHandler;->setWebAppProtocolHandler()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 149
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/web/protocol/CopyToClipboardHandler$handleInternal$1;

    const/4 v7, 0x0

    invoke-direct {v0, p2, p1, v7}, Lcom/kakaogame/web/protocol/CopyToClipboardHandler$handleInternal$1;-><init>(Landroid/net/Uri;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v7

    nop

    .array-data 1
    .end array-data
.end method
