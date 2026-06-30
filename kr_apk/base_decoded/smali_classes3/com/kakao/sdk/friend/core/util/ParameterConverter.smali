.class public final Lcom/kakao/sdk/friend/core/util/ParameterConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0011\u0010\n\u001a\u00020\t*\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0011\u0010\r\u001a\u00020\t*\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0011\u0010\u0010\u001a\u00020\u000f*\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/util/ParameterConverter;",
        "",
        "<init>",
        "()V",
        "Landroid/os/Parcelable;",
        "Lcom/kakao/sdk/friend/core/i/q;",
        "toViewSettingParams",
        "(Landroid/os/Parcelable;)Lcom/kakao/sdk/friend/core/i/q;",
        "Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;",
        "Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
        "toInternalParams",
        "(Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
        "Lcom/kakao/sdk/friend/core/internal/InternalTabParams;",
        "toFriendsParams",
        "(Lcom/kakao/sdk/friend/core/internal/InternalTabParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
        "Lcom/kakao/sdk/friend/core/internal/InternalChatParams;",
        "toChatParams",
        "(Lcom/kakao/sdk/friend/core/internal/InternalTabParams;)Lcom/kakao/sdk/friend/core/internal/InternalChatParams;",
        "friend-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/friend/core/util/ParameterConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/util/ParameterConverter;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->INSTANCE:Lcom/kakao/sdk/friend/core/util/ParameterConverter;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final toViewSettingParams(Landroid/os/Parcelable;)Lcom/kakao/sdk/friend/core/i/q;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object p0

    :goto_0
    new-instance v1, Lcom/kakao/sdk/friend/core/i/q;

    invoke-direct {v1, v0, p0}, Lcom/kakao/sdk/friend/core/i/q;-><init>(Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final toChatParams(Lcom/kakao/sdk/friend/core/internal/InternalTabParams;)Lcom/kakao/sdk/friend/core/internal/InternalChatParams;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v6

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getEnableSearch()Z

    move-result v7

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getDisplayAllProfile()Z

    move-result v9

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getMaxPickableCount()I

    move-result v10

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getMinPickableCount()I

    move-result v11

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getChatParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;->getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getChatParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;->getChatFilters()Ljava/util/List;

    move-result-object v4

    new-instance p1, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZII)V

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final toFriendsParams(Lcom/kakao/sdk/friend/core/internal/InternalTabParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;
    .locals 17

    const-string v0, "<this>"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getCountryCodeFilters()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getUsingOsFilter()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getEnableSearch()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getEnableIndex()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getShowMyProfile()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getShowFavorite()Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getDisplayAllProfile()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    move-result-object v14

    invoke-virtual {v14}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->getShowPickedFriend()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getMaxPickableCount()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getMinPickableCount()I

    move-result v16

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZII)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final toInternalParams(Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;
    .locals 20

    const-string v0, "<this>"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v7

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getEnableSearch()Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_0

    :cond_2
    move v8, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getEnableIndex()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_1

    :cond_3
    move v10, v9

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getShowMyProfile()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_2

    :cond_4
    move v11, v9

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getShowFavorite()Ljava/lang/Boolean;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_3

    :cond_5
    move v12, v9

    :goto_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getShowPickedFriend()Ljava/lang/Boolean;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_4

    :cond_6
    move v15, v9

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getMaxPickableCount()Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto :goto_5

    :cond_7
    const/16 v16, 0x1e

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->getMinPickableCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v19, v1

    goto :goto_6

    :cond_8
    move/from16 v19, v9

    :goto_6
    const/16 v17, 0xc0e

    const/16 v18, 0x0

    move-object v1, v0

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v1 .. v18}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
