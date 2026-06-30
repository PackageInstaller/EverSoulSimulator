.class public Lcom/kakao/sdk/friend/core/l/S;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private _binding:Lcom/kakao/sdk/friend/core/e/e;

.field private final friendListAdapter$delegate:Lkotlin/Lazy;

.field private friendsRv:Lcom/kakao/sdk/friend/core/e/g;

.field private final pickedFriendsAdapter$delegate:Lkotlin/Lazy;

.field private final pickedFriendsHeightPx$delegate:Lkotlin/Lazy;

.field private pickedFriendsRv:Lcom/kakao/sdk/friend/core/e/m;

.field private searchBar:Lcom/kakao/sdk/friend/core/l/W;

.field private final settings$delegate:Lkotlin/Lazy;

.field private tabViewModel:Lcom/kakao/sdk/friend/core/m/k;

.field private titleBar:Lcom/kakao/sdk/friend/core/e/n;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/kakao/sdk/friend/core/l/M;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/M;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsHeightPx$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/kakao/sdk/friend/core/l/L;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/L;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsAdapter$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/kakao/sdk/friend/core/l/y;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/y;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->friendListAdapter$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/kakao/sdk/friend/core/l/P;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/P;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->settings$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/kakao/sdk/friend/core/l/Q;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/Q;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final access$cancelPicker(Lcom/kakao/sdk/friend/core/l/S;)V
    .locals 4

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "cancelled."

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/m/i;

    .line 49
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/m/i;->g:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_1

    .line 59
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key.exception"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 69
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v1, "FriendPickerFragment not attached to an activity."

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 79
    :cond_3
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/m/i;

    .line 89
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 99
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 109
    iget p0, p0, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 119
    check-cast v0, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v0, p0}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V

    :cond_4
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final access$getFriendListAdapter(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/b/d;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->friendListAdapter$delegate:Lkotlin/Lazy;

    .line 29
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/b/d;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getFriendsRv$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/e/g;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->friendsRv:Lcom/kakao/sdk/friend/core/e/g;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final access$getPickedFriendsAdapter(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/b/g;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsAdapter$delegate:Lkotlin/Lazy;

    .line 29
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/b/g;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final access$getPickedFriendsHeightPx(Lcom/kakao/sdk/friend/core/l/S;)I
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsHeightPx$delegate:Lkotlin/Lazy;

    .line 29
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getPickedFriendsRv$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/e/m;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsRv:Lcom/kakao/sdk/friend/core/e/m;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getSearchBar$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/l/W;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->searchBar:Lcom/kakao/sdk/friend/core/l/W;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTabViewModel$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/k;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->tabViewModel:Lcom/kakao/sdk/friend/core/m/k;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTitleBar$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/e/n;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->titleBar:Lcom/kakao/sdk/friend/core/e/n;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    .line 29
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/m/i;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final access$handleError(Lcom/kakao/sdk/friend/core/l/S;Lcom/kakao/sdk/friend/core/j/e;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/kakao/sdk/friend/core/R$string;->max_pickable_count_message:I

    check-cast p1, Lcom/kakao/sdk/friend/core/j/b;

    .line 29
    iget p1, p1, Lcom/kakao/sdk/friend/core/j/b;->a:I

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {}, Lcom/liapp/y;->ڱڱحֱح()V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/kakao/sdk/friend/core/R$string;->min_pickable_count_message:I

    check-cast p1, Lcom/kakao/sdk/friend/core/j/c;

    .line 49
    iget p1, p1, Lcom/kakao/sdk/friend/core/j/c;->a:I

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {}, Lcom/liapp/y;->ڱڱحֱح()V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_1
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/d;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->titleBar:Lcom/kakao/sdk/friend/core/e/n;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x8

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->searchBar:Lcom/kakao/sdk/friend/core/l/W;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_2
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 79
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 89
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    if-eqz v0, :cond_5

    .line 99
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    if-nez p1, :cond_5

    .line 109
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->tabViewModel:Lcom/kakao/sdk/friend/core/m/k;

    if-eqz p0, :cond_7

    .line 119
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/m/k;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lcom/kakao/sdk/friend/core/j/d;->a:Lcom/kakao/sdk/friend/core/j/d;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 129
    :cond_5
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->_binding:Lcom/kakao/sdk/friend/core/e/e;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/e/e;->b:Lcom/kakao/sdk/friend/core/view/EmptyView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    instance-of p1, p1, Lcom/kakao/sdk/friend/core/j/a;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/kakao/sdk/friend/core/R$string;->unexpected_error_message:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {}, Lcom/liapp/y;->ڱڱحֱح()V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_3
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final access$handleEvent(Lcom/kakao/sdk/friend/core/l/S;Lcom/kakao/sdk/friend/core/j/p;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/o;

    const-string v1, "event"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 29
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->friendListAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/b/d;

    .line 39
    check-cast p1, Lcom/kakao/sdk/friend/core/j/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-boolean v3, p1, Lcom/kakao/sdk/friend/core/j/o;->c:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 69
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v6, v6, Lcom/kakao/sdk/friend/core/i/b;

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 79
    :cond_2
    iget-boolean v3, p1, Lcom/kakao/sdk/friend/core/j/o;->d:Z

    if-eqz v3, :cond_4

    .line 89
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/kakao/sdk/friend/core/i/i;

    if-eqz v3, :cond_3

    .line 99
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/b/d;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/b/d;->a()V

    .line 119
    :cond_4
    :goto_2
    iget-object v3, p1, Lcom/kakao/sdk/friend/core/j/o;->a:Ljava/util/List;

    .line 129
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_3

    .line 139
    :cond_5
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/b/g;

    if-eqz p0, :cond_15

    .line 149
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/j/o;->b:Lcom/kakao/sdk/friend/core/i/e;

    if-nez p1, :cond_6

    goto/16 :goto_9

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p1, v4, :cond_15

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto/16 :goto_9

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 199
    :goto_4
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/b/g;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_15

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto/16 :goto_9

    .line 209
    :cond_9
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/n;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/kakao/sdk/friend/core/j/n;

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/S;->friendListAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/b/d;

    .line 239
    invoke-virtual {v3, p1}, Lcom/kakao/sdk/friend/core/b/d;->a(Lcom/kakao/sdk/friend/core/j/p;)V

    .line 249
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/b/g;

    if-eqz p0, :cond_15

    .line 259
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/j/n;->a:Ljava/util/List;

    .line 279
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/b/g;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_15

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto/16 :goto_9

    .line 289
    :cond_a
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/g;

    if-eqz v0, :cond_b

    .line 299
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->friendListAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/b/d;

    .line 309
    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/b/d;->a(Lcom/kakao/sdk/friend/core/j/p;)V

    .line 319
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/b/g;

    if-eqz p0, :cond_15

    .line 329
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/b/g;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_9

    .line 339
    :cond_b
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/k;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/kakao/sdk/friend/core/j/k;

    .line 349
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/j/k;->a:Lcom/kakao/sdk/friend/core/j/q;

    .line 359
    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/S;->friendsRv:Lcom/kakao/sdk/friend/core/e/g;

    if-eqz v3, :cond_d

    const-string v4, "<this>"

    .line 369
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "status"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/kakao/sdk/friend/core/e/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    sget-object v2, Lcom/kakao/sdk/friend/core/j/q;->a:Lcom/kakao/sdk/friend/core/j/q;

    if-ne v0, v2, :cond_c

    iget-object v0, v3, Lcom/kakao/sdk/friend/core/e/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v3, Lcom/kakao/sdk/friend/core/e/g;->c:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->getOnScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_5

    :cond_c
    sget-object v2, Lcom/kakao/sdk/friend/core/j/q;->b:Lcom/kakao/sdk/friend/core/j/q;

    if-ne v0, v2, :cond_d

    iget-object v0, v3, Lcom/kakao/sdk/friend/core/e/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v3, Lcom/kakao/sdk/friend/core/e/g;->c:Lcom/kakao/sdk/friend/core/view/SideIndexView;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/view/SideIndexView;->getOnScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 379
    :cond_d
    :goto_5
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->friendListAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/b/d;

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/j/k;->b:Ljava/util/List;

    .line 419
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_6

    .line 429
    :cond_e
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/i;

    if-eqz v0, :cond_11

    .line 439
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_7

    :cond_f
    const/4 p1, 0x0

    :goto_7
    if-nez p1, :cond_10

    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v0, "FriendPickerFragment not attached to an activity."

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 449
    :cond_10
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/m/i;

    .line 459
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 469
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 479
    iget p0, p0, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 489
    check-cast p1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {p1, p0}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V

    goto :goto_9

    .line 499
    :cond_11
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/m;

    if-eqz v0, :cond_14

    .line 509
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->friendListAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/b/d;

    .line 519
    check-cast p1, Lcom/kakao/sdk/friend/core/j/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iget-object v1, p1, Lcom/kakao/sdk/friend/core/j/m;->a:Ljava/util/List;

    .line 549
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_8

    .line 559
    :cond_12
    iget-boolean v0, p1, Lcom/kakao/sdk/friend/core/j/m;->c:Z

    if-nez v0, :cond_15

    .line 569
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/m/i;

    .line 579
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/m/i;->c:Lcom/kakao/sdk/friend/core/listener/CustomFavoriteCallback;

    if-eqz p0, :cond_15

    .line 589
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/j/m;->b:Lcom/kakao/sdk/friend/core/i/e;

    .line 599
    iget-boolean v0, p1, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    if-eqz v0, :cond_13

    .line 609
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 619
    invoke-interface {p0, p1}, Lcom/kakao/sdk/friend/core/listener/CustomFavoriteCallback;->select(Ljava/lang/String;)V

    goto :goto_9

    .line 629
    :cond_13
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 639
    invoke-interface {p0, p1}, Lcom/kakao/sdk/friend/core/listener/CustomFavoriteCallback;->deselect(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/j/h;

    if-eqz v0, :cond_15

    .line 649
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/m/i;

    .line 659
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/m/i;->e:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_15

    .line 669
    check-cast p1, Lcom/kakao/sdk/friend/core/j/h;

    .line 679
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/j/h;->a:Lcom/kakao/sdk/friend/core/model/SelectedUsers;

    .line 689
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_9
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final access$sendResult(Lcom/kakao/sdk/friend/core/l/S;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    .line 29
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/m/i;

    .line 39
    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/i;->d()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getSettings()Lcom/kakao/sdk/friend/core/i/o;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->settings$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/i/o;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 19
    sget p3, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_fragment_friend_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    sget p2, Lcom/kakao/sdk/friend/core/R$id;->empty_friend_view:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/kakao/sdk/friend/core/view/EmptyView;

    const-string v0, "Missing required view with ID: "

    if-eqz p3, :cond_1

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->error_retry_view:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    sget p2, Lcom/kakao/sdk/friend/core/R$id;->error_layout:I

    invoke-static {v1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->error_message:I

    invoke-static {v1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    sget p2, Lcom/kakao/sdk/friend/core/R$id;->refresh_button:I

    invoke-static {v1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    sget p2, Lcom/kakao/sdk/friend/core/R$id;->main_layout:I

    invoke-static {p1, p2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    new-instance p2, Lcom/kakao/sdk/friend/core/e/e;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p2, p1, p3, v1}, Lcom/kakao/sdk/friend/core/e/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/kakao/sdk/friend/core/view/EmptyView;Landroid/widget/LinearLayout;)V

    .line 59
    iput-object p2, p0, Lcom/kakao/sdk/friend/core/l/S;->_binding:Lcom/kakao/sdk/friend/core/e/e;

    .line 69
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "binding.root"

    .line 79
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 89
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .array-data 1
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 39
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 49
    iget v0, v0, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 59
    check-cast v1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v1, v0}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V

    .line 69
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->c:Lcom/kakao/sdk/friend/core/listener/CustomFavoriteCallback;

    .line 39
    iput-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->d:Lcom/kakao/sdk/friend/core/listener/SelectedUuidsCallback;

    iput-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->e:Lkotlin/jvm/functions/Function1;

    .line 49
    iput-object v1, p0, Lcom/kakao/sdk/friend/core/l/S;->_binding:Lcom/kakao/sdk/friend/core/e/e;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 19
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    .line 39
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/m/i;

    .line 49
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 59
    sget-object v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 79
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 89
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    const-string v4, "layoutInflater"

    const-string v5, "binding.mainLayout"

    if-eqz v3, :cond_1

    .line 99
    iget-boolean v0, v0, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 119
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 129
    sget-object v3, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    if-eq v0, v3, :cond_3

    .line 139
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->_binding:Lcom/kakao/sdk/friend/core/e/e;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/e;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v6, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kakao/sdk/friend/core/m/i;

    .line 169
    iget-object v6, v6, Lcom/kakao/sdk/friend/core/m/i;->l:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 179
    sget v6, Lcom/kakao/sdk/friend/core/R$string;->select_friend:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.select_friend)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    xor-int/lit8 v7, p1, 0x1

    .line 189
    invoke-static {v0, v3, v6, v7, v2}, Lcom/kakao/sdk/friend/core/n/f;->a(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Ljava/lang/String;ZZ)Lcom/kakao/sdk/friend/core/e/n;

    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->titleBar:Lcom/kakao/sdk/friend/core/e/n;

    :cond_3
    :goto_1
    const-string v0, "<this>"

    if-nez p1, :cond_5

    .line 209
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 219
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    if-eqz p1, :cond_5

    .line 229
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->_binding:Lcom/kakao/sdk/friend/core/e/e;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 239
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/e;->c:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget v6, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_picked_friends_view:I

    invoke-virtual {v3, v6, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 269
    sget v6, Lcom/kakao/sdk/friend/core/R$id;->picked_friends_rv:I

    invoke-static {v3, v6}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v7, :cond_4

    new-instance v6, Lcom/kakao/sdk/friend/core/e/m;

    check-cast v3, Lcom/kakao/sdk/friend/core/view/NestedScrollableHost;

    invoke-direct {v6, v3, v7}, Lcom/kakao/sdk/friend/core/e/m;-><init>(Lcom/kakao/sdk/friend/core/view/NestedScrollableHost;Landroidx/recyclerview/widget/RecyclerView;)V

    const-string v7, "inflate(layoutInflater, this, false)"

    .line 279
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    iput-object v6, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsRv:Lcom/kakao/sdk/friend/core/e/m;

    goto :goto_2

    .line 299
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 309
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 319
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    if-eqz p1, :cond_6

    .line 329
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->_binding:Lcom/kakao/sdk/friend/core/e/e;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 339
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/e;->c:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/kakao/sdk/friend/core/R$string;->search_bar_hint:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "getString(R.string.search_bar_hint)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "placeHolder"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/kakao/sdk/friend/core/l/W;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/kakao/sdk/friend/core/l/W;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Lcom/kakao/sdk/friend/core/l/W;->setPlaceholderText(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 359
    iput-object v6, p0, Lcom/kakao/sdk/friend/core/l/S;->searchBar:Lcom/kakao/sdk/friend/core/l/W;

    .line 369
    :cond_6
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->_binding:Lcom/kakao/sdk/friend/core/e/e;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 379
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/e;->c:Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object v4, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakao/sdk/friend/core/m/i;

    .line 399
    iget-object v5, v4, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    .line 409
    invoke-virtual {v5}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getEnableIndex()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v4, v4, Lcom/kakao/sdk/friend/core/m/i;->t:Z

    if-nez v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v2

    .line 419
    :goto_3
    invoke-static {p1, v3, v4}, Lcom/kakao/sdk/friend/core/n/a;->a(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Z)Lcom/kakao/sdk/friend/core/e/g;

    move-result-object p1

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->friendsRv:Lcom/kakao/sdk/friend/core/e/g;

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->titleBar:Lcom/kakao/sdk/friend/core/e/n;

    if-eqz p1, :cond_8

    .line 429
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/m/i;

    .line 439
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 449
    iget-boolean p2, p2, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    .line 459
    invoke-static {p1, p2}, Lcom/kakao/sdk/friend/core/n/f;->a(Lcom/kakao/sdk/friend/core/e/n;Z)V

    :cond_8
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->friendsRv:Lcom/kakao/sdk/friend/core/e/g;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_a

    .line 469
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    sget p2, Lcom/kakao/sdk/friend/core/k/p;->c:I

    if-ne p2, v1, :cond_9

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/kakao/sdk/friend/core/R$dimen;->popup_friends_list_padding_bottom:I

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/kakao/sdk/friend/core/R$dimen;->popup_friends_list_padding_bottom_landscape:I

    :goto_4
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, v2, v2, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 499
    :cond_a
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 509
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 519
    iget-object p2, p1, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    .line 529
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    if-nez p1, :cond_10

    .line 539
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/kakao/sdk/friend/core/m/l;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/l/S;->getSettings()Lcom/kakao/sdk/friend/core/i/o;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-direct {v3, v4}, Lcom/kakao/sdk/friend/core/m/l;-><init>(Lcom/kakao/sdk/friend/core/i/o;)V

    invoke-direct {p2, p1, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/kakao/sdk/friend/core/m/k;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/k;

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->tabViewModel:Lcom/kakao/sdk/friend/core/m/k;

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "settings is not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v3, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p1, ""

    :cond_c
    invoke-direct {p2, v3, p1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 559
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->g:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_d

    .line 569
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key.exception"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 579
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    :cond_e
    move-object p1, v1

    :goto_5
    if-nez p1, :cond_f

    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string p2, "FriendPickerFragment not attached to an activity."

    invoke-virtual {p1, p2}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 589
    :cond_f
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 599
    iget-object p2, p1, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 609
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 619
    iget p1, p1, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 629
    check-cast p2, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {p2, p1}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V

    .line 639
    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 649
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "requireContext()"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/kakao/sdk/friend/core/m/i;->a(Landroid/content/Context;)V

    .line 659
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsRv:Lcom/kakao/sdk/friend/core/e/m;

    if-eqz p1, :cond_11

    .line 669
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/l/S;->pickedFriendsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/b/g;

    .line 679
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 689
    :cond_11
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->friendsRv:Lcom/kakao/sdk/friend/core/e/g;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_14

    .line 699
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/l/S;->friendListAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/b/d;

    .line 709
    new-instance v3, Lcom/kakao/sdk/friend/core/l/z;

    invoke-direct {v3, p0}, Lcom/kakao/sdk/friend/core/l/z;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    .line 719
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adapter"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onScrollStateChanged"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    instance-of v4, p2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v4, :cond_12

    move-object v1, p2

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    :cond_12
    if-nez v1, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :goto_7
    new-instance p2, Lcom/kakao/sdk/friend/core/n/b;

    invoke-direct {p2, v3}, Lcom/kakao/sdk/friend/core/n/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 729
    :cond_14
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->titleBar:Lcom/kakao/sdk/friend/core/e/n;

    if-eqz p1, :cond_15

    new-instance p2, Lcom/kakao/sdk/friend/core/l/A;

    invoke-direct {p2, p0}, Lcom/kakao/sdk/friend/core/l/A;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    .line 739
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    const-string v3, "doneBtn"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/kakao/sdk/friend/core/l/U;->a(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    .line 749
    new-instance p2, Lcom/kakao/sdk/friend/core/l/B;

    invoke-direct {p2, p0}, Lcom/kakao/sdk/friend/core/l/B;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    .line 759
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/n;->b:Landroid/widget/ImageButton;

    const-string v0, "backBtn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/kakao/sdk/friend/core/l/U;->a(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    .line 769
    :cond_15
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->searchBar:Lcom/kakao/sdk/friend/core/l/W;

    if-eqz p1, :cond_16

    new-instance p2, Lcom/kakao/sdk/friend/core/l/C;

    .line 779
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 789
    invoke-direct {p2, v0}, Lcom/kakao/sdk/friend/core/l/C;-><init>(Lcom/kakao/sdk/friend/core/m/i;)V

    invoke-virtual {p1, p2}, Lcom/kakao/sdk/friend/core/l/W;->setSearchAction(Lkotlin/jvm/functions/Function2;)V

    .line 799
    :cond_16
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 809
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    .line 819
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/kakao/sdk/friend/core/l/D;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/D;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    new-instance v1, Lcom/kakao/sdk/friend/core/l/O;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/l/O;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Lcom/kakao/sdk/friend/core/k/v;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 829
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 839
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->r:Landroidx/lifecycle/MutableLiveData;

    .line 849
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/kakao/sdk/friend/core/l/E;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/E;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    new-instance v1, Lcom/kakao/sdk/friend/core/l/O;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/l/O;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 859
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 869
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    .line 879
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/kakao/sdk/friend/core/l/F;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/F;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    new-instance v1, Lcom/kakao/sdk/friend/core/l/O;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/l/O;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 889
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/i;

    .line 899
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    .line 909
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/kakao/sdk/friend/core/l/H;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/H;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    new-instance v1, Lcom/kakao/sdk/friend/core/l/O;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/l/O;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/S;->tabViewModel:Lcom/kakao/sdk/friend/core/m/k;

    if-eqz p1, :cond_17

    .line 919
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->g:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_17

    .line 929
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/kakao/sdk/friend/core/l/J;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/J;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    new-instance v1, Lcom/kakao/sdk/friend/core/l/O;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/l/O;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_17
    return-void

    .array-data 1
    .end array-data
.end method

.method public final result(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    new-instance v2, Lcom/kakao/sdk/friend/core/l/N;

    invoke-direct {v2, p1}, Lcom/kakao/sdk/friend/core/l/N;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/m/i;->f()Lcom/kakao/sdk/friend/core/j/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, v1, Lcom/kakao/sdk/friend/core/m/i;->r:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/kakao/sdk/friend/core/m/d;

    invoke-direct {p1, v1, v2}, Lcom/kakao/sdk/friend/core/m/d;-><init>(Lcom/kakao/sdk/friend/core/m/i;Lcom/kakao/sdk/friend/core/l/N;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/m/e;

    invoke-direct {v0, v1}, Lcom/kakao/sdk/friend/core/m/e;-><init>(Lcom/kakao/sdk/friend/core/m/i;)V

    invoke-virtual {v1, p1, v0}, Lcom/kakao/sdk/friend/core/m/i;->a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final setCustomFavoriteCallback(Lcom/kakao/sdk/friend/core/listener/CustomFavoriteCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    iput-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->c:Lcom/kakao/sdk/friend/core/listener/CustomFavoriteCallback;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setSelectedUserCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    iput-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->e:Lkotlin/jvm/functions/Function1;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setSelectedUuidsCallback(Lcom/kakao/sdk/friend/core/listener/SelectedUuidsCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    iput-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->d:Lcom/kakao/sdk/friend/core/listener/SelectedUuidsCallback;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final updateCustomFavoriteUser(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/S;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method
