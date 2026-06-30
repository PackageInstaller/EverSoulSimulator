.class public final Lcom/kakao/sdk/friend/core/PickerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0087\u0001\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132:\u0010\u001d\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u001a\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c0\u0015\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJx\u0010$\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020 2Q\u0010\u001d\u001aM\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\"\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(#\u0012\u0015\u0012\u0013\u0018\u00010\u001a\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c0!\u00a2\u0006\u0004\u0008$\u0010%Jx\u0010(\u001a\u00020\u001c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020&2Q\u0010\u001d\u001aM\u0012\u0015\u0012\u0013\u0018\u00010\u0016\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\"\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(#\u0012\u0015\u0012\u0013\u0018\u00010\u001a\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u001c0!\u00a2\u0006\u0004\u0008(\u0010)Jg\u0010,\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0010\u0008\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u001c\u0010\u001d\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0004\u0012\u00020\u001c0\u0015\u00a2\u0006\u0004\u0008,\u0010-J]\u00101\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010/\u001a\u00020.2\u0006\u0010\'\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0008\u00100\u001a\u0004\u0018\u00010\n2\u001c\u0010\u001d\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010+\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0004\u0012\u00020\u001c0\u0015\u00a2\u0006\u0004\u00081\u00102R\u0014\u00104\u001a\u0002038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105\u00a8\u00066"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/PickerManager;",
        "",
        "Lcom/kakao/sdk/friend/core/network/FriendApi;",
        "friendApi",
        "Lcom/kakao/sdk/friend/core/network/UserScopeApi;",
        "scopesApi",
        "<init>",
        "(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V",
        "Landroid/content/Context;",
        "context",
        "",
        "isSingle",
        "Lcom/kakao/sdk/friend/core/internal/PickerViewType;",
        "viewType",
        "Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
        "param",
        "",
        "",
        "selectedUuids",
        "Lcom/kakao/sdk/friend/core/model/CustomSection;",
        "customSection",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
        "Lkotlin/ParameterName;",
        "name",
        "selectedUsers",
        "",
        "error",
        "",
        "callback",
        "startActivityForFriend",
        "(Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;)V",
        "Lcom/kakao/sdk/friend/core/internal/InternalChatParams;",
        "Lkotlin/Function3;",
        "Lcom/kakao/sdk/friend/core/model/SelectedChat;",
        "selectedChat",
        "startActivityForChat",
        "(Landroid/content/Context;Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lkotlin/jvm/functions/Function3;)V",
        "Lcom/kakao/sdk/friend/core/internal/InternalTabParams;",
        "params",
        "startActivityForTab",
        "(Landroid/content/Context;Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Lkotlin/jvm/functions/Function3;)V",
        "customUuids",
        "Lcom/kakao/sdk/friend/core/view/PickerFragment;",
        "createEmbedFriendPicker",
        "(Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;ZLjava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V",
        "",
        "chatId",
        "friendsOnly",
        "createEmbedChatMemberPicker",
        "(ZJLcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function2;)V",
        "Lcom/kakao/sdk/friend/core/a/k;",
        "internalPickerManager",
        "Lcom/kakao/sdk/friend/core/a/k;",
        "friend-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final internalPickerManager:Lcom/kakao/sdk/friend/core/a/k;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V
    .locals 4

    const-string v0, "friendApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scopesApi"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/kakao/sdk/friend/core/a/k;

    sget-object v3, Lcom/kakao/sdk/friend/core/a/m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/kakao/sdk/friend/core/a/m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/d/a;

    instance-of v3, v1, Lcom/kakao/sdk/friend/core/d/i;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/d/i;->a(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/kakao/sdk/friend/core/d/i;

    invoke-direct {v3, p1, p2}, Lcom/kakao/sdk/friend/core/d/i;-><init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    invoke-static {v0, v1, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v3

    .line 29
    :goto_0
    check-cast v1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-direct {v2, v1}, Lcom/kakao/sdk/friend/core/a/k;-><init>(Lcom/kakao/sdk/friend/core/d/i;)V

    iput-object v2, p0, Lcom/kakao/sdk/friend/core/PickerManager;->internalPickerManager:Lcom/kakao/sdk/friend/core/a/k;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic createEmbedFriendPicker$default(Lcom/kakao/sdk/friend/core/PickerManager;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;ZLjava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/kakao/sdk/friend/core/PickerManager;->createEmbedFriendPicker(Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;ZLjava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic startActivityForFriend$default(Lcom/kakao/sdk/friend/core/PickerManager;Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/kakao/sdk/friend/core/PickerManager;->startActivityForFriend(Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final createEmbedChatMemberPicker(ZJLcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/friend/core/view/PickerFragment;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p4

    move-object/from16 v8, p7

    const-string v1, "params"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, p0

    iget-object v10, v9, Lcom/kakao/sdk/friend/core/PickerManager;->internalPickerManager:Lcom/kakao/sdk/friend/core/a/k;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "params"

    .line 19
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p4, v1}, Lcom/kakao/sdk/friend/core/a/k;->a(Landroid/os/Parcelable;Z)V
    :try_end_0
    .catch Lcom/kakao/sdk/common/model/ClientError; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x14

    move-object v2, p4

    move v4, p1

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/friend/core/i/m;->a(Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;IZLandroid/os/ResultReceiver;Ljava/util/List;I)Lcom/kakao/sdk/friend/core/i/o;

    move-result-object v0

    iget-object v1, v10, Lcom/kakao/sdk/friend/core/a/k;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 29
    iget v2, v0, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 39
    new-instance v3, Lcom/kakao/sdk/friend/core/a/a;

    invoke-direct {v3, v8, v0}, Lcom/kakao/sdk/friend/core/a/a;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/friend/core/i/o;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "callback"

    .line 49
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/d/c;

    invoke-direct {v0, v3, v1, v2}, Lcom/kakao/sdk/friend/core/d/c;-><init>(Lkotlin/jvm/functions/Function1;Lcom/kakao/sdk/friend/core/d/i;I)V

    .line 59
    iget-object v2, v1, Lcom/kakao/sdk/friend/core/d/i;->h:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/d/i;->a:Lcom/kakao/sdk/friend/core/network/FriendApi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    move-wide v2, p2

    move-object/from16 v4, p6

    invoke-interface {v1, p2, p3, v4}, Lcom/kakao/sdk/friend/core/network/FriendApi;->chatMembers(JLjava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/kakao/sdk/friend/core/d/f;

    invoke-direct {v2, v0}, Lcom/kakao/sdk/friend/core/d/f;-><init>(Lcom/kakao/sdk/friend/core/d/c;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    .line 69
    invoke-interface {v8, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final createEmbedFriendPicker(Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;ZLjava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/CustomSection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/friend/core/view/PickerFragment;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v9, p6

    const-string v1, "params"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, p0

    iget-object v11, v10, Lcom/kakao/sdk/friend/core/PickerManager;->internalPickerManager:Lcom/kakao/sdk/friend/core/a/k;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/kakao/sdk/friend/core/a/k;->a(Landroid/os/Parcelable;Z)V
    :try_end_0
    .catch Lcom/kakao/sdk/common/model/ClientError; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    const/4 v4, 0x0

    const/16 v8, 0x14

    move-object v2, p1

    move v3, p2

    move-object/from16 v5, p4

    move-object v6, p3

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/friend/core/i/m;->a(Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;ZLcom/kakao/sdk/friend/core/k/t;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;I)Lcom/kakao/sdk/friend/core/i/o;

    move-result-object v1

    iget-object v2, v11, Lcom/kakao/sdk/friend/core/a/k;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 29
    iget v3, v1, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 39
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v4

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getCountryCodeFilters()Ljava/util/List;

    move-result-object v0

    new-instance v5, Lcom/kakao/sdk/friend/core/a/b;

    invoke-direct {v5, v9, v1}, Lcom/kakao/sdk/friend/core/a/b;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/friend/core/i/o;)V

    check-cast v2, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/kakao/sdk/friend/core/d/i;->a(ILcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    invoke-interface {v9, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final startActivityForChat(Landroid/content/Context;Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lkotlin/jvm/functions/Function3;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/friend/core/internal/PickerViewType;",
            "Lcom/kakao/sdk/friend/core/internal/InternalChatParams;",
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

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "viewType"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "param"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p0

    iget-object v12, v13, Lcom/kakao/sdk/friend/core/PickerManager;->internalPickerManager:Lcom/kakao/sdk/friend/core/a/k;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "params"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 29
    :try_start_0
    invoke-static {v15, v3}, Lcom/kakao/sdk/friend/core/a/k;->a(Landroid/os/Parcelable;Z)V
    :try_end_0
    .catch Lcom/kakao/sdk/common/model/ClientError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Chat Picker"

    .line 39
    invoke-static {v3, v14}, Lcom/kakao/sdk/friend/core/a/k;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/kakao/sdk/friend/core/k/s;

    move-result-object v10

    .line 49
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toViewSettingParams(Landroid/os/Parcelable;)Lcom/kakao/sdk/friend/core/i/q;

    move-result-object v6

    new-instance v11, Lcom/kakao/sdk/friend/core/i/o;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xea7

    move-object v1, v11

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v20, v11

    move-object/from16 v11, v16

    move-object/from16 v21, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object v15, v14

    move/from16 v14, v19

    invoke-direct/range {v1 .. v14}, Lcom/kakao/sdk/friend/core/i/o;-><init>(IZZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/i/q;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Landroid/os/ResultReceiver;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;I)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getChatFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v1, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->REGULAR:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_1
    move-object/from16 v2, v21

    .line 79
    iget-object v2, v2, Lcom/kakao/sdk/friend/core/a/k;->a:Lcom/kakao/sdk/friend/core/d/a;

    move-object/from16 v3, v20

    .line 89
    iget v4, v3, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 99
    new-instance v5, Lcom/kakao/sdk/friend/core/a/e;

    invoke-direct {v5, v15, v0, v3}, Lcom/kakao/sdk/friend/core/a/e;-><init>(Lkotlin/jvm/functions/Function3;Landroid/content/Context;Lcom/kakao/sdk/friend/core/i/o;)V

    check-cast v2, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v2, v4, v1, v5}, Lcom/kakao/sdk/friend/core/d/i;->a(ILjava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v15, v14

    move-object v1, v0

    const/4 v0, 0x0

    invoke-interface {v15, v0, v0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final startActivityForFriend(Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/kakao/sdk/friend/core/internal/PickerViewType;",
            "Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/CustomSection;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/friend/core/model/SelectedUsers;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewType"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/PickerManager;->internalPickerManager:Lcom/kakao/sdk/friend/core/a/k;

    move v3, p2

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/kakao/sdk/friend/core/a/k;->a(Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final startActivityForTab(Landroid/content/Context;Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Lkotlin/jvm/functions/Function3;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/friend/core/internal/PickerViewType;",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams;",
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

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "viewType"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "params"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "callback"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p0

    iget-object v12, v13, Lcom/kakao/sdk/friend/core/PickerManager;->internalPickerManager:Lcom/kakao/sdk/friend/core/a/k;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 29
    :try_start_0
    invoke-static {v15, v1}, Lcom/kakao/sdk/friend/core/a/k;->a(Landroid/os/Parcelable;Z)V
    :try_end_0
    .catch Lcom/kakao/sdk/common/model/ClientError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Tab Picker"

    .line 39
    invoke-static {v1, v14}, Lcom/kakao/sdk/friend/core/a/k;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/kakao/sdk/friend/core/k/s;

    move-result-object v10

    .line 49
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->INSTANCE:Lcom/kakao/sdk/friend/core/util/ParameterConverter;

    invoke-virtual {v1, v15}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toFriendsParams(Lcom/kakao/sdk/friend/core/internal/InternalTabParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    move-result-object v7

    invoke-virtual {v1, v15}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toChatParams(Lcom/kakao/sdk/friend/core/internal/InternalTabParams;)Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toViewSettingParams(Landroid/os/Parcelable;)Lcom/kakao/sdk/friend/core/i/q;

    move-result-object v6

    new-instance v11, Lcom/kakao/sdk/friend/core/i/o;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xe07

    move-object v1, v11

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    move-object/from16 v20, v11

    move-object/from16 v11, v16

    move-object/from16 v21, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object v15, v14

    move/from16 v14, v19

    invoke-direct/range {v1 .. v14}, Lcom/kakao/sdk/friend/core/i/o;-><init>(IZZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/i/q;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Landroid/os/ResultReceiver;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;I)V

    move-object/from16 v3, v21

    .line 59
    iget-object v7, v3, Lcom/kakao/sdk/friend/core/a/k;->a:Lcom/kakao/sdk/friend/core/d/a;

    move-object/from16 v5, v20

    .line 69
    iget v8, v5, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 79
    invoke-virtual/range {p3 .. p3}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getCountryCodeFilters()Ljava/util/List;

    move-result-object v10

    new-instance v11, Lcom/kakao/sdk/friend/core/a/d;

    move-object v1, v11

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/kakao/sdk/friend/core/a/d;-><init>(Lkotlin/jvm/functions/Function3;Lcom/kakao/sdk/friend/core/a/k;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Lcom/kakao/sdk/friend/core/i/o;Landroid/content/Context;)V

    check-cast v7, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/kakao/sdk/friend/core/d/i;->a(ILcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v15, v14

    move-object v1, v0

    const/4 v0, 0x0

    .line 89
    invoke-interface {v15, v0, v0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
