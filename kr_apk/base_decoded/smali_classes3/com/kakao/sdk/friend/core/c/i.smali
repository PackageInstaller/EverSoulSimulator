.class public final Lcom/kakao/sdk/friend/core/c/i;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lcom/kakao/sdk/friend/core/e/j;

.field public final c:Lkotlin/jvm/functions/Function1;

.field public final d:Lkotlin/jvm/functions/Function1;

.field public final e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ZLcom/kakao/sdk/friend/core/e/j;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uncheckCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customFavoriteCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p2, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/c/i;->a:Z

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/c/i;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/c/i;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/c/i;->e:Lkotlin/jvm/functions/Function1;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/c/i;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    .line 119
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/c/i;->e:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(ZLcom/kakao/sdk/friend/core/c/i;Lcom/kakao/sdk/friend/core/e/j;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    .line 209
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_bindRoot"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/kakao/sdk/friend/core/c/i;->c:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p2, Lcom/kakao/sdk/friend/core/e/j;->b:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/kakao/sdk/friend/core/c/i;->c:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/kakao/sdk/friend/core/c/i;->d:Lkotlin/jvm/functions/Function1;

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Lcom/kakao/sdk/friend/core/e/j;ZLcom/kakao/sdk/friend/core/i/e;)V
    .locals 1

    .line 129
    iget-object p3, p3, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 139
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    if-ne p3, v0, :cond_0

    .line 149
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    iget-object p2, p2, Lcom/kakao/sdk/friend/core/e/j;->e:Lcom/kakao/sdk/friend/core/view/SquircleImageView;

    const p3, 0x3e99999a    # 0.3f

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    iget-object p2, p2, Lcom/kakao/sdk/friend/core/e/j;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    iget-object p2, p2, Lcom/kakao/sdk/friend/core/e/j;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 159
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p2, 0x0

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 179
    :cond_0
    iget-object p3, p0, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    iget-object p3, p3, Lcom/kakao/sdk/friend/core/e/j;->e:Lcom/kakao/sdk/friend/core/view/SquircleImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setAlpha(F)V

    iget-object p3, p0, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    iget-object p3, p3, Lcom/kakao/sdk/friend/core/e/j;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p3, p0, Lcom/kakao/sdk/friend/core/c/i;->b:Lcom/kakao/sdk/friend/core/e/j;

    iget-object p3, p3, Lcom/kakao/sdk/friend/core/e/j;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 189
    iget-object p3, p1, Lcom/kakao/sdk/friend/core/e/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 199
    new-instance v0, Lcom/kakao/sdk/friend/core/c/i$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0, p1}, Lcom/kakao/sdk/friend/core/c/i$$ExternalSyntheticLambda0;-><init>(ZLcom/kakao/sdk/friend/core/c/i;Lcom/kakao/sdk/friend/core/e/j;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Lcom/kakao/sdk/friend/core/e/j;ZZLcom/kakao/sdk/friend/core/i/e;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 19
    iget-boolean v0, p4, Lcom/kakao/sdk/friend/core/i/e;->i:Z

    if-eqz v0, :cond_0

    .line 29
    sget v0, Lcom/kakao/sdk/friend/core/R$drawable;->kakao_sdk_daynight_custom_favorite:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/kakao/sdk/friend/core/R$drawable;->kakao_sdk_daynight_radio:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/kakao/sdk/friend/core/R$drawable;->kakao_sdk_daynight_checkbox:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    .line 39
    :goto_1
    iget-object p3, p4, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz p3, :cond_3

    .line 49
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v2

    if-ne p3, v2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 59
    iget-boolean p2, p4, Lcom/kakao/sdk/friend/core/i/e;->i:Z

    if-nez p2, :cond_4

    :goto_2
    const/16 v1, 0x8

    .line 69
    :cond_4
    iget-object p2, p1, Lcom/kakao/sdk/friend/core/e/j;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/kakao/sdk/friend/core/e/j;->b:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;->setButtonDrawable(I)V

    iget-object p2, p1, Lcom/kakao/sdk/friend/core/e/j;->b:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 79
    iget-boolean p3, p4, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    .line 89
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 99
    iget-boolean p2, p4, Lcom/kakao/sdk/friend/core/i/e;->i:Z

    if-eqz p2, :cond_5

    .line 109
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/j;->c:Landroid/widget/FrameLayout;

    new-instance p2, Lcom/kakao/sdk/friend/core/c/i$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/kakao/sdk/friend/core/c/i$$ExternalSyntheticLambda1;-><init>(Lcom/kakao/sdk/friend/core/c/i;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    nop

    .array-data 1
    .end array-data
.end method
