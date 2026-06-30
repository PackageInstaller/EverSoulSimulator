.class public final Lcom/kakao/sdk/friend/core/b/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lkotlin/jvm/functions/Function1;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public d:Ljava/util/List;

.field public final e:Lcom/kakao/sdk/friend/core/b/e;


# direct methods
.method public constructor <init>(ZLcom/kakao/sdk/friend/core/l/d;Lcom/kakao/sdk/friend/core/l/e;)V
    .locals 1

    const-string v0, "checkCallback"

    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uncheckCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/b/c;->a:Z

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/b/c;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/b/c;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    new-instance p1, Lcom/kakao/sdk/friend/core/b/e;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/b/e;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/b/c;->e:Lcom/kakao/sdk/friend/core/b/e;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

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
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v1, v0, Lcom/kakao/sdk/friend/core/i/k;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/kakao/sdk/friend/core/i/a;

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/kakao/sdk/friend/core/i/i;

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    instance-of v0, v0, Lcom/kakao/sdk/friend/core/i/j;

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    :goto_0
    return p1

    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

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

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v0, p1, Lcom/kakao/sdk/friend/core/c/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/kakao/sdk/friend/core/c/f;

    const-string v0, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.Item.Header"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/kakao/sdk/friend/core/i/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "header"

    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/c/f;->a:Lcom/kakao/sdk/friend/core/e/h;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/h;->b:Landroid/widget/TextView;

    .line 29
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/i/k;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_0
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/c/c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/kakao/sdk/friend/core/c/c;

    const-string v0, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.ChatItem.Chat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/kakao/sdk/friend/core/i/a;

    invoke-virtual {p1, p2}, Lcom/kakao/sdk/friend/core/c/c;->a(Lcom/kakao/sdk/friend/core/i/a;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/kakao/sdk/friend/core/c/e;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/kakao/sdk/friend/core/c/e;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/c/e;->a()V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string v0, "parent"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "inflate(\n               \u2026lse\n                    )"

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    const-string v3, "inflate(inflater, parent, false)"

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/kakao/sdk/friend/core/c/e;

    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/b/c;->a:Z

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/c;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1, p1}, Lcom/kakao/sdk/friend/core/c/e;-><init>(ZLcom/kakao/sdk/friend/core/e/c;)V

    goto :goto_0

    :cond_0
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

    :cond_1
    new-instance p2, Lcom/kakao/sdk/friend/core/c/d;

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/a;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/kakao/sdk/friend/core/c/d;-><init>(Lcom/kakao/sdk/friend/core/e/a;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/kakao/sdk/friend/core/c/c;

    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/b/c;->a:Z

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/i;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/b/a;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/b/a;-><init>(Lcom/kakao/sdk/friend/core/b/c;)V

    new-instance v2, Lcom/kakao/sdk/friend/core/b/b;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/b/b;-><init>(Lcom/kakao/sdk/friend/core/b/c;)V

    invoke-direct {p2, v1, p1, v0, v2}, Lcom/kakao/sdk/friend/core/c/c;-><init>(ZLcom/kakao/sdk/friend/core/e/i;Lcom/kakao/sdk/friend/core/b/a;Lcom/kakao/sdk/friend/core/b/b;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/kakao/sdk/friend/core/c/f;

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/e/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/h;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/kakao/sdk/friend/core/c/f;-><init>(Lcom/kakao/sdk/friend/core/e/h;)V

    :goto_0
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/c/c;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/kakao/sdk/friend/core/i/a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/kakao/sdk/friend/core/i/a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    check-cast p1, Lcom/kakao/sdk/friend/core/c/c;

    const-string v1, "chat"

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/i/a;->d:Ljava/lang/String;

    const-string v2, "binding.root.context"

    if-eqz v1, :cond_2

    .line 39
    sget-object v0, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    .line 49
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/content/Context;)Lcom/kakao/sdk/friend/core/f/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kakao/sdk/friend/core/f/h;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_2
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/i/a;->f:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 79
    sget-object v3, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/c/c;->b:Lcom/kakao/sdk/friend/core/e/i;

    .line 89
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/content/Context;)Lcom/kakao/sdk/friend/core/f/h;

    move-result-object p1

    .line 109
    iget-wide v2, v0, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 119
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "identifier"

    .line 129
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "imageUrls"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Lcom/kakao/sdk/friend/core/f/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_4
    iget-object v1, p1, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_6
    iget-object v1, p1, Lcom/kakao/sdk/friend/core/f/h;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/f/h;->a()V

    :cond_7
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method
