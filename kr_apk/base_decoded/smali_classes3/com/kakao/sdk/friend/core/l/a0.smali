.class public final Lcom/kakao/sdk/friend/core/l/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/WindowManager;

.field public c:Landroid/view/View;

.field public final d:Landroid/os/Handler;

.field public e:I

.field public f:I

.field public g:Landroid/view/WindowManager$LayoutParams;

.field public final synthetic h:Lcom/kakao/sdk/friend/core/view/SideIndexView;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/view/SideIndexView;)V
    .locals 1

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/a0;->h:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/a0;->d:Landroid/os/Handler;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a0;->c:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "dialogPosition"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/a0;->b:Landroid/view/WindowManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a0;->c:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/a0;->b:Landroid/view/WindowManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a0;->c:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/a0;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    return-void

    :catch_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/a0;->b:Landroid/view/WindowManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a0;->c:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a0;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :catch_2
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method public final run()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a0;->h:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    .line 29
    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->s:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->s:Z

    .line 49
    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->u:Z

    const/4 v0, 0x4

    .line 59
    invoke-virtual {p0, v0}, Lcom/kakao/sdk/friend/core/l/a0;->a(I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a0;->h:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    .line 69
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->v:Lcom/kakao/sdk/friend/core/l/X;

    .line 79
    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v1}, Lcom/kakao/sdk/friend/core/l/X;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
