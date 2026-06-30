.class public final Lcom/kakao/sdk/friend/core/m/i;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/List;

.field public B:Lcom/kakao/sdk/friend/core/m/n;

.field public final a:Lcom/kakao/sdk/friend/core/d/a;

.field public final b:Lcom/kakao/sdk/friend/core/i/o;

.field public c:Lcom/kakao/sdk/friend/core/listener/CustomFavoriteCallback;

.field public d:Lcom/kakao/sdk/friend/core/listener/SelectedUuidsCallback;

.field public e:Lkotlin/jvm/functions/Function1;

.field public final f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

.field public final g:Landroid/os/ResultReceiver;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Z

.field public final k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

.field public final l:Ljava/lang/String;

.field public final m:Z

.field public final n:Z

.field public final o:Landroidx/lifecycle/MutableLiveData;

.field public final p:Landroidx/lifecycle/MutableLiveData;

.field public final q:Lcom/kakao/sdk/friend/core/k/v;

.field public final r:Landroidx/lifecycle/MutableLiveData;

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Z

.field public final w:Ljava/util/LinkedHashMap;

.field public x:Ljava/util/Locale;

.field public final y:Ljava/util/List;

.field public z:Lcom/kakao/sdk/friend/core/i/d;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/d/a;Lcom/kakao/sdk/friend/core/i/o;)V
    .locals 4

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 19
    iget-object p1, p2, Lcom/kakao/sdk/friend/core/i/o;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    if-eqz p1, :cond_6

    .line 29
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    .line 39
    iget-object v0, p2, Lcom/kakao/sdk/friend/core/i/o;->i:Landroid/os/ResultReceiver;

    .line 49
    iput-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->g:Landroid/os/ResultReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    .line 59
    iget-boolean v0, p2, Lcom/kakao/sdk/friend/core/i/o;->b:Z

    .line 69
    iput-boolean v0, p0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    .line 79
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/i/o;->d:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 89
    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getEnableSearch()Z

    move-result p2

    iput-boolean p2, p0, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getShowPickedFriend()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    new-instance p2, Lcom/kakao/sdk/friend/core/k/v;

    invoke-direct {p2}, Lcom/kakao/sdk/friend/core/k/v;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->r:Landroidx/lifecycle/MutableLiveData;

    const-string p2, ""

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v2

    sget-object v3, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->CUSTOM:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 p1, 0xa

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, p2

    :cond_3
    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getUuids()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_4
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iput-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->w:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 99
    iget-object p2, p1, Lcom/kakao/sdk/friend/core/i/o;->k:Ljava/util/List;

    .line 109
    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->y:Ljava/util/List;

    .line 119
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/o;->l:Ljava/util/List;

    .line 129
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->A:Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/m/m;->a(Ljava/util/List;)Lcom/kakao/sdk/friend/core/m/n;

    move-result-object p1

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FriendRequestParams is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Lcom/kakao/sdk/friend/core/i/e;ZLjava/util/Map;)Lcom/kakao/sdk/friend/core/model/SelectedUser;
    .locals 10

    .line 939
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/e;->a:Ljava/lang/Long;

    .line 949
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/e;->a:Ljava/lang/Long;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/e;->a:Ljava/lang/Long;

    .line 969
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->d()Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->c()Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    new-instance v9, Lcom/kakao/sdk/friend/core/model/SelectedUser;

    .line 979
    iget-object v5, p0, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 989
    sget-object v6, Lcom/kakao/sdk/friend/core/util/StringUtils;->INSTANCE:Lcom/kakao/sdk/friend/core/util/StringUtils;

    .line 999
    iget-object v7, p0, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    const-string v8, ""

    if-nez v7, :cond_3

    move-object v7, v8

    .line 1009
    :cond_3
    invoke-virtual {v6, v7}, Lcom/kakao/sdk/friend/core/util/StringUtils;->maskNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez p1, :cond_6

    if-eqz v2, :cond_4

    goto :goto_4

    .line 1019
    :cond_4
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v8, v2

    .line 1029
    :goto_3
    invoke-virtual {v6, v8}, Lcom/kakao/sdk/friend/core/util/StringUtils;->maskNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1039
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    :goto_5
    move-object v6, v2

    if-nez p1, :cond_7

    if-eqz v4, :cond_9

    .line 1049
    :cond_7
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 1059
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    .line 1069
    :cond_8
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    goto :goto_7

    :cond_9
    :goto_6
    move-object p1, v1

    :goto_7
    if-eqz p2, :cond_a

    .line 1079
    invoke-virtual {p2}, Lcom/kakao/sdk/friend/core/network/model/PickerUserScope;->a()Ljava/lang/Boolean;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_a
    if-eqz v0, :cond_b

    .line 1089
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/i/e;->f:Ljava/lang/Boolean;

    :cond_b
    move-object v8, v1

    move-object v2, v9

    move-object v4, v5

    move-object v5, v7

    move-object v7, p1

    .line 1099
    invoke-direct/range {v2 .. v8}, Lcom/kakao/sdk/friend/core/model/SelectedUser;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v9

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(Lcom/kakao/sdk/friend/core/m/i;Ljava/util/Map;)V
    .locals 4

    .line 19
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->g:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    const-string v3, "_pickedUserCount.value ?: 0"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "key.selected.totalcount"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "key.selected.friends"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    iget-object p0, p0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 49
    iget p0, p0, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 59
    check-cast p1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {p1, p0}, Lcom/kakao/sdk/friend/core/d/i;->a(I)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v3, v2, Lcom/kakao/sdk/friend/core/i/e;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/kakao/sdk/friend/core/i/e;

    goto :goto_1

    :cond_0
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_1

    .line 899
    iget-object v4, v2, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 909
    :cond_1
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_2
    return v1

    .array-data 1
    .end array-data
