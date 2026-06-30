.class public final Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$onHideCustomView$1$1;
.super Ljava/lang/Object;
.source "WebDialog.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->onHideCustomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/kakaogame/web/WebDialog$WebViewContainerImpl$onHideCustomView$1$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "onAnimationStart",
        "",
        "arg0",
        "Landroid/view/animation/Animation;",
        "onAnimationRepeat",
        "onAnimationEnd",
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
.field final synthetic this$0:Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;


# direct methods
.method constructor <init>(Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$onHideCustomView$1$1;->this$0:Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;

    .line 7859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const v0, 0x7d774715

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7899
    iget-object p1, p0, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl$onHideCustomView$1$1;->this$0:Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;

    invoke-static {p1}, Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;->access$getCustomViewContainer$p(Lcom/kakaogame/web/WebDialog$WebViewContainerImpl;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const v0, 0x7d774715

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const v0, 0x7d774715

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
