.class final Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;
.super Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.source "WebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MakeShortcutHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;",
        "Lcom/kakaogame/web/protocol/WebAppProtocolHandler;",
        "<init>",
        "(Lcom/kakaogame/web/WebDialog;)V",
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


# instance fields
.field final synthetic this$0:Lcom/kakaogame/web/WebDialog;


# direct methods
.method public constructor <init>(Lcom/kakaogame/web/WebDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8509
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;->this$0:Lcom/kakaogame/web/WebDialog;

    const-string p1, "makeShortcut"

    invoke-direct {p0, p1}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;-><init>(Ljava/lang/String;)V

    .line 8759
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;->setWebAppProtocolHandler()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 8529
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;->this$0:Lcom/kakaogame/web/WebDialog;

    .line 8539
    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8549
    new-instance v1, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;

    iget-object v2, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-direct {v1, p2, v2}, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;-><init>(Landroid/net/Uri;Lcom/kakaogame/web/WebDialog;)V

    check-cast v1, Lcom/kakaogame/KGResultCallback;

    const-string p2, "com.android.launcher.permission.INSTALL_SHORTCUT"

    .line 8529
    invoke-static {p1, v0, p2, v1}, Lcom/kakaogame/web/WebDialog;->access$checkRequiredPermission(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    const/4 p1, 0x0

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
