.class public abstract Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.super Ljava/lang/Object;
.source "WebAppProtocolHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0013\u0008\u0004\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH$J\u0008\u0010\u000f\u001a\u00020\u0010H\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakaogame/web/protocol/WebAppProtocolHandler;",
        "",
        "authority",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getAuthority",
        "()Ljava/lang/String;",
        "handle",
        "Lcom/kakaogame/KGResult;",
        "webView",
        "Landroid/webkit/WebView;",
        "webUri",
        "Landroid/net/Uri;",
        "handleInternal",
        "setWebAppProtocolHandler",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;

.field private static final SCHEME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WebAppProtocolHandler"


# instance fields
.field private final authority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->Companion:Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;

    const v0, 0x5437e462

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    sput-object v0, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->SCHEME:Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/kakaogame/web/protocol/CopyToClipboardHandler;

    invoke-direct {v0}, Lcom/kakaogame/web/protocol/CopyToClipboardHandler;-><init>()V

    .line 209
    new-instance v0, Lcom/kakaogame/web/protocol/ShareLinkHandler;

    invoke-direct {v0}, Lcom/kakaogame/web/protocol/ShareLinkHandler;-><init>()V

    .line 219
    new-instance v0, Lcom/kakaogame/web/protocol/ExecuteUriHandler;

    invoke-direct {v0}, Lcom/kakaogame/web/protocol/ExecuteUriHandler;-><init>()V

    .line 229
    new-instance v0, Lcom/kakaogame/web/protocol/RequestUriHandler;

    invoke-direct {v0}, Lcom/kakaogame/web/protocol/RequestUriHandler;-><init>()V

    .line 239
    new-instance v0, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;

    invoke-direct {v0}, Lcom/kakaogame/web/protocol/CachedRequestUriHandler;-><init>()V

    .line 249
    new-instance v0, Lcom/kakaogame/web/protocol/InvitationLinkShareHandler;

    invoke-direct {v0}, Lcom/kakaogame/web/protocol/InvitationLinkShareHandler;-><init>()V

    .line 259
    new-instance v0, Lcom/kakaogame/web/protocol/GetAdAgreementHandler;

    invoke-direct {v0}, Lcom/kakaogame/web/protocol/GetAdAgreementHandler;-><init>()V

    .line 269
    new-instance v0, Lcom/kakaogame/web/protocol/SetAdAgreementHandler;

    invoke-direct {v0}, Lcom/kakaogame/web/protocol/SetAdAgreementHandler;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->authority:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getSCHEME$cp()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->SCHEME:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected static final getSCHEME()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->Companion:Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;->getSCHEME()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final getAuthority()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->authority:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final handle(Landroid/webkit/WebView;Landroid/net/Uri;)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x6d02faf0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5437e572

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d02fd50

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5437e262

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "callback"

    .line 339
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    .line 399
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, ")"

    .line 439
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 469
    :cond_1
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "callback function is not exist"

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 489
    :goto_0
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 519
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 529
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    .array-data 1
    .end array-data
.end method

.method protected abstract handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
.end method

.method protected final setWebAppProtocolHandler()V
    .locals 3

    .line 659
    sget-object v0, Lcom/kakaogame/web/WebAppHandlerManager;->Companion:Lcom/kakaogame/web/WebAppHandlerManager$Companion;

    sget-object v1, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->SCHEME:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/kakaogame/web/WebAppHandlerManager$Companion;->setWebAppProtocolHandler(Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/web/protocol/WebAppProtocolHandler;)V

    return-void

    .array-data 1
    .end array-data
.end method
