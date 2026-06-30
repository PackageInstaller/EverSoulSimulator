.class public final Lcom/kakao/sdk/friend/core/b/g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lkotlin/jvm/functions/Function1;

.field public c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kakao/sdk/friend/core/l/K;)V
    .locals 1

    const-string v0, "pickedFriends"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeFriendCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/b/g;->b:Lkotlin/jvm/functions/Function1;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/b/g;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/kakao/sdk/friend/core/c/g;

    const-string v0, "holder"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/i/e;

    invoke-virtual {p1, p2}, Lcom/kakao/sdk/friend/core/c/g;->a(Lcom/kakao/sdk/friend/core/i/e;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 29
    sget v0, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_item_picked_friend:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    sget p2, Lcom/kakao/sdk/friend/core/R$id;->delete_button_iv:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->picked_nickname_tv:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->profile_iv:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/view/SquircleImageView;

    if-eqz v1, :cond_0

    new-instance p2, Lcom/kakao/sdk/friend/core/e/k;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p2, p1, v0, v1}, Lcom/kakao/sdk/friend/core/e/k;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/kakao/sdk/friend/core/view/SquircleImageView;)V

    const-string p1, "inflate(inflater, parent, false)"

    .line 49
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/kakao/sdk/friend/core/c/g;

    new-instance v0, Lcom/kakao/sdk/friend/core/b/f;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/b/f;-><init>(Lcom/kakao/sdk/friend/core/b/g;)V

    invoke-direct {p1, p2, v0}, Lcom/kakao/sdk/friend/core/c/g;-><init>(Lcom/kakao/sdk/friend/core/e/k;Lcom/kakao/sdk/friend/core/b/f;)V

    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    .array-data 1
    .end array-data
.end method
