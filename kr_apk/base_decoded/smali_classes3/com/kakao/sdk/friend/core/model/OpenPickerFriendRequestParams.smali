.class public final Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u007f\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0011J\t\u0010#\u001a\u00020\u000fH\u00d6\u0001J\u0019\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u000fH\u00d6\u0001R\u0015\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0013R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0015\u0010\u000c\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u001c\u0010\u0013R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u0013R\u0015\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u001e\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006)"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;",
        "Landroid/os/Parcelable;",
        "title",
        "",
        "viewAppearance",
        "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
        "orientation",
        "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "enableSearch",
        "",
        "enableIndex",
        "showMyProfile",
        "showFavorite",
        "showPickedFriend",
        "maxPickableCount",
        "",
        "minPickableCount",
        "(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "getEnableIndex",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getEnableSearch",
        "getMaxPickableCount",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMinPickableCount",
        "getOrientation",
        "()Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "getShowFavorite",
        "getShowMyProfile",
        "getShowPickedFriend",
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
        "friend-core_release"
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
            "Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enableIndex:Ljava/lang/Boolean;

.field private final enableSearch:Ljava/lang/Boolean;

.field private final maxPickableCount:Ljava/lang/Integer;

.field private final minPickableCount:Ljava/lang/Integer;

.field private final orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

.field private final showFavorite:Ljava/lang/Boolean;

.field private final showMyProfile:Ljava/lang/Boolean;

.field private final showPickedFriend:Ljava/lang/Boolean;

.field private final title:Ljava/lang/String;

.field private final viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams$Creator;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams$Creator;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3fe

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 29
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;)V
    .locals 13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3fc

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 39
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f8

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    .line 49
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;)V
    .locals 13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 59
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 69
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 79
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x380

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 89
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x300

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 99
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 13

    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 109
    invoke-direct/range {v0 .. v12}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->enableSearch:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->enableIndex:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showMyProfile:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showFavorite:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showPickedFriend:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->maxPickableCount:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->minPickableCount:Ljava/lang/Integer;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 129
    sget-object v2, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    sget-object v3, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object/from16 v0, p10

    :goto_9
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v0

    invoke-direct/range {p1 .. p11}, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

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

.method public final getEnableIndex()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->enableIndex:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnableSearch()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->enableSearch:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMaxPickableCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->maxPickableCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMinPickableCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->minPickableCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowFavorite()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showFavorite:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowMyProfile()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showMyProfile:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowPickedFriend()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showPickedFriend:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->title:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->enableSearch:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->enableIndex:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showMyProfile:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showFavorite:Ljava/lang/Boolean;

    if-nez p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->showPickedFriend:Ljava/lang/Boolean;

    if-nez p2, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->maxPickableCount:Ljava/lang/Integer;

    if-nez p2, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/OpenPickerFriendRequestParams;->minPickableCount:Ljava/lang/Integer;

    if-nez p2, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return-void

    nop

    .array-data 1
    .end array-data
.end method
