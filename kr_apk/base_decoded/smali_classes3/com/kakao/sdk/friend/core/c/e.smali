.class public final Lcom/kakao/sdk/friend/core/c/e;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/kakao/sdk/friend/core/e/c;


# direct methods
.method public constructor <init>(ZLcom/kakao/sdk/friend/core/e/c;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p2, Lcom/kakao/sdk/friend/core/e/c;->a:Landroid/widget/LinearLayout;

    .line 29
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/c/e;->a:Z

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/c/e;->b:Lcom/kakao/sdk/friend/core/e/c;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 19
    sget v0, Lcom/kakao/sdk/friend/core/k/p;->c:I

    const/4 v1, 0x2

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    if-ne v0, v1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/e;->b:Lcom/kakao/sdk/friend/core/e/c;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/kakao/sdk/friend/core/c/e;->a:Z

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v2, :cond_0

    sget v2, Lcom/kakao/sdk/friend/core/R$dimen;->popup_empty_search_result_margin_top_landscape:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/kakao/sdk/friend/core/R$dimen;->empty_search_result_margin_top_landscape:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/c/e;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/e;->b:Lcom/kakao/sdk/friend/core/e/c;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/kakao/sdk/friend/core/R$dimen;->popup_empty_search_result_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_2
    return-void

    .array-data 1
    .end array-data
.end method