.end method

.method public final a(I)Lcom/kakao/sdk/friend/core/i/e;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/i/l;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.FriendItem.User"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/kakao/sdk/friend/core/i/e;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final a(Lcom/kakao/sdk/friend/core/network/model/PickerFriend;)Lcom/kakao/sdk/friend/core/i/e;
    .locals 10

    new-instance v9, Lcom/kakao/sdk/friend/core/i/e;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->g()Ljava/lang/String;

    move-result-object v4

    .line 1119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v5}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v7

    sget-object v8, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->MSG_BLOCKED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v7, v8, :cond_1

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->b()Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v7

    sget-object v8, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->REGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v7, v8, :cond_2

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->h()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v7

    sget-object v8, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->UNREGISTERED:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v7, v8, :cond_3

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->h()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v7

    sget-object v8, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->NOT_FRIEND:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v7, v8, :cond_4

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->k()Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v7

    sget-object v8, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->CUSTOM:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/kakao/sdk/friend/core/m/i;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v8, ""

    :cond_5
    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    :cond_6
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->j()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v0, 0x0

    :cond_8
    move-object v5, v0

    .line 1129
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->d()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->c()Ljava/lang/Boolean;

    move-result-object v7

    const/16 v8, 0x140

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/kakao/sdk/friend/core/i/e;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    return-object v9

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(ILcom/kakao/sdk/friend/core/i/e;Z)Lcom/kakao/sdk/friend/core/j/o;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1319
    :cond_0
    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 1339
    iget-object v0, p2, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 1349
    invoke-virtual {p1, v0}, Lcom/kakao/sdk/friend/core/m/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_2
    :goto_0
    new-instance v0, Lcom/kakao/sdk/friend/core/j/o;

    .line 1359
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 1369
    iget-boolean v1, v1, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    if-nez v1, :cond_4

    .line 1379
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->A:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    invoke-direct {v0, p1, p2, v1, p3}, Lcom/kakao/sdk/friend/core/j/o;-><init>(Ljava/util/List;Lcom/kakao/sdk/friend/core/i/e;ZZ)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 5

    .line 929
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getDisplayAllProfile()Z

    move-result v0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/kakao/sdk/friend/core/m/i;->v:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v3, v4, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/i/e;ZLjava/util/Map;)Lcom/kakao/sdk/friend/core/model/SelectedUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Z)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->z:Lcom/kakao/sdk/friend/core/i/d;

    if-eqz p1, :cond_3

    .line 1209
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/d;->b:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 1219
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/i/e;

    const/4 v2, 0x0

    .line 1229
    iput-boolean v2, v1, Lcom/kakao/sdk/friend/core/i/e;->i:Z

    .line 1239
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 1249
    invoke-virtual {p0, v1}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/m/i;->z:Lcom/kakao/sdk/friend/core/i/d;

    if-eqz p1, :cond_3

    .line 1259
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/d;->b:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 1269
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/i/e;

    const/4 v2, 0x1

    .line 1279
    iput-boolean v2, v1, Lcom/kakao/sdk/friend/core/i/e;->i:Z

    .line 1289
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 1299
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 1309
    invoke-virtual {v2, v1}, Lcom/kakao/sdk/friend/core/m/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 5

    .line 1109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;

    invoke-virtual {p0, v2}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/network/model/PickerFriend;)Lcom/kakao/sdk/friend/core/i/e;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->a()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kakao/sdk/friend/core/m/i;->t:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/kakao/sdk/friend/core/k/l;

    invoke-direct {p1}, Lcom/kakao/sdk/friend/core/k/l;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/i/e;

    .line 69
    iput-boolean v2, v1, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/i;->e()V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kakao/sdk/friend/core/i/i;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 89
    iput v2, v1, Lcom/kakao/sdk/friend/core/m/n;->b:I

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    new-instance v2, Lcom/kakao/sdk/friend/core/j/g;

    invoke-direct {v2, v0}, Lcom/kakao/sdk/friend/core/j/g;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/i;->c()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Landroid/content/Context;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    const-string v4, "currentLocale"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->x:Ljava/util/Locale;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    iput-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->x:Ljava/util/Locale;

    .line 129
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 149
    iget-boolean v4, v2, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    const/16 v5, 0xa

    if-eqz v4, :cond_a

    .line 159
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 169
    iget v2, v2, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 179
    check-cast v1, Lcom/kakao/sdk/friend/core/d/i;

    .line 189
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/d/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->a()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 219
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    iget-object v8, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 229
    iget v8, v8, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 239
    check-cast v4, Lcom/kakao/sdk/friend/core/d/i;

    .line 249
    iget-object v4, v4, Lcom/kakao/sdk/friend/core/d/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 259
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    if-eqz v4, :cond_4

    .line 269
    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;->b()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;

    .line 279
    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->c()Ljava/lang/Boolean;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    move-object/from16 v18, v11

    goto :goto_3

    :cond_1
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_3
    new-instance v10, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->b()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->f()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->e()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->a()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMember;->g()Ljava/lang/Boolean;

    move-result-object v19

    move-object v12, v10

    invoke-direct/range {v12 .. v19}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 289
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v8}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-nez v1, :cond_5

    goto :goto_4

    .line 299
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    sget-object v4, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    if-eq v1, v4, :cond_8

    :cond_7
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    new-instance v4, Lcom/kakao/sdk/friend/core/i/b;

    iget-boolean v8, v0, Lcom/kakao/sdk/friend/core/m/i;->s:Z

    invoke-direct {v4, v8}, Lcom/kakao/sdk/friend/core/i/b;-><init>(Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_15

    :cond_9
    :goto_5
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/kakao/sdk/friend/core/j/d;->a:Lcom/kakao/sdk/friend/core/j/d;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 309
    :cond_a
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->A:Ljava/util/List;

    .line 319
    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getUsingOsFilter()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object v4

    iget-object v8, v0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    iget-object v9, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 329
    iget v9, v9, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 339
    check-cast v8, Lcom/kakao/sdk/friend/core/d/i;

    .line 349
    iget-object v8, v8, Lcom/kakao/sdk/friend/core/d/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 359
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    :cond_b
    if-nez v2, :cond_c

    goto :goto_7

    .line 369
    :cond_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;

    invoke-virtual {v11}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->j()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    move-object v8, v9

    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->i()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_10

    goto :goto_9

    :cond_10
    sget-object v11, Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;->ALL:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    if-eq v4, v11, :cond_11

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "ENGLISH"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "toLowerCase(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v10, 0x1

    :goto_a
    if-eqz v10, :cond_f

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 379
    :cond_12
    invoke-virtual {v0, v2}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    .line 389
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_13
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/kakao/sdk/friend/core/i/e;

    .line 399
    iget-object v11, v11, Lcom/kakao/sdk/friend/core/i/e;->f:Ljava/lang/Boolean;

    .line 409
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 419
    :cond_14
    iget-object v9, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 429
    iget-object v9, v9, Lcom/kakao/sdk/friend/core/i/o;->j:Lcom/kakao/sdk/friend/core/model/CustomSection;

    if-nez v9, :cond_15

    const/4 v2, 0x0

    goto/16 :goto_e

    .line 439
    :cond_15
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/model/CustomSection;->getUuids()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_16
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_17
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;

    invoke-virtual {v15}, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;->j()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    goto :goto_d

    :cond_18
    const/4 v14, 0x0

    :goto_d
    check-cast v14, Lcom/kakao/sdk/friend/core/network/model/PickerFriend;

    if-eqz v14, :cond_16

    invoke-virtual {v0, v14}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/network/model/PickerFriend;)Lcom/kakao/sdk/friend/core/i/e;

    move-result-object v12

    iget-boolean v15, v0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    .line 449
    iget-object v14, v12, Lcom/kakao/sdk/friend/core/i/e;->a:Ljava/lang/Long;

    iget-object v13, v12, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    iget-object v6, v12, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    iget-object v3, v12, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    iget-object v5, v12, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    iget-object v7, v12, Lcom/kakao/sdk/friend/core/i/e;->f:Ljava/lang/Boolean;

    move-object/from16 v24, v2

    iget-boolean v2, v12, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    iget-object v12, v12, Lcom/kakao/sdk/friend/core/i/e;->h:Ljava/lang/Boolean;

    move-object/from16 v25, v11

    const-string/jumbo v11, "uuid"

    .line 459
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/kakao/sdk/friend/core/i/e;

    move-object/from16 v16, v13

    move-object v13, v11

    move/from16 v22, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move/from16 v20, v2

    move-object/from16 v21, v12

    invoke-direct/range {v13 .. v22}, Lcom/kakao/sdk/friend/core/i/e;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;ZLjava/lang/Boolean;Z)V

    .line 469
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v24

    move-object/from16 v11, v25

    const/4 v3, 0x0

    const/16 v5, 0xa

    goto :goto_c

    :cond_19
    new-instance v2, Lcom/kakao/sdk/friend/core/i/d;

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/model/CustomSection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v10}, Lcom/kakao/sdk/friend/core/i/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 479
    :goto_e
    iput-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->z:Lcom/kakao/sdk/friend/core/i/d;

    iget-boolean v2, v0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    sget-object v3, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    if-ne v2, v3, :cond_1c

    .line 489
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/e;

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->z:Lcom/kakao/sdk/friend/core/i/d;

    if-eqz v5, :cond_1a

    .line 499
    iget-object v5, v5, Lcom/kakao/sdk/friend/core/i/d;->b:Ljava/util/List;

    if-eqz v5, :cond_1a

    .line 509
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kakao/sdk/friend/core/i/e;

    .line 519
    iget-object v6, v6, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    iget-object v7, v3, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 529
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 539
    :cond_1c
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->z:Lcom/kakao/sdk/friend/core/i/d;

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->A:Ljava/util/List;

    if-eqz v3, :cond_1e

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_10

    :cond_1d
    const/4 v3, 0x1

    const/16 v23, 0x0

    goto :goto_11

    :cond_1e
    :goto_10
    const/4 v3, 0x1

    const/16 v23, 0x1

    :goto_11
    xor-int/lit8 v5, v23, 0x1

    .line 549
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getShowMyProfile()Z

    move-result v3

    iget-object v6, v0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getShowFavorite()Z

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_21

    if-eqz v2, :cond_1f

    .line 559
    iget-object v7, v2, Lcom/kakao/sdk/friend/core/i/d;->b:Ljava/util/List;

    goto :goto_12

    :cond_1f
    const/4 v7, 0x0

    :goto_12
    if-eqz v7, :cond_20

    .line 569
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_21

    :cond_20
    const/4 v7, 0x1

    goto :goto_13

    :cond_21
    const/4 v7, 0x0

    :goto_13
    iget-boolean v9, v0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    if-nez v9, :cond_22

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    if-eqz v9, :cond_22

    iget-object v9, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    new-instance v10, Lcom/kakao/sdk/friend/core/i/b;

    iget-boolean v11, v0, Lcom/kakao/sdk/friend/core/m/i;->s:Z

    invoke-direct {v10, v11}, Lcom/kakao/sdk/friend/core/i/b;-><init>(Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz v3, :cond_25

    .line 579
    iget-object v9, v0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    iget-object v10, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 589
    iget v10, v10, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 599
    check-cast v9, Lcom/kakao/sdk/friend/core/d/i;

    .line 609
    iget-object v9, v9, Lcom/kakao/sdk/friend/core/d/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 619
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/kakao/sdk/friend/core/network/model/Me;

    if-eqz v9, :cond_23

    .line 629
    new-instance v19, Lcom/kakao/sdk/friend/core/i/e;

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/Me;->a()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/Me;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/Me;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/network/model/Me;->c()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1f0

    move-object/from16 v10, v19

    invoke-direct/range {v10 .. v18}, Lcom/kakao/sdk/friend/core/i/e;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    move-object/from16 v9, v19

    goto :goto_14

    :cond_23
    const/4 v9, 0x0

    :goto_14
    if-eqz v9, :cond_24

    .line 639
    iget-object v10, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    new-instance v11, Lcom/kakao/sdk/friend/core/i/k;

    sget v12, Lcom/kakao/sdk/friend/core/R$string;->my_profile:I

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "context.getString(R.string.my_profile)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/kakao/sdk/friend/core/i/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    if-nez v7, :cond_25

    iget-object v9, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    sget-object v10, Lcom/kakao/sdk/friend/core/i/i;->a:Lcom/kakao/sdk/friend/core/i/i;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    if-eqz v7, :cond_26

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    if-nez v3, :cond_2a

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/kakao/sdk/friend/core/j/d;->a:Lcom/kakao/sdk/friend/core/j/d;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_26
    if-eqz v2, :cond_27

    .line 649
    iget-object v3, v2, Lcom/kakao/sdk/friend/core/i/d;->b:Ljava/util/List;

    if-eqz v3, :cond_27

    .line 659
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    const/4 v9, 0x1

    xor-int/2addr v7, v9

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    new-instance v10, Lcom/kakao/sdk/friend/core/i/k;

    .line 669
    iget-object v2, v2, Lcom/kakao/sdk/friend/core/i/d;->a:Ljava/lang/String;

    .line 679
    invoke-direct {v10, v2}, Lcom/kakao/sdk/friend/core/i/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v9

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    sget-object v3, Lcom/kakao/sdk/friend/core/i/i;->a:Lcom/kakao/sdk/friend/core/i/i;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    if-eqz v6, :cond_28

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_28

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    new-instance v3, Lcom/kakao/sdk/friend/core/i/k;

    sget v6, Lcom/kakao/sdk/friend/core/R$string;->favorite:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.favorite)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lcom/kakao/sdk/friend/core/i/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    sget-object v3, Lcom/kakao/sdk/friend/core/i/i;->a:Lcom/kakao/sdk/friend/core/i/i;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2a

    if-nez v5, :cond_29

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    new-instance v3, Lcom/kakao/sdk/friend/core/i/k;

    sget v5, Lcom/kakao/sdk/friend/core/R$string;->friend:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "context.getString(R.string.friend)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lcom/kakao/sdk/friend/core/i/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 689
    :cond_2a
    :goto_15
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 699
    iget v2, v2, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 709
    check-cast v1, Lcom/kakao/sdk/friend/core/d/i;

    .line 719
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/d/i;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 729
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_2b

    const/4 v1, 0x0

    goto :goto_16

    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 739
    :goto_16
    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->v:Z

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/m/m;->a(Ljava/util/List;)Lcom/kakao/sdk/friend/core/m/n;

    move-result-object v1

    iput-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 749
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/e;

    .line 759
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 769
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2c
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_1a

    :cond_2d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    invoke-virtual {v3, v2}, Lcom/kakao/sdk/friend/core/m/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v4, :cond_2f

    check-cast v3, Lcom/kakao/sdk/friend/core/i/e;

    goto :goto_19

    :cond_2f
    const/4 v3, 0x0

    :goto_19
    if-nez v3, :cond_30

    goto :goto_18

    :cond_30
    const/4 v4, 0x1

    .line 779
    iput-boolean v4, v3, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    goto :goto_18

    .line 789
    :cond_31
    :goto_1a
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->A:Ljava/util/List;

    if-eqz v1, :cond_33

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_1b

    :cond_32
    const/4 v1, 0x1

    const/16 v23, 0x0

    goto :goto_1c

    :cond_33
    :goto_1b
    const/4 v1, 0x1

    const/16 v23, 0x1

    :goto_1c
    xor-int/lit8 v2, v23, 0x1

    .line 799
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->y:Ljava/util/List;

    if-nez v1, :cond_34

    goto/16 :goto_1f

    :cond_34
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    goto/16 :goto_1f

    :cond_35
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    invoke-virtual {v4, v3}, Lcom/kakao/sdk/friend/core/m/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v5, :cond_38

    check-cast v4, Lcom/kakao/sdk/friend/core/i/e;

    goto :goto_1e

    :cond_38
    const/4 v4, 0x0

    :goto_1e
    if-eqz v4, :cond_37

    .line 809
    iget-object v5, v4, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz v5, :cond_39

    .line 819
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_39
    const/4 v5, 0x1

    .line 829
    iput-boolean v5, v4, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    .line 839
    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_3a
    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    if-nez v1, :cond_3b

    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    sget-object v4, Lcom/kakao/sdk/friend/core/i/i;->a:Lcom/kakao/sdk/friend/core/i/i;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 849
    iput v3, v1, Lcom/kakao/sdk/friend/core/m/n;->b:I

    .line 859
    :cond_3b
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 869
    iget-boolean v1, v1, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    if-nez v1, :cond_3c

    if-eqz v2, :cond_3d

    .line 879
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/friend/core/m/i;->e()V

    .line 889
    :cond_3d
    :goto_1f
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/friend/core/m/i;->c()V

    :cond_3e
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Lcom/kakao/sdk/friend/core/i/e;)V
    .locals 3

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/i/e;Z)V

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/i;->e()V

    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 1139
    iput v0, v2, Lcom/kakao/sdk/friend/core/m/n;->b:I

    .line 1149
    :cond_1
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 1159
    invoke-virtual {p0, v0}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    invoke-virtual {p0, v0, p1, v1}, Lcom/kakao/sdk/friend/core/m/i;->a(ILcom/kakao/sdk/friend/core/i/e;Z)Lcom/kakao/sdk/friend/core/j/o;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/i;->c()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final a(Lcom/kakao/sdk/friend/core/i/e;Z)V
    .locals 2

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 1389
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 1399
    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/m/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/kakao/sdk/friend/core/i/e;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    goto :goto_0

    .line 1409
    :cond_1
    iput-boolean p2, v0, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    goto :goto_0

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 9

    const-string/jumbo v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No user found for uuid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/kakao/sdk/friend/core/m/i;->a(I)Lcom/kakao/sdk/friend/core/i/e;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/i/e;Z)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    new-instance v1, Lcom/kakao/sdk/friend/core/j/m;

    .line 1169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v5, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v7, v5, Lcom/kakao/sdk/friend/core/i/e;

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    check-cast v5, Lcom/kakao/sdk/friend/core/i/e;

    goto :goto_1

    :cond_2
    move-object v5, v8

    :goto_1
    if-eqz v5, :cond_3

    .line 1179
    iget-object v8, v5, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 1189
    :cond_3
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 1199
    invoke-direct {v1, v2, v0, p1}, Lcom/kakao/sdk/friend/core/j/m;-><init>(Ljava/util/List;Lcom/kakao/sdk/friend/core/i/e;Z)V

    invoke-virtual {p2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->b:Lcom/kakao/sdk/friend/core/i/o;

    .line 1419
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/i/o;->g:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    if-eqz v0, :cond_0

    .line 1429
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;->CHAT_MEMBER:Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;->FRIEND:Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;

    :goto_0
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/kakao/sdk/friend/core/i/e;

    .line 1439
    iget-object v4, v4, Lcom/kakao/sdk/friend/core/i/e;->a:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 1449
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/e;

    .line 1459
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/i/e;->a:Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 1469
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/i;->a:Lcom/kakao/sdk/friend/core/d/a;

    new-instance v3, Lcom/kakao/sdk/friend/core/m/h;

    invoke-direct {v3, p2, p1}, Lcom/kakao/sdk/friend/core/m/h;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "scopeGroup"

    .line 1479
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "targetIds"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v2, Lcom/kakao/sdk/friend/core/d/i;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, v2, Lcom/kakao/sdk/friend/core/d/i;->b:Lcom/kakao/sdk/friend/core/network/UserScopeApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    sget-object p1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {p1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    invoke-direct {v2, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {p1, v2, v1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/kakao/sdk/friend/core/network/UserScopeApi;->userScopes(Lcom/kakao/sdk/friend/core/network/model/PickerScopeGroup;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kakao/sdk/friend/core/d/b;

    invoke-direct {p2, v3}, Lcom/kakao/sdk/friend/core/d/b;-><init>(Lcom/kakao/sdk/friend/core/m/h;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final b()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/kakao/sdk/friend/core/i/e;

    .line 19
    iget-object v4, v4, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/kakao/sdk/friend/core/k/l;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/l;-><init>()V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->d:Lcom/kakao/sdk/friend/core/listener/SelectedUuidsCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/e;

    .line 19
    iget-object v3, v3, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Lcom/kakao/sdk/friend/core/listener/SelectedUuidsCallback;->update(Ljava/util/List;)V

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final d()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/i;->f()Lcom/kakao/sdk/friend/core/j/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->r:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/kakao/sdk/friend/core/m/f;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/friend/core/m/f;-><init>(Lcom/kakao/sdk/friend/core/m/i;)V

    new-instance v1, Lcom/kakao/sdk/friend/core/m/g;

    invoke-direct {v1, p0}, Lcom/kakao/sdk/friend/core/m/g;-><init>(Lcom/kakao/sdk/friend/core/m/i;)V

    invoke-virtual {p0, v0, v1}, Lcom/kakao/sdk/friend/core/m/i;->a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final e()V
    .locals 7

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v3, v3, Lcom/kakao/sdk/friend/core/i/b;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/m/i;->b()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/kakao/sdk/friend/core/i/e;

    .line 29
    iget-object v6, v6, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-nez v6, :cond_3

    .line 39
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    .line 49
    :goto_3
    iget-object v3, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eq v2, v4, :cond_9

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/kakao/sdk/friend/core/i/b;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/kakao/sdk/friend/core/i/b;

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_8

    goto :goto_5

    .line 59
    :cond_8
    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/i/b;->a:Z

    .line 69
    :goto_5
    iput-boolean v1, p0, Lcom/kakao/sdk/friend/core/m/i;->s:Z

    :cond_9
    return-void

    .array-data 1
    .end array-data
.end method

.method public final f()Lcom/kakao/sdk/friend/core/j/e;
    .locals 3

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getMinPickableCount()I

    move-result v0

    :goto_0
    iget-boolean v2, p0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getMaxPickableCount()I

    move-result v1

    .line 19
    :goto_1
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    new-instance v1, Lcom/kakao/sdk/friend/core/j/c;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/j/c;-><init>(I)V

    return-object v1

    :cond_2
    if-le v2, v1, :cond_3

    new-instance v0, Lcom/kakao/sdk/friend/core/j/b;

    invoke-direct {v0, v1}, Lcom/kakao/sdk/friend/core/j/b;-><init>(I)V

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method
