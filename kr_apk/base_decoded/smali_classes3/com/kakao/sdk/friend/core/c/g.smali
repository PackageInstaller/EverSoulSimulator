.class public final Lcom/kakao/sdk/friend/core/c/g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/e/k;

.field public final b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/e/k;Lcom/kakao/sdk/friend/core/b/f;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeFriendCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/e/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/c/g;->a:Lcom/kakao/sdk/friend/core/e/k;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/c/g;->b:Lkotlin/jvm/functions/Function1;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/c/g;Lcom/kakao/sdk/friend/core/i/e;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    .line 169
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$user"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/c/g;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Lcom/kakao/sdk/friend/core/i/e;)V
    .locals 5

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/c/g;->a:Lcom/kakao/sdk/friend/core/e/k;

    .line 39
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "binding.root.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kakao/sdk/friend/core/k/u;->a(Ljava/lang/Integer;Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 59
    iget-object v1, p1, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 69
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "itemView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/f/g;->a(Landroid/content/Context;)Lcom/kakao/sdk/friend/core/f/h;

    move-result-object v1

    .line 79
    iget-object v2, p1, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    new-instance v3, Lcom/kakao/sdk/friend/core/f/a;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lcom/kakao/sdk/friend/core/f/h;->b:Lcom/kakao/sdk/friend/core/f/d;

    invoke-direct {v3, v1, v2, v4}, Lcom/kakao/sdk/friend/core/f/a;-><init>(Lcom/kakao/sdk/friend/core/f/h;Ljava/util/List;Lcom/kakao/sdk/friend/core/f/d;)V

    .line 109
    iput v0, v3, Lcom/kakao/sdk/friend/core/f/a;->d:I

    .line 119
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/g;->a:Lcom/kakao/sdk/friend/core/e/k;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/k;->c:Lcom/kakao/sdk/friend/core/view/SquircleImageView;

    const-string v1, "binding.profileIv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/kakao/sdk/friend/core/f/a;->a(Lcom/kakao/sdk/friend/core/view/SquircleImageView;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/c/g;->a:Lcom/kakao/sdk/friend/core/e/k;

    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/k;->c:Lcom/kakao/sdk/friend/core/view/SquircleImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/g;->a:Lcom/kakao/sdk/friend/core/e/k;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/k;->b:Landroid/widget/TextView;

    .line 129
    iget-object v1, p1, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/g;->a:Lcom/kakao/sdk/friend/core/e/k;

    .line 149
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 159
    new-instance v1, Lcom/kakao/sdk/friend/core/c/g$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/kakao/sdk/friend/core/c/g$$ExternalSyntheticLambda0;-><init>(Lcom/kakao/sdk/friend/core/c/g;Lcom/kakao/sdk/friend/core/i/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
