.class public final Lcom/kakao/sdk/friend/core/b/d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Lkotlin/jvm/functions/Function1;

.field public final e:Lkotlin/jvm/functions/Function0;

.field public final f:Lkotlin/jvm/functions/Function0;

.field public final g:Lkotlin/jvm/functions/Function1;

.field public h:Ljava/util/List;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public final j:Lcom/kakao/sdk/friend/core/b/e;


# direct methods
.method public constructor <init>(ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/l/t;Lcom/kakao/sdk/friend/core/l/u;Lcom/kakao/sdk/friend/core/l/v;Lcom/kakao/sdk/friend/core/l/w;Lcom/kakao/sdk/friend/core/l/x;)V
    .locals 1

    const-string v0, "pickerViewType"

    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uncheckCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectAllCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deselectAllCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customFavoriteCallback"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/b/d;->a:Z

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/b/d;->b:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/b/d;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/b/d;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/b/d;->e:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/kakao/sdk/friend/core/b/d;->f:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/kakao/sdk/friend/core/b/d;->g:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    new-instance p1, Lcom/kakao/sdk/friend/core/b/e;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/b/e;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/b/d;->j:Lcom/kakao/sdk/friend/core/b/e;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    sget-object v1, Lcom/kakao/sdk/friend/core/i/i;->a:Lcom/kakao/sdk/friend/core/i/i;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    const-string v3, "mRecyclerView"

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Lcom/kakao/sdk/friend/core/j/p;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/kakao/sdk/friend/core/j/n;

    .line 29
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/j/n;->b:Z

    goto :goto_0

    .line 39
    :cond_0
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/g;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/kakao/sdk/friend/core/j/g;

    .line 49
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/j/g;->a:Z

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 59
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/kakao/sdk/friend/core/i/i;

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/b/d;->a()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final getItemCount()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/k;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/i;

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/j;

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/b;

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    :goto_0
    return p1

    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown viewType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/b/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "holder"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/b/d;->b:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    sget-object v3, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    move/from16 v6, p2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v6, v1, Lcom/kakao/sdk/friend/core/c/f;

    if-eqz v6, :cond_1

    check-cast v1, Lcom/kakao/sdk/friend/core/c/f;

    const-string v2, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.Item.Header"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/kakao/sdk/friend/core/i/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "header"

    .line 19
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/kakao/sdk/friend/core/c/f;->a:Lcom/kakao/sdk/friend/core/e/h;

    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/h;->b:Landroid/widget/TextView;

    .line 29
    iget-object v2, v3, Lcom/kakao/sdk/friend/core/i/k;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 49
    :cond_1
    instance-of v6, v1, Lcom/kakao/sdk/friend/core/c/i;

    if-eqz v6, :cond_18

    check-cast v1, Lcom/kakao/sdk/friend/core/c/i;

    const-string v6, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.FriendItem.User"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/kakao/sdk/friend/core/i/e;

    iget-boolean v6, v0, Lcom/kakao/sdk/friend/core/b/d;->a:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "user"

    .line 59
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    invoke-virtual {v1, v7, v8, v3}, Lcom/kakao/sdk/friend/core/c/i;->a(Lcom/kakao/sdk/friend/core/e/j;ZLcom/kakao/sdk/friend/core/i/e;)V

    iget-object v7, v1, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    .line 69
    iget-object v8, v3, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 79
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 89
    iget-object v9, v7, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "root.context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/kakao/sdk/friend/core/k/u;->a(Ljava/lang/Integer;Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v8

    iget v8, v8, Landroid/util/TypedValue;->resourceId:I

    .line 109
    iget-object v9, v3, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 119
    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    sget-object v9, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "itemView.context"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/content/Context;)Lcom/kakao/sdk/friend/core/f/h;

    move-result-object v9

    .line 129
    iget-object v10, v3, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    .line 139
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    new-instance v11, Lcom/kakao/sdk/friend/core/f/a;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v12, v9, Lcom/kakao/sdk/friend/core/f/h;->b:Lcom/kakao/sdk/friend/core/f/d;

    invoke-direct {v11, v9, v10, v12}, Lcom/kakao/sdk/friend/core/f/a;-><init>(Lcom/kakao/sdk/friend/core/f/h;Ljava/util/List;Lcom/kakao/sdk/friend/core/f/d;)V

    .line 159
    iput v8, v11, Lcom/kakao/sdk/friend/core/f/a;->d:I

    .line 169
    iget-object v7, v7, Lcom/kakao/sdk/friend/core/e/j;->e:Lcom/kakao/sdk/friend/core/view/SquircleImageView;

    const-string v8, "profileIv"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lcom/kakao/sdk/friend/core/f/a;->a(Lcom/kakao/sdk/friend/core/view/SquircleImageView;)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v7, v7, Lcom/kakao/sdk/friend/core/e/j;->e:Lcom/kakao/sdk/friend/core/view/SquircleImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :goto_3
    iget-object v7, v1, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    .line 189
    iget-object v8, v7, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 199
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-boolean v9, v1, Lcom/kakao/sdk/friend/core/c/i;->a:Z

    if-eqz v9, :cond_7

    .line 209
    iget-object v9, v3, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 219
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->popup_list_item_nickname_reject_margin_top:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_7

    .line 229
    :cond_6
    :goto_4
    iget-object v9, v7, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 239
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/kakao/sdk/friend/core/R$dimen;->popup_list_item_nickname_margin_top:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_7

    .line 249
    :cond_7
    iget-object v9, v3, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz v9, :cond_9

    .line 259
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->list_item_nickname_reject_margin_top:I

    goto :goto_6

    :cond_9
    :goto_5
    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->list_item_nickname_margin_top:I

    :goto_6
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_7
    move v15, v9

    iget-boolean v9, v1, Lcom/kakao/sdk/friend/core/c/i;->a:Z

    if-eqz v9, :cond_c

    .line 269
    iget-object v9, v3, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz v9, :cond_b

    .line 279
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_8

    :cond_a
    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->popup_list_item_nickname_reject_margin_bottom:I

    goto :goto_9

    :cond_b
    :goto_8
    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->popup_list_item_nickname_margin_bottom:I

    :goto_9
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_c

    .line 289
    :cond_c
    iget-object v9, v3, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz v9, :cond_e

    .line 299
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_a

    :cond_d
    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->list_item_nickname_reject_margin_bottom:I

    goto :goto_b

    :cond_e
    :goto_a
    sget v9, Lcom/kakao/sdk/friend/core/R$dimen;->list_item_nickname_margin_bottom:I

    :goto_b
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_c
    iget-object v9, v7, Lcom/kakao/sdk/friend/core/e/j;->d:Landroid/widget/TextView;

    .line 309
    iget-object v10, v3, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    .line 319
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 329
    iget-object v10, v7, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 339
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v10, v7, Lcom/kakao/sdk/friend/core/e/j;->d:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object v10, v9

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v10, v7, Lcom/kakao/sdk/friend/core/e/j;->d:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x4

    move-object v15, v9

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 349
    iget-object v7, v7, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 359
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 369
    iget-object v7, v1, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    .line 379
    iget-object v8, v3, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz v8, :cond_17

    .line 389
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f

    goto/16 :goto_f

    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 399
    iget-object v8, v3, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    .line 409
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v11

    sget-object v12, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->MSG_BLOCKED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-eq v11, v12, :cond_11

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v11

    sget-object v12, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->REGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-eq v11, v12, :cond_11

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v11

    sget-object v12, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->UNREGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-eq v11, v12, :cond_11

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v11

    sget-object v12, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->NOT_FRIEND:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v11, v12, :cond_10

    .line 419
    :cond_11
    iget-object v11, v7, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 429
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->getResId()I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "root.context.getString(it.reason.resId)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 439
    :cond_12
    iget-object v8, v3, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    .line 449
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v12}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v12

    sget-object v13, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->CUSTOM:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v12, v13, :cond_13

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_14
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/2addr v4, v8

    if-eqz v4, :cond_16

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    const-string v4, ""

    :cond_15
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v4, v7, Lcom/kakao/sdk/friend/core/e/j;->f:Landroid/widget/TextView;

    const-string v10, ", "

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v7, Lcom/kakao/sdk/friend/core/e/j;->f:Landroid/widget/TextView;

    goto :goto_10

    :cond_17
    :goto_f
    iget-object v4, v7, Lcom/kakao/sdk/friend/core/e/j;->f:Landroid/widget/TextView;

    const/16 v5, 0x8

    :goto_10
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v4, v1, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    invoke-virtual {v1, v4, v6, v2, v3}, Lcom/kakao/sdk/friend/core/c/i;->a(Lcom/kakao/sdk/friend/core/e/j;ZZLcom/kakao/sdk/friend/core/i/e;)V

    goto :goto_11

    .line 469
    :cond_18
    instance-of v2, v1, Lcom/kakao/sdk/friend/core/c/e;

    if-eqz v2, :cond_19

    check-cast v1, Lcom/kakao/sdk/friend/core/c/e;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/c/e;->a()V

    goto :goto_11

    :cond_19
    instance-of v2, v1, Lcom/kakao/sdk/friend/core/c/h;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/kakao/sdk/friend/core/c/h;

    const-string v2, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.ChatItem.SelectAll"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/kakao/sdk/friend/core/i/b;

    .line 479
    iget-boolean v2, v3, Lcom/kakao/sdk/friend/core/i/b;->a:Z

    .line 489
    invoke-virtual {v1, v2}, Lcom/kakao/sdk/friend/core/c/h;->a(Z)V

    :cond_1a
    :goto_11
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    const-string v0, "parent"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/b/d;->b:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    sget-object v2, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    const-string v1, "inflate(inflater, parent, false)"

    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    new-instance p2, Lcom/kakao/sdk/friend/core/c/h;

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/l;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/l;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/d;->e:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/b/d;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {p2, p1, v0, v1}, Lcom/kakao/sdk/friend/core/c/h;-><init>(Lcom/kakao/sdk/friend/core/e/l;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown viewType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Lcom/kakao/sdk/friend/core/c/e;

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/c;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v5, p1}, Lcom/kakao/sdk/friend/core/c/e;-><init>(ZLcom/kakao/sdk/friend/core/e/c;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/kakao/sdk/friend/core/c/d;

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/a;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/kakao/sdk/friend/core/c/d;-><init>(Lcom/kakao/sdk/friend/core/e/a;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/kakao/sdk/friend/core/c/i;

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/j;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/j;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kakao/sdk/friend/core/b/d;->c:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/kakao/sdk/friend/core/b/d;->d:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lcom/kakao/sdk/friend/core/b/d;->g:Lkotlin/jvm/functions/Function1;

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/kakao/sdk/friend/core/c/i;-><init>(ZLcom/kakao/sdk/friend/core/e/j;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_5
    new-instance p2, Lcom/kakao/sdk/friend/core/c/f;

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/h;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/kakao/sdk/friend/core/c/f;-><init>(Lcom/kakao/sdk/friend/core/e/h;)V

    :goto_1
    return-object p2

    .array-data 1
    .end array-data
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/c/i;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/kakao/sdk/friend/core/i/e;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    check-cast p1, Lcom/kakao/sdk/friend/core/c/i;

    const-string/jumbo v1, "user"

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 39
    sget-object v1, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    .line 49
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "binding.root.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/content/Context;)Lcom/kakao/sdk/friend/core/f/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/friend/core/f/h;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method
