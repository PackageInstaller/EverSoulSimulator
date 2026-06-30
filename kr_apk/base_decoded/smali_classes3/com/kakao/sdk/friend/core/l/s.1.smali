.class public final Lcom/kakao/sdk/friend/core/l/s;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public a:Lcom/kakao/sdk/friend/core/e/d;

.field public b:Lcom/kakao/sdk/friend/core/e/n;

.field public c:Lcom/kakao/sdk/friend/core/l/W;

.field public d:Lcom/kakao/sdk/friend/core/e/b;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;

.field public g:Lcom/kakao/sdk/friend/core/m/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/kakao/sdk/friend/core/l/f;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/f;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/s;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/kakao/sdk/friend/core/l/r;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/l/r;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/l/s;)V
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    .line 29
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 39
    iget-boolean v0, v0, Lcom/kakao/sdk/friend/core/m/b;->j:Z

    if-nez v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/m/b;

    .line 59
    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/b;->a()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/m/b;

    .line 79
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/b;->g:Lcom/kakao/sdk/friend/core/i/a;

    if-nez v0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/b;->a:Lcom/kakao/sdk/friend/core/d/a;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/b;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 99
    iget v2, v2, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 109
    iget-wide v3, v0, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 119
    new-instance v0, Lcom/kakao/sdk/friend/core/m/a;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/m/a;-><init>(Lcom/kakao/sdk/friend/core/m/b;)V

    .line 129
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "callback"

    .line 139
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/kakao/sdk/friend/core/d/c;

    invoke-direct {v5, v0, v1, v2}, Lcom/kakao/sdk/friend/core/d/c;-><init>(Lkotlin/jvm/functions/Function1;Lcom/kakao/sdk/friend/core/d/i;I)V

    .line 149
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/d/i;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/d/i;->a:Lcom/kakao/sdk/friend/core/network/FriendApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-interface {v1, v3, v4, p0}, Lcom/kakao/sdk/friend/core/network/FriendApi;->chatMembers(JLjava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p0

    new-instance v0, Lcom/kakao/sdk/friend/core/d/f;

    invoke-direct {v0, v5}, Lcom/kakao/sdk/friend/core/d/f;-><init>(Lcom/kakao/sdk/friend/core/d/c;)V

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Lcom/kakao/sdk/common/model/ClientError;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 169
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/b;->c:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key.exception"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v0, "ChatPickerFragment not attached to an activity."

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/b;

    .line 209
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/m/b;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 219
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/b;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 229
    iget p1, p1, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 239
    check-cast v0, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 19
    sget p3, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_fragment_chat_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    sget p2, Lcom/kakao/sdk/friend/core/R$id;->empty_chat_view:I

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

    new-instance p2, Lcom/kakao/sdk/friend/core/e/d;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p2, p1, p3, v1}, Lcom/kakao/sdk/friend/core/e/d;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/kakao/sdk/friend/core/view/EmptyView;Landroid/widget/LinearLayout;)V

    .line 59
    iput-object p2, p0, Lcom/kakao/sdk/friend/core/l/s;->a:Lcom/kakao/sdk/friend/core/e/d;

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

