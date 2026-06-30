.class final Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;
.super Ljava/lang/Object;
.source "KGKakaoPicker.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGKakaoPicker;->showMultiFriendPicker(Landroid/app/Activity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isPopup:Z

.field final synthetic $pickerRequestParams:Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/app/Activity;",
            "Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$isPopup:Z

    iput-object p2, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$pickerRequestParams:Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;

    iput-object p4, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2699
    iget-boolean v0, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$isPopup:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kakao/sdk/friend/core/PickerClient;->Companion:Lcom/kakao/sdk/friend/core/PickerClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/PickerClient$Companion;->getInstance()Lcom/kakao/sdk/friend/core/PickerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$pickerRequestParams:Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;

    iget-object v3, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3}, Lcom/kakao/sdk/partner/friend/client/PickerClientKt;->selectFriendsPopup(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 2709
    :cond_0
    sget-object v0, Lcom/kakao/sdk/friend/core/PickerClient;->Companion:Lcom/kakao/sdk/friend/core/PickerClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/PickerClient$Companion;->getInstance()Lcom/kakao/sdk/friend/core/PickerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$pickerRequestParams:Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;

    iget-object v3, p0, Lcom/kakaogame/KGKakaoPicker$showMultiFriendPicker$2$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, v3}, Lcom/kakao/sdk/partner/friend/client/PickerClientKt;->selectFriends(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
