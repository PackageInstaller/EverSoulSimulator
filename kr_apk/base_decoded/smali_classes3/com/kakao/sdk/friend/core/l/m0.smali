.class public final Lcom/kakao/sdk/friend/core/l/m0;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public a:Lcom/kakao/sdk/friend/core/e/f;

.field public final b:Lkotlin/Lazy;

.field public c:Lcom/kakao/sdk/friend/core/m/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/kakao/sdk/friend/core/l/l0;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/l0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/m0;->b:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    const-string p1, "<anonymous parameter 0>"

    .line 289
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/l/m0;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/f;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 209
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 219
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/e/f;->f:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final b(Lcom/kakao/sdk/friend/core/l/m0;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/f;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 49
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/e/f;->f:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/l/m0;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/friend/core/l/m0;->a(I)V

    .line 19
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/f;->g:Lcom/kakao/sdk/friend/core/e/n;

    iget-object v2, v1, Lcom/kakao/sdk/friend/core/e/n;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    const/4 v4, 0x0

    const-string/jumbo v5, "viewModel"

    if-nez v3, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    .line 39
    :cond_0
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/m/k;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    sget v3, Lcom/kakao/sdk/friend/core/R$string;->select_friend:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "initializeView$lambda$6"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/kakao/sdk/friend/core/l/c0;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/c0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    const-string v3, "<this>"

    .line 59
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "listener"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    const-string v8, "doneBtn"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7}, Lcom/kakao/sdk/friend/core/l/U;->a(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    .line 69
    new-instance v2, Lcom/kakao/sdk/friend/core/l/d0;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/d0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/n;->b:Landroid/widget/ImageButton;

    const-string v3, "backBtn"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/kakao/sdk/friend/core/l/U;->a(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    .line 89
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/f;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/kakao/sdk/friend/core/l/m0$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/m0$$ExternalSyntheticLambda1;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/f;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/kakao/sdk/friend/core/l/m0$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/m0$$ExternalSyntheticLambda2;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/f;->f:Lcom/google/android/material/tabs/TabLayout;

    new-instance v2, Lcom/kakao/sdk/friend/core/l/e0;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/e0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez v1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 149
    :goto_1
    iget-boolean v1, v4, Lcom/kakao/sdk/friend/core/m/k;->c:Z

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/f;->g:Lcom/kakao/sdk/friend/core/e/n;

    const-string v2, "binding.titleLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/kakao/sdk/friend/core/n/f;->a(Lcom/kakao/sdk/friend/core/e/n;Z)V

    :cond_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(I)V
    .locals 8

    .line 299
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 309
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/f;->d:Landroid/widget/TextView;

    const-string v1, "binding.friendTab"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 319
    :goto_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lcom/kakao/sdk/friend/core/R$attr;->gray900s:I

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v7, Lcom/kakao/sdk/friend/core/R$attr;->gray500s:I

    invoke-virtual {v6, v7, v5, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v3, :cond_1

    iget v3, v4, Landroid/util/TypedValue;->data:I

    goto :goto_1

    :cond_1
    iget v3, v5, Landroid/util/TypedValue;->data:I

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 339
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/f;->b:Landroid/widget/TextView;

    const-string v3, "binding.chatTab"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v2, :cond_2

    move v1, v2

    .line 349
    :cond_2
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/kakao/sdk/friend/core/R$attr;->gray900s:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/kakao/sdk/friend/core/R$attr;->gray500s:I

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v1, :cond_3

    iget p1, p1, Landroid/util/TypedValue;->data:I

    goto :goto_2

    :cond_3
    iget p1, v3, Landroid/util/TypedValue;->data:I

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    if-eqz p2, :cond_1

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 239
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/e/f;->c:Lcom/kakao/sdk/friend/core/view/EmptyView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 259
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/e/f;->c:Lcom/kakao/sdk/friend/core/view/EmptyView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 279
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/e/f;->c:Lcom/kakao/sdk/friend/core/view/EmptyView;

    invoke-virtual {p2, p1}, Lcom/kakao/sdk/friend/core/view/EmptyView;->setErrorMessage(Ljava/lang/String;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final b()V
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/f;->e:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 89
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/f;->e:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/kakao/sdk/friend/core/b/h;

    .line 109
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/l/m0;->b:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakao/sdk/friend/core/i/o;

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "childFragmentManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    const-string v5, "lifecycle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/sdk/friend/core/b/h;-><init>(Lcom/kakao/sdk/friend/core/i/o;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 129
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/e/f;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 149
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 159
    iget-object v2, v2, Lcom/kakao/sdk/friend/core/e/f;->e:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/kakao/sdk/friend/core/l/m0$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/kakao/sdk/friend/core/l/m0$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 169
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/f;->e:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/kakao/sdk/friend/core/l/k0;

    invoke-direct {v1, p0}, Lcom/kakao/sdk/friend/core/l/k0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget p3, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_fragment_tab:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    sget p2, Lcom/kakao/sdk/friend/core/R$id;->chat_tab:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->empty_view:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/kakao/sdk/friend/core/view/EmptyView;

    if-eqz v3, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->friend_tab:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->pager:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v5, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->tab_layout:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v6, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->title_layout:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/kakao/sdk/friend/core/e/n;->a(Landroid/view/View;)Lcom/kakao/sdk/friend/core/e/n;

    move-result-object v7

    new-instance p2, Lcom/kakao/sdk/friend/core/e/f;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/kakao/sdk/friend/core/e/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/kakao/sdk/friend/core/view/EmptyView;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;Lcom/kakao/sdk/friend/core/e/n;)V

    .line 39
    iput-object p2, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    .line 49
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "binding.root"

    .line 59
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final onDestroyView()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    new-instance v0, Lcom/kakao/sdk/friend/core/m/l;

    .line 29
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/m0;->b:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/i/o;

    .line 39
    invoke-direct {v0, v1}, Lcom/kakao/sdk/friend/core/m/l;-><init>(Lcom/kakao/sdk/friend/core/i/o;)V

    invoke-direct {p2, p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/kakao/sdk/friend/core/m/k;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/k;

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/l/m0;->a()V

    .line 59
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    const/4 p2, 0x0

    const-string/jumbo v0, "viewModel"

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    .line 69
    :cond_1
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->e:Landroidx/lifecycle/MutableLiveData;

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/kakao/sdk/friend/core/l/f0;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/f0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    new-instance v3, Lcom/kakao/sdk/friend/core/l/j0;

    invoke-direct {v3, v2}, Lcom/kakao/sdk/friend/core/l/j0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    .line 89
    :cond_2
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->f:Landroidx/lifecycle/MutableLiveData;

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/kakao/sdk/friend/core/l/g0;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/g0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    new-instance v3, Lcom/kakao/sdk/friend/core/l/j0;

    invoke-direct {v3, v2}, Lcom/kakao/sdk/friend/core/l/j0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    .line 109
    :cond_3
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->i:Landroidx/lifecycle/MutableLiveData;

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/kakao/sdk/friend/core/l/h0;

    invoke-direct {v2, p0}, Lcom/kakao/sdk/friend/core/l/h0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    new-instance v3, Lcom/kakao/sdk/friend/core/l/j0;

    invoke-direct {v3, v2}, Lcom/kakao/sdk/friend/core/l/j0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p2, p1

    .line 129
    :goto_0
    iget-object p1, p2, Lcom/kakao/sdk/friend/core/m/k;->j:Landroidx/lifecycle/MutableLiveData;

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/kakao/sdk/friend/core/l/i0;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/i0;-><init>(Lcom/kakao/sdk/friend/core/l/m0;)V

    new-instance v1, Lcom/kakao/sdk/friend/core/l/j0;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/l/j0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .array-data 1
    .end array-data
.end method