.method public final onDestroyView()V
    .locals 1

    .line 19
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/l/s;->a:Lcom/kakao/sdk/friend/core/e/d;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    const-string/jumbo v0, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 19
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 29
    iget-boolean v0, v0, Lcom/kakao/sdk/friend/core/m/b;->k:Z

    const-string v2, "layoutInflater"

    const-string v3, "binding.mainLayout"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->a:Lcom/kakao/sdk/friend/core/e/d;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/d;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v6, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kakao/sdk/friend/core/m/b;

    .line 69
    iget-object v6, v6, Lcom/kakao/sdk/friend/core/m/b;->l:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 79
    sget v6, Lcom/kakao/sdk/friend/core/R$string;->select_chat:I

    invoke-virtual {v1, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.select_chat)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v7, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kakao/sdk/friend/core/m/b;

    .line 99
    iget-boolean v7, v7, Lcom/kakao/sdk/friend/core/m/b;->j:Z

    .line 109
    invoke-static {v0, v5, v6, v4, v7}, Lcom/kakao/sdk/friend/core/n/f;->a(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Ljava/lang/String;ZZ)Lcom/kakao/sdk/friend/core/e/n;

    move-result-object v0

    iput-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->b:Lcom/kakao/sdk/friend/core/e/n;

    .line 119
    :cond_1
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 129
    iget-boolean v0, v0, Lcom/kakao/sdk/friend/core/m/b;->m:Z

    const-string v5, "<this>"

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->a:Lcom/kakao/sdk/friend/core/e/d;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/d;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lcom/kakao/sdk/friend/core/R$string;->search_chat_hint:I

    invoke-virtual {v1, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.search_chat_hint)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "placeHolder"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/kakao/sdk/friend/core/l/W;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "context"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/kakao/sdk/friend/core/l/W;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Lcom/kakao/sdk/friend/core/l/W;->setPlaceholderText(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    iput-object v7, v1, Lcom/kakao/sdk/friend/core/l/s;->c:Lcom/kakao/sdk/friend/core/l/W;

    .line 179
    :cond_2
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->a:Lcom/kakao/sdk/friend/core/e/d;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 189
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/d;->c:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget v2, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_chats_list:I

    invoke-virtual {v3, v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 219
    sget v3, Lcom/kakao/sdk/friend/core/R$id;->chats_list:I

    invoke-static {v2, v3}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_12

    new-instance v3, Lcom/kakao/sdk/friend/core/e/b;

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v3, v2, v6}, Lcom/kakao/sdk/friend/core/e/b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    const-string v6, "inflate(layoutInflater, this, false)"

    .line 229
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iput-object v3, v1, Lcom/kakao/sdk/friend/core/l/s;->d:Lcom/kakao/sdk/friend/core/e/b;

    .line 249
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 259
    iget-boolean v0, v0, Lcom/kakao/sdk/friend/core/m/b;->i:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->b:Lcom/kakao/sdk/friend/core/e/n;

    if-eqz v0, :cond_3

    invoke-static {v0, v4}, Lcom/kakao/sdk/friend/core/n/f;->a(Lcom/kakao/sdk/friend/core/e/n;Z)V

    :cond_3
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->d:Lcom/kakao/sdk/friend/core/e/b;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/b;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    .line 279
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget v3, Lcom/kakao/sdk/friend/core/k/p;->c:I

    if-ne v3, v2, :cond_4

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/kakao/sdk/friend/core/R$dimen;->popup_friends_list_padding_bottom:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/kakao/sdk/friend/core/R$dimen;->popup_friends_list_padding_bottom_landscape:I

    :goto_0
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v4, v4, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 309
    :cond_5
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 319
    iget-boolean v0, v0, Lcom/kakao/sdk/friend/core/m/b;->k:Z

    if-eqz v0, :cond_7

    .line 329
    :try_start_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v6, "requireActivity()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v6}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v3, v6}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v3, Lcom/kakao/sdk/friend/core/m/k;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/k;

    iput-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->g:Lcom/kakao/sdk/friend/core/m/k;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v6, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    invoke-direct {v3, v6, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/kakao/sdk/friend/core/l/s;->a(Lcom/kakao/sdk/common/model/ClientError;)V

    .line 339
    :cond_7
    :goto_1
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 349
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/b;->f:Ljava/util/ArrayList;

    .line 359
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_8

    goto/16 :goto_3

    :cond_8
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/b;->f:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/b;->a:Lcom/kakao/sdk/friend/core/d/a;

    iget-object v6, v0, Lcom/kakao/sdk/friend/core/m/b;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 369
    iget v6, v6, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 379
    check-cast v3, Lcom/kakao/sdk/friend/core/d/i;

    .line 389
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/d/i;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 399
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 409
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kakao/sdk/friend/core/network/model/PickerChat;

    .line 419
    new-instance v15, Lcom/kakao/sdk/friend/core/i/a;

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->b()J

    move-result-wide v9

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->d()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->a()Ljava/util/List;

    move-result-object v16

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/network/model/PickerChat;->e()Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    move-result-object v7

    move-object v8, v15

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lcom/kakao/sdk/friend/core/i/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;)V

    .line 429
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/b;->h:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/b;->p:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/kakao/sdk/friend/core/j/d;->a:Lcom/kakao/sdk/friend/core/j/d;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/b;->e:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/b;->h:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 439
    :goto_3
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->d:Lcom/kakao/sdk/friend/core/e/b;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/b;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    .line 449
    iget-object v2, v1, Lcom/kakao/sdk/friend/core/l/s;->e:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakao/sdk/friend/core/b/c;

    .line 459
    new-instance v3, Lcom/kakao/sdk/friend/core/l/g;

    invoke-direct {v3, v1}, Lcom/kakao/sdk/friend/core/l/g;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    .line 469
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "adapter"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onScrollStateChanged"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    instance-of v4, v2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v4, :cond_c

    check-cast v2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_d

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :goto_5
    new-instance v2, Lcom/kakao/sdk/friend/core/n/b;

    invoke-direct {v2, v3}, Lcom/kakao/sdk/friend/core/n/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 479
    :cond_e
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->b:Lcom/kakao/sdk/friend/core/e/n;

    if-eqz v0, :cond_f

    new-instance v2, Lcom/kakao/sdk/friend/core/l/h;

    invoke-direct {v2, v1}, Lcom/kakao/sdk/friend/core/l/h;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    .line 489
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "listener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    const-string v6, "doneBtn"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/kakao/sdk/friend/core/l/U;->a(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    .line 499
    new-instance v2, Lcom/kakao/sdk/friend/core/l/i;

    invoke-direct {v2, v1}, Lcom/kakao/sdk/friend/core/l/i;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    .line 509
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/n;->b:Landroid/widget/ImageButton;

    const-string v3, "backBtn"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/kakao/sdk/friend/core/l/U;->a(Lkotlin/jvm/functions/Function1;Landroid/view/View;)V

    .line 519
    :cond_f
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->c:Lcom/kakao/sdk/friend/core/l/W;

    if-eqz v0, :cond_10

    new-instance v2, Lcom/kakao/sdk/friend/core/l/j;

    invoke-direct {v2, v1}, Lcom/kakao/sdk/friend/core/l/j;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    invoke-virtual {v0, v2}, Lcom/kakao/sdk/friend/core/l/W;->setSearchAction(Lkotlin/jvm/functions/Function2;)V

    .line 529
    :cond_10
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 539
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/b;->h:Landroidx/lifecycle/MutableLiveData;

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/kakao/sdk/friend/core/l/k;

    invoke-direct {v3, v1}, Lcom/kakao/sdk/friend/core/l/k;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    new-instance v4, Lcom/kakao/sdk/friend/core/l/q;

    invoke-direct {v4, v3}, Lcom/kakao/sdk/friend/core/l/q;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 559
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 569
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/b;->n:Landroidx/lifecycle/MutableLiveData;

    .line 579
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/kakao/sdk/friend/core/l/l;

    invoke-direct {v3, v1}, Lcom/kakao/sdk/friend/core/l/l;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    new-instance v4, Lcom/kakao/sdk/friend/core/l/q;

    invoke-direct {v4, v3}, Lcom/kakao/sdk/friend/core/l/q;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 589
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 599
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/b;->o:Lcom/kakao/sdk/friend/core/k/v;

    .line 609
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/kakao/sdk/friend/core/l/m;

    invoke-direct {v3, v1}, Lcom/kakao/sdk/friend/core/l/m;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    new-instance v4, Lcom/kakao/sdk/friend/core/l/q;

    invoke-direct {v4, v3}, Lcom/kakao/sdk/friend/core/l/q;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2, v4}, Lcom/kakao/sdk/friend/core/k/v;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 619
    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 629
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/b;->p:Landroidx/lifecycle/MutableLiveData;

    .line 639
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/kakao/sdk/friend/core/l/n;

    invoke-direct {v3, v1}, Lcom/kakao/sdk/friend/core/l/n;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    new-instance v4, Lcom/kakao/sdk/friend/core/l/q;

    invoke-direct {v4, v3}, Lcom/kakao/sdk/friend/core/l/q;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, v1, Lcom/kakao/sdk/friend/core/l/s;->g:Lcom/kakao/sdk/friend/core/m/k;

    if-eqz v0, :cond_11

    .line 649
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/k;->h:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_11

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/kakao/sdk/friend/core/l/p;

    invoke-direct {v3, v1}, Lcom/kakao/sdk/friend/core/l/p;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    new-instance v4, Lcom/kakao/sdk/friend/core/l/q;

    invoke-direct {v4, v3}, Lcom/kakao/sdk/friend/core/l/q;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_11
    return-void

    .line 669
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    .array-data 1
    .end array-data
.end method
