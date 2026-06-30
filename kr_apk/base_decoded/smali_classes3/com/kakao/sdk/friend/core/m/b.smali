.class public final Lcom/kakao/sdk/friend/core/m/b;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/d/a;

.field public final b:Lcom/kakao/sdk/friend/core/i/o;

.field public final c:Landroid/os/ResultReceiver;

.field public final d:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Lcom/kakao/sdk/friend/core/i/a;

.field public final h:Landroidx/lifecycle/MutableLiveData;

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Z

.field public final n:Landroidx/lifecycle/MutableLiveData;

.field public final o:Lcom/kakao/sdk/friend/core/k/v;

.field public final p:Landroidx/lifecycle/MutableLiveData;

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/d/a;Lcom/kakao/sdk/friend/core/i/o;)V
    .locals 4

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/b;->a:Lcom/kakao/sdk/friend/core/d/a;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/b;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 19
    iget-object p1, p2, Lcom/kakao/sdk/friend/core/i/o;->i:Landroid/os/ResultReceiver;

    .line 29
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/b;->c:Landroid/os/ResultReceiver;

    .line 39
    iget-object p1, p2, Lcom/kakao/sdk/friend/core/i/o;->g:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/b;->d:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/m/b;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/m/b;->f:Ljava/util/ArrayList;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/m/b;->h:Landroidx/lifecycle/MutableLiveData;

    .line 59
    iget-object v0, p2, Lcom/kakao/sdk/friend/core/i/o;->d:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 69
    sget-object v1, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/kakao/sdk/friend/core/m/b;->i:Z

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    move-result-object v0

    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;->CHAT_MEMBER:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/kakao/sdk/friend/core/m/b;->j:Z

    .line 79
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 89
    :goto_2
    iput-boolean v2, p0, Lcom/kakao/sdk/friend/core/m/b;->k:Z

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/b;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getEnableSearch()Z

    move-result p1

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/m/b;->m:Z

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/b;->n:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lcom/kakao/sdk/friend/core/k/v;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/k/v;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/b;->o:Lcom/kakao/sdk/friend/core/k/v;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/b;->p:Landroidx/lifecycle/MutableLiveData;

    const-string p1, ""

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/b;->q:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/b;->g:Lcom/kakao/sdk/friend/core/i/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/b;->c:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    new-instance v10, Lcom/kakao/sdk/friend/core/model/SelectedChat;

    .line 29
    iget-wide v4, v0, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 39
    iget-object v6, v0, Lcom/kakao/sdk/friend/core/i/a;->e:Ljava/lang/Integer;

    .line 49
    iget-object v7, v0, Lcom/kakao/sdk/friend/core/i/a;->c:Ljava/lang/String;

    .line 59
    iget-object v8, v0, Lcom/kakao/sdk/friend/core/i/a;->d:Ljava/lang/String;

    .line 69
    iget-object v9, v0, Lcom/kakao/sdk/friend/core/i/a;->g:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    move-object v3, v10

    .line 79
    invoke-direct/range {v3 .. v9}, Lcom/kakao/sdk/friend/core/model/SelectedChat;-><init>(JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;)V

    const-string v0, "key.selected.chat"

    .line 89
    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/b;->o:Lcom/kakao/sdk/friend/core/k/v;

    sget-object v1, Lcom/kakao/sdk/friend/core/j/i;->a:Lcom/kakao/sdk/friend/core/j/i;

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/b;->g:Lcom/kakao/sdk/friend/core/i/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/kakao/sdk/friend/core/i/l;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    const-string v2, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.ChatItem.Chat"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/kakao/sdk/friend/core/i/a;

    const/4 v2, 0x0

    .line 19
    iput-boolean v2, v3, Lcom/kakao/sdk/friend/core/i/a;->h:Z

    .line 29
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/b;->n:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/kakao/sdk/friend/core/j/l;

    invoke-direct {v3, v0}, Lcom/kakao/sdk/friend/core/j/l;-><init>(Lcom/kakao/sdk/friend/core/i/a;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Lcom/kakao/sdk/friend/core/m/b;->g:Lcom/kakao/sdk/friend/core/i/a;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
