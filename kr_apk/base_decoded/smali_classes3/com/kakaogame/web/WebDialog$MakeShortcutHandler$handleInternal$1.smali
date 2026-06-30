.class public final Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;
.super Ljava/lang/Object;
.source "WebDialog.kt"

# interfaces
.implements Lcom/kakaogame/KGResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/web/WebDialog$MakeShortcutHandler;->handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kakaogame/KGResultCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1",
        "Lcom/kakaogame/KGResultCallback;",
        "",
        "onResult",
        "",
        "result",
        "Lcom/kakaogame/KGResult;",
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
.field final synthetic $webUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/kakaogame/web/WebDialog;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/kakaogame/web/WebDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;->$webUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;->this$0:Lcom/kakaogame/web/WebDialog;

    .line 8549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onResult(Lcom/kakaogame/KGResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 8579
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8589
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;->$webUri:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, -0x4518b62f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 8599
    :goto_0
    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;->$webUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const v2, 0x6d0baf18

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 8609
    :goto_1
    iget-object v2, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;->$webUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    const v0, -0x224c734c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    .line 8649
    :cond_3
    sget-object v2, Lcom/kakaogame/KGApplication;->INSTANCE:Lcom/kakaogame/KGApplication;

    iget-object v3, p0, Lcom/kakaogame/web/WebDialog$MakeShortcutHandler$handleInternal$1;->this$0:Lcom/kakaogame/web/WebDialog;

    invoke-virtual {v3}, Lcom/kakaogame/web/WebDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, p1, v1, v0}, Lcom/kakaogame/KGApplication;->addShortcut(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_4
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method
