.class public final Lcom/kakao/sdk/friend/client/PickerClientKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u001aV\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062:\u0010\u0007\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00010\u0008\u001aV\u0010\u000f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062:\u0010\u0007\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00010\u0008\u001aV\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062:\u0010\u0007\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00010\u0008\u001aV\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062:\u0010\u0007\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u00010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "selectFriend",
        "",
        "Lcom/kakao/sdk/friend/core/PickerClient;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
        "Lkotlin/ParameterName;",
        "name",
        "selectedUsers",
        "",
        "error",
        "selectFriendPopup",
        "selectFriends",
        "selectFriendsPopup",
        "friend_release"
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
.method public static final selectFriend(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;",
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

    sget-object p0, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->INSTANCE:Lcom/kakao/sdk/friend/core/util/ParameterConverter;

    invoke-virtual {p0, p2}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toInternalParams(Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

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

.method public static final selectFriendPopup(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;",
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

    sget-object p0, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->INSTANCE:Lcom/kakao/sdk/friend/core/util/ParameterConverter;

    invoke-virtual {p0, p2}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toInternalParams(Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

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

.method public static final selectFriends(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;",
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

    sget-object p0, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->INSTANCE:Lcom/kakao/sdk/friend/core/util/ParameterConverter;

    invoke-virtual {p0, p2}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toInternalParams(Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

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

.method public static final selectFriendsPopup(Lcom/kakao/sdk/friend/core/PickerClient;Landroid/content/Context;Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/PickerClient;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;",
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

    sget-object p0, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->INSTANCE:Lcom/kakao/sdk/friend/core/util/ParameterConverter;

    invoke-virtual {p0, p2}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toInternalParams(Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

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
