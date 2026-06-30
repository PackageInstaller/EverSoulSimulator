.class public final Lcom/kakao/sdk/friend/core/m/a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/m/b;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/m/b;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/a;->a:Lcom/kakao/sdk/friend/core/m/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/a;->a:Lcom/kakao/sdk/friend/core/m/b;

    .line 29
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/m/b;->p:Landroidx/lifecycle/MutableLiveData;

    .line 39
    sget-object v2, Lcom/kakao/sdk/friend/core/j/a;->a:Lcom/kakao/sdk/friend/core/j/a;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/a;->a:Lcom/kakao/sdk/friend/core/m/b;

    .line 49
    iget-object v2, v1, Lcom/kakao/sdk/friend/core/m/b;->o:Lcom/kakao/sdk/friend/core/k/v;

    .line 59
    new-instance v3, Lcom/kakao/sdk/friend/core/j/j;

    .line 69
    iget-object v4, v1, Lcom/kakao/sdk/friend/core/m/b;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 79
    iget v7, v4, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 89
    iget-object v5, v4, Lcom/kakao/sdk/friend/core/i/o;->d:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 99
    iget-boolean v15, v1, Lcom/kakao/sdk/friend/core/m/b;->m:Z

    iget-object v4, v1, Lcom/kakao/sdk/friend/core/m/b;->d:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getMaxPickableCount()I

    move-result v22

    iget-object v4, v1, Lcom/kakao/sdk/friend/core/m/b;->d:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getMinPickableCount()I

    move-result v23

    iget-object v4, v1, Lcom/kakao/sdk/friend/core/m/b;->d:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v19

    iget-object v4, v1, Lcom/kakao/sdk/friend/core/m/b;->d:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getDisplayAllProfile()Z

    move-result v20

    new-instance v6, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    move-object v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x103f

    const/16 v25, 0x0

    invoke-direct/range {v8 .. v25}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v1, Lcom/kakao/sdk/friend/core/m/b;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 109
    iget-object v9, v1, Lcom/kakao/sdk/friend/core/i/o;->i:Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    const/16 v11, 0x20

    .line 119
    invoke-static/range {v5 .. v11}, Lcom/kakao/sdk/friend/core/i/m;->a(Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;IZLandroid/os/ResultReceiver;Ljava/util/List;I)Lcom/kakao/sdk/friend/core/i/o;

    move-result-object v1

    .line 129
    invoke-direct {v3, v1}, Lcom/kakao/sdk/friend/core/j/j;-><init>(Lcom/kakao/sdk/friend/core/i/o;)V

    invoke-virtual {v2, v3}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    .line 139
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .array-data 1
    .end array-data
.end method
