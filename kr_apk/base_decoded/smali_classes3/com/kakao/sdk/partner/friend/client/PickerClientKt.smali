.class public final Lcom/kakao/sdk/partner/friend/client/PickerClientKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001am\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062Q\u0010\u0007\u001aM\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\u0008\u001am\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122Q\u0010\u0007\u001aM\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\u0008\u001am\u0010\u0013\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122Q\u0010\u0007\u001aM\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\u0008\u001aV\u0010\u0014\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152:\u0010\u0007\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\u0016\u001aV\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152:\u0010\u0007\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\u0016\u001aV\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152:\u0010\u0007\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\u0016\u001aV\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00152:\u0010\u0007\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\u0016\u001am\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062Q\u0010\u0007\u001aM\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\u0008\u001aS\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00010 2!\u0010!\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00010\"H\u0002\u00a8\u0006#"
    }
    d2 = {
        "select",
        "",
        "Lcom/kakao/sdk/friend/core/PickerClient;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;",
        "callback",
        "Lkotlin/Function3;",
        "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
        "Lkotlin/ParameterName;",
        "name",
        "selectedUsers",
        "Lcom/kakao/sdk/friend/core/model/SelectedChat;",
        "selectedChat",
        "",
        "error",
        "selectChat",
        "Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;",
        "selectChatPopup",
        "selectFriend",
        "Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;",
        "Lkotlin/Function2;",
        "selectFriendPopup",
        "selectFriends",
        "selectFriendsPopup",
        "selectPopup",
        "updateScopes",
        "scopes",
        "",
        "",
        "onSuccess",
        "Lkotlin/Function0;",
        "onFailure",
        "Lkotlin/Function1;",
        "partner-friend_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final select(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedChat;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friends"

    const-string v1, "talk_chats"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kakao/sdk/partner/friend/a/a;

    invoke-direct {v1, p1, p2, p3}, Lcom/kakao/sdk/partner/friend/a/a;-><init>(Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;Lkotlin/jvm/functions/Function3;)V

    new-instance p2, Lcom/kakao/sdk/partner/friend/a/b;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/partner/friend/a/b;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-static {p0, p1, v0, v1, p2}, Lcom/kakao/sdk/partner/friend/client/PickerClientKt;->updateScopes(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final selectChat(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedChat;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "params"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/kakao/sdk/friend/core/PickerManager;

    sget-object v0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {v0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ApiFactory.kapiWithOAuth\u2026te(FriendApi::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v0}, Lcom/kakao/sdk/network/ApiFactory;->getKapiNoLog()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ApiFactory.kapiNoLog.cre\u2026UserScopeApi::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-direct {p0, v1, v0}, Lcom/kakao/sdk/friend/core/PickerManager;-><init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    sget-object v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->FULL:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-static {p2}, Lcom/kakao/sdk/partner/friend/b/a;->a(Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/kakao/sdk/friend/core/PickerManager;->startActivityForChat(Landroid/content/Context;Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lkotlin/jvm/functions/Function3;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final selectChatPopup(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedChat;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "params"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/kakao/sdk/friend/core/PickerManager;

    sget-object v0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {v0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ApiFactory.kapiWithOAuth\u2026te(FriendApi::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v0}, Lcom/kakao/sdk/network/ApiFactory;->getKapiNoLog()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ApiFactory.kapiNoLog.cre\u2026UserScopeApi::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-direct {p0, v1, v0}, Lcom/kakao/sdk/friend/core/PickerManager;-><init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    sget-object v0, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-static {p2}, Lcom/kakao/sdk/partner/friend/b/a;->a(Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/kakao/sdk/friend/core/PickerManager;->startActivityForChat(Landroid/content/Context;Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lkotlin/jvm/functions/Function3;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final selectFriend(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
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

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "params"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/PickerManager;

    sget-object p0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ApiFactory.kapiWithOAuth\u2026te(FriendApi::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {p0}, Lcom/kakao/sdk/network/ApiFactory;->getKapiNoLog()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v2, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-virtual {p0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "ApiFactory.kapiNoLog.cre\u2026UserScopeApi::class.java)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-direct {v0, v1, p0}, Lcom/kakao/sdk/friend/core/PickerManager;-><init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    sget-object v3, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->FULL:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-static {p2}, Lcom/kakao/sdk/partner/friend/b/a;->a(Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p1

    move-object v7, p3

    invoke-static/range {v0 .. v9}, Lcom/kakao/sdk/friend/core/PickerManager;->startActivityForFriend$default(Lcom/kakao/sdk/friend/core/PickerManager;Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final selectFriendPopup(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
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

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "params"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/PickerManager;

    sget-object p0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ApiFactory.kapiWithOAuth\u2026te(FriendApi::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {p0}, Lcom/kakao/sdk/network/ApiFactory;->getKapiNoLog()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v2, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-virtual {p0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "ApiFactory.kapiNoLog.cre\u2026UserScopeApi::class.java)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-direct {v0, v1, p0}, Lcom/kakao/sdk/friend/core/PickerManager;-><init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    sget-object v3, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-static {p2}, Lcom/kakao/sdk/partner/friend/b/a;->a(Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    move-result-object v4

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p1

    move-object v7, p3

    invoke-static/range {v0 .. v9}, Lcom/kakao/sdk/friend/core/PickerManager;->startActivityForFriend$default(Lcom/kakao/sdk/friend/core/PickerManager;Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final selectFriends(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
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

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "params"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/PickerManager;

    sget-object p0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ApiFactory.kapiWithOAuth\u2026te(FriendApi::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {p0}, Lcom/kakao/sdk/network/ApiFactory;->getKapiNoLog()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v2, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-virtual {p0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "ApiFactory.kapiNoLog.cre\u2026UserScopeApi::class.java)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-direct {v0, v1, p0}, Lcom/kakao/sdk/friend/core/PickerManager;-><init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    sget-object v3, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->FULL:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-static {p2}, Lcom/kakao/sdk/partner/friend/b/a;->a(Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p1

    move-object v7, p3

    invoke-static/range {v0 .. v9}, Lcom/kakao/sdk/friend/core/PickerManager;->startActivityForFriend$default(Lcom/kakao/sdk/friend/core/PickerManager;Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final selectFriendsPopup(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
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

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "params"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/PickerManager;

    sget-object p0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object v1

    const-class v2, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ApiFactory.kapiWithOAuth\u2026te(FriendApi::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {p0}, Lcom/kakao/sdk/network/ApiFactory;->getKapiNoLog()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v2, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-virtual {p0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "ApiFactory.kapiNoLog.cre\u2026UserScopeApi::class.java)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-direct {v0, v1, p0}, Lcom/kakao/sdk/friend/core/PickerManager;-><init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    sget-object v3, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->POPUP:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-static {p2}, Lcom/kakao/sdk/partner/friend/b/a;->a(Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p1

    move-object v7, p3

    invoke-static/range {v0 .. v9}, Lcom/kakao/sdk/friend/core/PickerManager;->startActivityForFriend$default(Lcom/kakao/sdk/friend/core/PickerManager;Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final selectPopup(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;Lkotlin/jvm/functions/Function3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedChat;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friends"

    const-string v1, "talk_chats"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kakao/sdk/partner/friend/a/c;

    invoke-direct {v1, p1, p2, p3}, Lcom/kakao/sdk/partner/friend/a/c;-><init>(Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;Lkotlin/jvm/functions/Function3;)V

    new-instance p2, Lcom/kakao/sdk/partner/friend/a/d;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/partner/friend/a/d;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-static {p0, p1, v0, v1, p2}, Lcom/kakao/sdk/partner/friend/client/PickerClientKt;->updateScopes(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final updateScopes(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {p0}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object p0

    new-instance v0, Lcom/kakao/sdk/partner/friend/a/f;

    invoke-direct {v0, p4, p3, p1}, Lcom/kakao/sdk/partner/friend/a/f;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V

    invoke-virtual {p0, p2, v0}, Lcom/kakao/sdk/user/UserApiClient;->scopes(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
