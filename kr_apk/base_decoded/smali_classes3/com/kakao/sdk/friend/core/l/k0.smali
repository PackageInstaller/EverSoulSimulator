.class public final Lcom/kakao/sdk/friend/core/l/k0;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/m0;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/m0;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/k0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 7

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/k0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    .line 19
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    const-string/jumbo v2, "viewModel"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    .line 39
    :cond_0
    iget v4, v1, Lcom/kakao/sdk/friend/core/m/k;->a:I

    if-eq p1, v4, :cond_1

    .line 49
    iget-object v4, v1, Lcom/kakao/sdk/friend/core/m/k;->f:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iput p1, v1, Lcom/kakao/sdk/friend/core/m/k;->a:I

    :cond_1
    if-nez p1, :cond_2

    iget-object v4, v1, Lcom/kakao/sdk/friend/core/m/k;->h:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Lcom/kakao/sdk/friend/core/j/r;->d:Lcom/kakao/sdk/friend/core/j/r;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/kakao/sdk/friend/core/m/k;->h:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/kakao/sdk/friend/core/m/k;->g:Landroidx/lifecycle/MutableLiveData;

    sget-object v5, Lcom/kakao/sdk/friend/core/j/r;->d:Lcom/kakao/sdk/friend/core/j/r;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/kakao/sdk/friend/core/m/k;->g:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    sget-object v4, Lcom/kakao/sdk/friend/core/j/r;->a:Lcom/kakao/sdk/friend/core/j/r;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v4, 0x8

    if-nez p1, :cond_6

    .line 59
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/f;->g:Lcom/kakao/sdk/friend/core/e/n;

    iget-object v5, p1, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    sget v6, Lcom/kakao/sdk/friend/core/R$string;->ok:I

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lcom/kakao/sdk/friend/core/e/n;->e:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v4

    :goto_1
    invoke-virtual {v5, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    .line 79
    :cond_4
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->i:Landroidx/lifecycle/MutableLiveData;

    .line 89
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/j/d;

    if-eqz p1, :cond_5

    sget p1, Lcom/kakao/sdk/friend/core/R$string;->empty_friend_message:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.empty_friend_message)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/kakao/sdk/friend/core/l/m0;->a(Ljava/lang/String;I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    if-nez v3, :cond_b

    goto :goto_3

    .line 109
    :cond_6
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/f;->g:Lcom/kakao/sdk/friend/core/e/n;

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez v5, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    .line 129
    :cond_7
    iget-boolean v5, v5, Lcom/kakao/sdk/friend/core/m/k;->d:Z

    if-eqz v5, :cond_8

    .line 139
    sget v5, Lcom/kakao/sdk/friend/core/R$string;->next:I

    goto :goto_2

    :cond_8
    sget v5, Lcom/kakao/sdk/friend/core/R$string;->ok:I

    :goto_2
    iget-object v6, p1, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/n;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez p1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    .line 149
    :cond_9
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->j:Landroidx/lifecycle/MutableLiveData;

    .line 159
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/j/d;

    if-eqz p1, :cond_a

    sget p1, Lcom/kakao/sdk/friend/core/R$string;->empty_chat_message:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(R.string.empty_chat_message)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/kakao/sdk/friend/core/l/m0;->a(Ljava/lang/String;I)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_a
    if-nez v3, :cond_b

    :goto_3
    const-string p1, ""

    .line 99
    invoke-virtual {v0, p1, v4}, Lcom/kakao/sdk/friend/core/l/m0;->a(Ljava/lang/String;I)V

    :cond_b
    return-void

    nop

    .array-data 1
    .end array-data
.end method
