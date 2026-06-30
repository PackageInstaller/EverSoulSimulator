.class public final Lcom/kakao/sdk/friend/core/l/F;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/S;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/S;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/F;->a:Lcom/kakao/sdk/friend/core/l/S;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/F;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getFriendListAdapter(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/b/d;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "items"

    .line 29
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/b/d;->j:Lcom/kakao/sdk/friend/core/b/e;

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "oldList"

    .line 39
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newList"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/kakao/sdk/friend/core/b/e;->a:Ljava/util/List;

    iput-object p1, v1, Lcom/kakao/sdk/friend/core/b/e;->b:Ljava/util/List;

    .line 49
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/b/d;->j:Lcom/kakao/sdk/friend/core/b/e;

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/F;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    .line 69
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    .line 79
    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getEnableIndex()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v0, v0, Lcom/kakao/sdk/friend/core/m/i;->t:Z

    if-nez v0, :cond_8

    .line 89
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/F;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    .line 99
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 109
    sget-object v1, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/F;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/l/S;->access$getFriendsRv$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/e/g;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v4, "<this>"

    .line 119
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pickerList"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, -0x1

    move v6, v3

    move v7, v5

    move v5, v6

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    if-gez v5, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v8, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v10, v8, Lcom/kakao/sdk/friend/core/i/k;

    if-eqz v10, :cond_3

    move-object v10, v8

    check-cast v10, Lcom/kakao/sdk/friend/core/i/k;

    .line 129
    iget-object v10, v10, Lcom/kakao/sdk/friend/core/i/k;->a:Ljava/lang/String;

    .line 139
    iget-object v11, v1, Lcom/kakao/sdk/friend/core/e/g;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 149
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/kakao/sdk/friend/core/R$string;->favorite:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v7, v5

    goto :goto_2

    .line 159
    :cond_2
    iget-object v5, v1, Lcom/kakao/sdk/friend/core/e/g;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 169
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v11, Lcom/kakao/sdk/friend/core/R$string;->friend:I

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v6, v2

    move v3, v9

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    instance-of v5, v8, Lcom/kakao/sdk/friend/core/i/f;

    if-eqz v5, :cond_4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v5, v9

    goto :goto_1

    :cond_5
    iget-object p1, v1, Lcom/kakao/sdk/friend/core/e/g;->c:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    invoke-virtual {p1, v4, v3, v7}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a(Ljava/util/ArrayList;II)V

    if-eqz v0, :cond_6

    sget p1, Lcom/kakao/sdk/friend/core/R$array;->popup_side_indexer:I

    goto :goto_3

    :cond_6
    sget p1, Lcom/kakao/sdk/friend/core/R$array;->side_indexer:I

    :goto_3
    if-eqz v0, :cond_7

    sget v0, Lcom/kakao/sdk/friend/core/R$array;->popup_side_indexer_landscape:I

    goto :goto_4

    :cond_7
    sget v0, Lcom/kakao/sdk/friend/core/R$array;->side_indexer_landscape:I

    :goto_4
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/g;->c:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    invoke-virtual {v1, p1, v0}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->a(II)V

    .line 179
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
