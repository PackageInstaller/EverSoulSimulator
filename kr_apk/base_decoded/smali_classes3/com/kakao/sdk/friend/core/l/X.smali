.class public final Lcom/kakao/sdk/friend/core/l/X;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public a:I

.field public final synthetic b:Lcom/kakao/sdk/friend/core/view/SideIndexView;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/view/SideIndexView;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/X;->b:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/view/SideIndexView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->u:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->t:Z

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->setVisibility(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/X;->b:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    .line 19
    iget-boolean v0, p1, Lcom/kakao/sdk/friend/core/view/SideIndexView;->z:Z

    if-eqz v0, :cond_1

    .line 29
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/view/SideIndexView;->y:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/X;->b:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    .line 59
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/view/SideIndexView;->t:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/X;->b:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    .line 79
    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->t:Z

    if-nez v1, :cond_4

    .line 89
    iget v1, p0, Lcom/kakao/sdk/friend/core/l/X;->a:I

    if-eq v1, p2, :cond_4

    .line 99
    iget v1, v0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->r:I

    if-lez v1, :cond_4

    .line 109
    iput-boolean p1, v0, Lcom/kakao/sdk/friend/core/view/SideIndexView;->t:Z

    const/4 p1, 0x0

    .line 119
    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/X;->b:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    .line 129
    iget-boolean v0, p1, Lcom/kakao/sdk/friend/core/view/SideIndexView;->t:Z

    if-eqz v0, :cond_4

    .line 139
    iget-boolean v0, p1, Lcom/kakao/sdk/friend/core/view/SideIndexView;->u:Z

    if-nez v0, :cond_4

    .line 149
    new-instance v0, Lcom/kakao/sdk/friend/core/l/X$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/kakao/sdk/friend/core/l/X$$ExternalSyntheticLambda0;-><init>(Lcom/kakao/sdk/friend/core/view/SideIndexView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    iput p2, p0, Lcom/kakao/sdk/friend/core/l/X;->a:I

    return-void

    .array-data 1
    .end array-data
.end method
