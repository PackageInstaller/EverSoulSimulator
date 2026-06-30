.class public abstract Lcom/kakao/sdk/friend/core/n/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Ljava/lang/String;ZZ)Lcom/kakao/sdk/friend/core/e/n;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_title_bar:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/e/n;->a(Landroid/view/View;)Lcom/kakao/sdk/friend/core/e/n;

    move-result-object p1

    const-string v0, "inflate(layoutInflater, this, false)"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/kakao/sdk/friend/core/e/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_0

    iget-object p2, p1, Lcom/kakao/sdk/friend/core/e/n;->e:Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object p2, p1, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/kakao/sdk/friend/core/R$string;->next:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_1
    iget-object p2, p1, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/e/n;Z)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget v0, Lcom/kakao/sdk/friend/core/k/p;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kakao/sdk/friend/core/R$dimen;->popup_title_bar_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kakao/sdk/friend/core/R$dimen;->popup_title_bar_padding_top_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/e/n;->b:Landroid/widget/ImageButton;

    sget v2, Lcom/kakao/sdk/friend/core/R$drawable;->kakao_sdk_btn_back:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/e/n;->b:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/kakao/sdk/friend/core/R$string;->accessibility_back:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/kakao/sdk/friend/core/R$string;->accessibility_close:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/e/n;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/e/n;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/e/n;->b:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/n;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 169
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/kakao/sdk/friend/core/R$dimen;->popup_title_bar_text_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/n;->f:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 199
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/e/n;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v1, v0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/e/n;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x7

    const/4 v5, 0x7

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 209
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/e/n;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 219
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/e/n;ZI)V
    .locals 2

    const-string v0, "<this>"

    .line 229
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/n;->e:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/n;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    if-lez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .array-data 1
    .end array-data
.end method
