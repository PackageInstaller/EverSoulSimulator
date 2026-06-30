.class public final Lcom/kakao/sdk/friend/core/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/d/a;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/d/i;)V
    .locals 1

    const-string v0, "dataSource"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/a/k;->a:Lcom/kakao/sdk/friend/core/d/a;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/kakao/sdk/friend/core/k/s;
    .locals 3

    sget v0, Lcom/kakao/sdk/friend/core/k/s;->e:I

    sget-object v0, Lcom/kakao/sdk/friend/core/a/g;->a:Lcom/kakao/sdk/friend/core/a/g;

    sget-object v1, Lcom/kakao/sdk/friend/core/a/h;->a:Lcom/kakao/sdk/friend/core/a/h;

    const-string v2, "emitter"

    .line 149
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parseResponse"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onCompleted"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/kakao/sdk/friend/core/k/s;

    invoke-direct {v2, p0, v0, v1}, Lcom/kakao/sdk/friend/core/k/s;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/a/g;Lcom/kakao/sdk/friend/core/a/h;)V

    .line 159
    iput-object p1, v2, Lcom/kakao/sdk/friend/core/k/r;->b:Ljava/lang/Object;

    return-object v2

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/os/Parcelable;Z)V
    .locals 6

    .line 19
    instance-of v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    const-string v1, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.InternalTabParams"

    if-nez v0, :cond_8

    instance-of v2, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    if-eqz v2, :cond_0

    move-object v3, p0

    check-cast v3, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    move-result-object v3

    sget-object v4, Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;->CHAT:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    if-eq v3, v4, :cond_8

    :cond_0
    instance-of v3, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    if-eqz v3, :cond_1

    move-object v3, p0

    check-cast v3, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getChatParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;->getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    move-result-object v3

    sget-object v4, Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;->CHAT:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getChatFilters()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 29
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getChatParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;->getChatFilters()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 49
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 29
    :cond_3
    :goto_0
    sget-object v2, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->REGULAR:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 59
    :cond_4
    sget-object v3, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->OPEN:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->DIRECT:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->MULTI:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_5
    sget-object v3, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->REGULAR:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v0, "\'DIRECT\' or \'MULTI\' have to use with \'REGULAR\'. because, chat member picker can\'t contain open chat member"

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v0, "Chat member picker can\'t contain open chat member"

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    .line 69
    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_9
    instance-of v2, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    if-eqz v2, :cond_a

    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_a
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getDisableSelectOptions()Ljava/util/List;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    move-result-object v4

    sget-object v5, Lcom/kakao/sdk/friend/core/model/DisableSelectReason;->CUSTOM:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    if-ne v4, v5, :cond_b

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->getUuids()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v0, "\'uuids\' and \'message\' must be set for \'CUSTOM\' option."

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    :cond_e
    if-nez p1, :cond_17

    .line 79
    instance-of p1, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    if-eqz p1, :cond_f

    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    move-result-object v2

    sget-object v3, Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;->CHAT:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    if-ne v2, v3, :cond_f

    goto :goto_7

    :cond_f
    if-eqz v0, :cond_10

    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getMinPickableCount()I

    move-result v2

    goto :goto_5

    :cond_10
    if-eqz p1, :cond_11

    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getMinPickableCount()I

    move-result v2

    goto :goto_5

    :cond_11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getMinPickableCount()I

    move-result v2

    :goto_5
    if-eqz v0, :cond_12

    check-cast p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getMaxPickableCount()I

    move-result p0

    goto :goto_6

    :cond_12
    if-eqz p1, :cond_13

    check-cast p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->getMaxPickableCount()I

    move-result p0

    goto :goto_6

    :cond_13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getMaxPickableCount()I

    move-result p0

    :goto_6
    const/4 p1, 0x1

    if-lt v2, p1, :cond_16

    const/16 p1, 0x64

    if-gt p0, p1, :cond_15

    if-gt v2, p0, :cond_14

    goto :goto_7

    :cond_14
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v0, "Parameter maxPickableCount must be greater than or equal to parameter minPickableCount"

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v0, "Parameter maxPickableCount must be 100 or less."

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v0, "Parameter minPickableCount must be greater than 1."

    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_7
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/CustomSection;Lkotlin/jvm/functions/Function2;)V
    .locals 11

    move-object v0, p1

    move-object v9, p4

    move-object/from16 v10, p7

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "viewType"

    move-object v2, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "param"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, p2

    :try_start_0
    invoke-static {p4, p2}, Lcom/kakao/sdk/friend/core/a/k;->a(Landroid/os/Parcelable;Z)V
    :try_end_0
    .catch Lcom/kakao/sdk/common/model/ClientError; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    sget v1, Lcom/kakao/sdk/friend/core/k/t;->e:I

    sget-object v1, Lcom/kakao/sdk/friend/core/a/i;->a:Lcom/kakao/sdk/friend/core/a/i;

    sget-object v4, Lcom/kakao/sdk/friend/core/a/j;->a:Lcom/kakao/sdk/friend/core/a/j;

    const-string v5, "emitter"

    .line 99
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "identifier"

    const-string v6, "Friend Picker"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "parseResponse"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onCompleted"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/kakao/sdk/friend/core/k/t;

    invoke-direct {v5, v1, v4}, Lcom/kakao/sdk/friend/core/k/t;-><init>(Lcom/kakao/sdk/friend/core/a/i;Lcom/kakao/sdk/friend/core/a/j;)V

    .line 109
    iput-object v10, v5, Lcom/kakao/sdk/friend/core/k/r;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x84

    move-object v1, p3

    move-object v2, p4

    move v3, p2

    move-object v4, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    .line 119
    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/friend/core/i/m;->a(Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;ZLcom/kakao/sdk/friend/core/k/t;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;I)Lcom/kakao/sdk/friend/core/i/o;

    move-result-object v1

    move-object v2, p0

    iget-object v3, v2, Lcom/kakao/sdk/friend/core/a/k;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 129
    iget v4, v1, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 139
    invoke-virtual {p4}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v5

    invoke-virtual {p4}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getCountryCodeFilters()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/kakao/sdk/friend/core/a/f;

    invoke-direct {v7, v10, p1, v1}, Lcom/kakao/sdk/friend/core/a/f;-><init>(Lkotlin/jvm/functions/Function2;Landroid/content/Context;Lcom/kakao/sdk/friend/core/i/o;)V

    check-cast v3, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/kakao/sdk/friend/core/d/i;->a(ILcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, p0

    move-object v1, v0

    const/4 v0, 0x0

    invoke-interface {v10, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
