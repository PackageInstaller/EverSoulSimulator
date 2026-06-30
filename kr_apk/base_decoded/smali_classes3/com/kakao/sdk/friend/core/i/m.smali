.class public final Lcom/kakao/sdk/friend/core/i/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static a(Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;IZLandroid/os/ResultReceiver;Ljava/util/List;I)Lcom/kakao/sdk/friend/core/i/o;
    .locals 15

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    and-int/lit8 v0, p6, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p4

    :goto_1
    and-int/lit8 v0, p6, 0x20

    if-eqz v0, :cond_2

    move-object v12, v1

    goto :goto_2

    :cond_2
    move-object/from16 v12, p5

    :goto_2
    const-string/jumbo v0, "viewType"

    move-object v5, p0

    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    move-object/from16 v7, p1

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toViewSettingParams(Landroid/os/Parcelable;)Lcom/kakao/sdk/friend/core/i/q;

    move-result-object v6

    new-instance v0, Lcom/kakao/sdk/friend/core/i/o;

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xac0

    move-object v1, v0

    move/from16 v3, p3

    invoke-direct/range {v1 .. v14}, Lcom/kakao/sdk/friend/core/i/o;-><init>(IZZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/i/q;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Landroid/os/ResultReceiver;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;I)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;ZLcom/kakao/sdk/friend/core/k/t;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;I)Lcom/kakao/sdk/friend/core/i/o;
    .locals 16

    move/from16 v0, p7

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v1}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v3

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p3

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object/from16 v14, p6

    :goto_1
    const-string/jumbo v0, "viewType"

    move-object/from16 v1, p0

    .line 29
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/kakao/sdk/friend/core/util/ParameterConverter;->toViewSettingParams(Landroid/os/Parcelable;)Lcom/kakao/sdk/friend/core/i/q;

    move-result-object v7

    new-instance v0, Lcom/kakao/sdk/friend/core/i/o;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v15, 0xc4

    move-object v2, v0

    move/from16 v4, p2

    move-object/from16 v6, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v2 .. v15}, Lcom/kakao/sdk/friend/core/i/o;-><init>(IZZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/i/q;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Landroid/os/ResultReceiver;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;I)V

    return-object v0

    .array-data 1
    .end array-data
.end method
