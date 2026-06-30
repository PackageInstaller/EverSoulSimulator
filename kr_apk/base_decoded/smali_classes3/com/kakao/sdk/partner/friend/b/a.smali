.class public abstract Lcom/kakao/sdk/partner/friend/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalChatParams;
    .locals 12

    const-string v0, "<this>"

    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getChatFilters()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_CHAT_FILTER()Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_0
    move-object v4, v1

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v1

    :cond_1
    move-object v5, v1

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v1

    :cond_2
    move-object v6, v1

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getEnableSearch()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_3
    move v8, v7

    :goto_0
    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_4
    move-object v9, v1

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getDisplayAllProfile()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    move v10, v1

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getMaxPickableCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_6
    const/16 v1, 0x1e

    :goto_2
    move v11, v1

    invoke-virtual {p0}, Lcom/kakao/sdk/partner/friend/model/PickerChatRequestParams;->getMinPickableCount()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_7
    move p0, v7

    :goto_3
    move-object v1, v0

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, p0

    invoke-direct/range {v1 .. v11}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZII)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static a(Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;
    .locals 18

    const-string v0, "<this>"

    move-object/from16 v1, p0

    .line 29
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_FRIEND_FILTER()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getCountryCodeFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getUsingOsFilter()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v5}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_OS_FILTER()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v6

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v7}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v7

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getEnableSearch()Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_0

    :cond_5
    move v8, v9

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getEnableIndex()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_1

    :cond_6
    move v10, v9

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getShowMyProfile()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_2

    :cond_7
    move v11, v9

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getShowFavorite()Ljava/lang/Boolean;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_3

    :cond_8
    move v12, v9

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getDisplayAllProfile()Ljava/lang/Boolean;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getShowPickedFriend()Ljava/lang/Boolean;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_5

    :cond_b
    move v15, v9

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getMaxPickableCount()Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto :goto_6

    :cond_c
    const/16 v16, 0x1e

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerFriendRequestParams;->getMinPickableCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v17, v1

    goto :goto_7

    :cond_d
    move/from16 v17, v9

    :goto_7
    move-object v1, v0

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v1 .. v16}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZII)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalTabParams;
    .locals 22

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getEnableSearch()Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getDisplayAllProfile()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getMaxPickableCount()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    :cond_5
    const/16 v9, 0x1e

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getMinPickableCount()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_3

    :cond_6
    move v10, v6

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getFriendsParams()Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;

    move-result-object v11

    .line 39
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v21, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    invoke-virtual {v11}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v13

    if-nez v13, :cond_7

    sget-object v13, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v13}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_FRIEND_FILTER()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v13

    :cond_7
    move-object v14, v13

    invoke-virtual {v11}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->getCountryCodeFilters()Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    :cond_8
    move-object v15, v13

    invoke-virtual {v11}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->getUsingOsFilter()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object v13

    if-nez v13, :cond_9

    sget-object v13, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v13}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_OS_FILTER()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object v13

    :cond_9
    move-object/from16 v16, v13

    invoke-virtual {v11}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->getEnableIndex()Ljava/lang/Boolean;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move/from16 v17, v13

    goto :goto_4

    :cond_a
    move/from16 v17, v6

    :goto_4
    invoke-virtual {v11}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->getShowMyProfile()Ljava/lang/Boolean;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move/from16 v18, v13

    goto :goto_5

    :cond_b
    move/from16 v18, v6

    :goto_5
    invoke-virtual {v11}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->getShowFavorite()Ljava/lang/Boolean;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move/from16 v19, v13

    goto :goto_6

    :cond_c
    move/from16 v19, v6

    :goto_6
    invoke-virtual {v11}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->getShowPickedFriend()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_d
    move/from16 v20, v6

    move-object/from16 v13, v21

    invoke-direct/range {v13 .. v20}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZ)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->getChatParams()Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;

    move-result-object v1

    .line 59
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    invoke-virtual {v1}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->getChatFilters()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_CHAT_FILTER()Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_e
    invoke-direct {v11, v0, v1}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/util/List;)V

    move-object v1, v12

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object/from16 v10, v21

    .line 69
    invoke-direct/range {v1 .. v11}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V

    return-object v12

    nop

    .array-data 1
    .end array-data
.end method
