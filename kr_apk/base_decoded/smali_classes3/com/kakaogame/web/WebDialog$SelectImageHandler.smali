.class final Lcom/kakaogame/web/WebDialog$SelectImageHandler;
.super Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.source "WebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectImageHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/web/WebDialog$SelectImageHandler;",
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

    .line 8229
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$SelectImageHandler;->this$0:Lcom/kakaogame/web/WebDialog;

    const-string p1, "selectImage"

    invoke-direct {p0, p1}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;-><init>(Ljava/lang/String;)V

    .line 8469
    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog$SelectImageHandler;->setWebAppProtocolHandler()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 8249
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$SelectImageHandler;->this$0:Lcom/kakaogame/web/WebDialog;

    .line 8259
    invoke-virtual {p1}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8269
    new-instance v0, Lcom/kakaogame/web/WebDialog$SelectImageHandler$handleInternal$1;

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$SelectImageHandler;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-direct {v0, v1}, Lcom/kakaogame/web/WebDialog$SelectImageHandler$handleInternal$1;-><init>(Lcom/kakaogame/web/WebDialog;)V

    check-cast v0, Lcom/kakaogame/KGResultCallback;

    const v1, -0x224c72fc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 8249
    invoke-static {p1, p2, v1, v0}, Lcom/kakaogame/web/WebDialog;->access$checkRequiredPermission(Lcom/kakaogame/web/WebDialog;Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method
