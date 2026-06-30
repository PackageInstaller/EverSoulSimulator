.class public final Lcom/kakao/sdk/friend/core/m/k;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Landroidx/lifecycle/MutableLiveData;

.field public final f:Landroidx/lifecycle/MutableLiveData;

.field public final g:Landroidx/lifecycle/MutableLiveData;

.field public final h:Landroidx/lifecycle/MutableLiveData;

.field public final i:Landroidx/lifecycle/MutableLiveData;

.field public final j:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/i/o;)V
    .locals 5

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 19
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/kakao/sdk/friend/core/m/k;->b:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/i/o;->d:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 49
    sget-object v2, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/kakao/sdk/friend/core/m/k;->c:Z

    .line 59
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getChatParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;->getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    move-result-object v1

    :cond_2
    sget-object p1, Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;->CHAT_MEMBER:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/kakao/sdk/friend/core/m/k;->d:Z

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/k;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/k;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/k;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/k;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/k;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/k;->j:Landroidx/lifecycle/MutableLiveData;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
