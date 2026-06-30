.class public final Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;,
        Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u000201B}\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\t\u0010*\u001a\u00020\u000fH\u00d6\u0001J\u0019\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0015\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001bR\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u0010\"\u001a\u0004\u0008 \u0010!R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u0010\"\u001a\u0004\u0008#\u0010!R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)\u00a8\u00062"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;",
        "Landroid/os/Parcelable;",
        "title",
        "",
        "viewAppearance",
        "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
        "orientation",
        "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "enableSearch",
        "",
        "disableSelectOptions",
        "",
        "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
        "displayAllProfile",
        "maxPickableCount",
        "",
        "minPickableCount",
        "friendsParams",
        "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;",
        "chatParams",
        "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;",
        "(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V",
        "getChatParams",
        "()Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;",
        "getDisableSelectOptions",
        "()Ljava/util/List;",
        "getDisplayAllProfile",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getEnableSearch",
        "getFriendsParams",
        "()Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;",
        "getMaxPickableCount",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMinPickableCount",
        "getOrientation",
        "()Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "getTitle",
        "()Ljava/lang/String;",
        "getViewAppearance",
        "()Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
        "describeContents",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "ChatRequestParams",
        "FriendsRequestParams",
        "partner-friend_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chatParams:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;

.field private final disableSelectOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;"
        }
    .end annotation
.end field

.field private final displayAllProfile:Ljava/lang/Boolean;

.field private final enableSearch:Ljava/lang/Boolean;

.field private final friendsParams:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;

.field private final maxPickableCount:Ljava/lang/Integer;

.field private final minPickableCount:Ljava/lang/Integer;

.field private final orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

.field private final title:Ljava/lang/String;

.field private final viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$Creator;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$Creator;-><init>()V

    sput-object v0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 14

    const-string v0, "friendsParams"

    move-object v10, p1

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xff

    const/4 v13, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 14

    const-string v0, "friendsParams"

    move-object/from16 v10, p4

    .line 29
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p5

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xf8

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 14

    const-string v0, "friendsParams"

    move-object/from16 v10, p5

    .line 39
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xf0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;",
            ")V"
        }
    .end annotation

    const-string v0, "friendsParams"

    move-object/from16 v10, p6

    .line 49
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p7

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;",
            ")V"
        }
    .end annotation

    const-string v0, "friendsParams"

    move-object/from16 v10, p7

    .line 59
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p8

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xc0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;",
            ")V"
        }
    .end annotation

    const-string v0, "friendsParams"

    move-object/from16 v10, p8

    .line 69
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p9

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v12, 0x80

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;",
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;",
            ")V"
        }
    .end annotation

    const-string v0, "friendsParams"

    .line 79
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    iput-object p3, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    iput-object p4, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->enableSearch:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->disableSelectOptions:Ljava/util/List;

    iput-object p6, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->displayAllProfile:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->maxPickableCount:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->minPickableCount:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->friendsParams:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;

    iput-object p10, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->chatParams:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 89
    sget-object v1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v9, v1

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v10, v1

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v11, v0

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    move-object v3, p0

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 14

    const-string v0, "friendsParams"

    move-object/from16 v10, p3

    .line 99
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;)V
    .locals 14

    const-string v0, "friendsParams"

    move-object/from16 v10, p2

    .line 109
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xfe

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getChatParams()Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->chatParams:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisableSelectOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->disableSelectOptions:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisplayAllProfile()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->displayAllProfile:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnableSearch()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->enableSearch:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFriendsParams()Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->friendsParams:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMaxPickableCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->maxPickableCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMinPickableCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->minPickableCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->title:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->enableSearch:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->disableSelectOptions:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->displayAllProfile:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->maxPickableCount:Ljava/lang/Integer;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->minPickableCount:Ljava/lang/Integer;

    if-nez v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->friendsParams:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;->chatParams:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
