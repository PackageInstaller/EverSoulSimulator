.class public final Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u001b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u00ab\u0001\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f\u0012\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0007\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u001aJ\t\u00102\u001a\u00020\u0018H\u00d6\u0001J\u0019\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0018H\u00d6\u0001R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0011\u0010\u0015\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010%R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001fR\u0011\u0010\u0011\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001fR\u0011\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101\u00a8\u00068"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
        "Landroid/os/Parcelable;",
        "title",
        "",
        "friendFilter",
        "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
        "countryCodeFilters",
        "",
        "usingOsFilter",
        "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
        "viewAppearance",
        "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
        "orientation",
        "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "enableSearch",
        "",
        "enableIndex",
        "showMyProfile",
        "showFavorite",
        "disableSelectOptions",
        "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
        "displayAllProfile",
        "showPickedFriend",
        "maxPickableCount",
        "",
        "minPickableCount",
        "(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZII)V",
        "getCountryCodeFilters",
        "()Ljava/util/List;",
        "getDisableSelectOptions",
        "getDisplayAllProfile",
        "()Z",
        "getEnableIndex",
        "getEnableSearch",
        "getFriendFilter",
        "()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
        "getMaxPickableCount",
        "()I",
        "getMinPickableCount",
        "getOrientation",
        "()Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "getShowFavorite",
        "getShowMyProfile",
        "getShowPickedFriend",
        "getTitle",
        "()Ljava/lang/String;",
        "getUsingOsFilter",
        "()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
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
            "Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final countryCodeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final disableSelectOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;"
        }
    .end annotation
.end field

.field private final displayAllProfile:Z

.field private final enableIndex:Z

.field private final enableSearch:Z

.field private final friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

.field private final maxPickableCount:I

.field private final minPickableCount:I

.field private final orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

.field private final showFavorite:Z

.field private final showMyProfile:Z

.field private final showPickedFriend:Z

.field private final title:Ljava/lang/String;

.field private final usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

.field private final viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/i/h;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/i/h;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

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

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    .line 19
    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7ffe

    const/16 v17, 0x0

    .line 29
    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "friendFilter"

    move-object/from16 v4, p2

    .line 39
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7ffc

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "friendFilter"

    move-object/from16 v5, p2

    .line 49
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "countryCodeFilters"

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7ff8

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "friendFilter"

    move-object/from16 v6, p2

    .line 59
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "countryCodeFilters"

    move-object/from16 v6, p3

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "usingOsFilter"

    move-object/from16 v6, p4

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7ff0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "friendFilter"

    move-object/from16 v7, p2

    .line 69
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "countryCodeFilters"

    move-object/from16 v7, p3

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "usingOsFilter"

    move-object/from16 v7, p4

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "viewAppearance"

    move-object/from16 v7, p5

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fe0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "friendFilter"

    move-object/from16 v8, p2

    .line 79
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "countryCodeFilters"

    move-object/from16 v8, p3

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "usingOsFilter"

    move-object/from16 v8, p4

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "viewAppearance"

    move-object/from16 v8, p5

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "orientation"

    move-object/from16 v8, p6

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fc0

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    const-string v8, "friendFilter"

    move-object/from16 v9, p2

    .line 89
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "countryCodeFilters"

    move-object/from16 v9, p3

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "usingOsFilter"

    move-object/from16 v9, p4

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "viewAppearance"

    move-object/from16 v9, p5

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "orientation"

    move-object/from16 v9, p6

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7f80

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    const-string v9, "friendFilter"

    move-object/from16 v10, p2

    .line 99
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "countryCodeFilters"

    move-object/from16 v10, p3

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "usingOsFilter"

    move-object/from16 v10, p4

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "viewAppearance"

    move-object/from16 v10, p5

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "orientation"

    move-object/from16 v10, p6

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7f00

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "ZZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    const-string v10, "friendFilter"

    move-object/from16 v11, p2

    .line 109
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "countryCodeFilters"

    move-object/from16 v11, p3

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "usingOsFilter"

    move-object/from16 v11, p4

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "viewAppearance"

    move-object/from16 v11, p5

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "orientation"

    move-object/from16 v11, p6

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7e00

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "ZZZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    const-string v11, "friendFilter"

    move-object/from16 v12, p2

    .line 119
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "countryCodeFilters"

    move-object/from16 v12, p3

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "usingOsFilter"

    move-object/from16 v12, p4

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v11, "viewAppearance"

    move-object/from16 v12, p5

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "orientation"

    move-object/from16 v12, p6

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7c00

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "ZZZZ",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    const-string v12, "friendFilter"

    move-object/from16 v13, p2

    .line 129
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "countryCodeFilters"

    move-object/from16 v13, p3

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v12, "usingOsFilter"

    move-object/from16 v13, p4

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v12, "viewAppearance"

    move-object/from16 v13, p5

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "orientation"

    move-object/from16 v13, p6

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "disableSelectOptions"

    move-object/from16 v13, p11

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7800

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "ZZZZ",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    const-string v13, "friendFilter"

    move-object/from16 v14, p2

    .line 139
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "countryCodeFilters"

    move-object/from16 v14, p3

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "usingOsFilter"

    move-object/from16 v14, p4

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "viewAppearance"

    move-object/from16 v14, p5

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "orientation"

    move-object/from16 v14, p6

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "disableSelectOptions"

    move-object/from16 v14, p11

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7000

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "ZZZZ",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    const-string v14, "friendFilter"

    move-object/from16 v15, p2

    .line 149
    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "countryCodeFilters"

    move-object/from16 v15, p3

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v14, "usingOsFilter"

    move-object/from16 v15, p4

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v14, "viewAppearance"

    move-object/from16 v15, p5

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "orientation"

    move-object/from16 v15, p6

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "disableSelectOptions"

    move-object/from16 v15, p11

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6000

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZI)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "ZZZZ",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;ZZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    const-string v15, "friendFilter"

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    .line 159
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCodeFilters"

    move-object/from16 v15, p3

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usingOsFilter"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v15, p6

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    move-object/from16 v15, p11

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x4000

    const/16 v17, 0x0

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZII)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "ZZZZ",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;ZZII)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p11

    const-string v7, "friendFilter"

    .line 169
    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "countryCodeFilters"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "usingOsFilter"

    invoke-static {p4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "viewAppearance"

    invoke-static {p5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "orientation"

    invoke-static {p6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "disableSelectOptions"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v7, p1

    iput-object v7, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    iput-object v2, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->countryCodeFilters:Ljava/util/List;

    iput-object v3, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    iput-object v4, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    iput-object v5, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move v1, p7

    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->enableSearch:Z

    move/from16 v1, p8

    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->enableIndex:Z

    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showMyProfile:Z

    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showFavorite:Z

    iput-object v6, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->disableSelectOptions:Ljava/util/List;

    move/from16 v1, p12

    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->displayAllProfile:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showPickedFriend:Z

    move/from16 v1, p14

    iput v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->maxPickableCount:I

    move/from16 v1, p15

    iput v1, v0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->minPickableCount:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 179
    sget-object v2, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_FRIEND_FILTER()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    sget-object v4, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_OS_FILTER()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    sget-object v5, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v5}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    sget-object v6, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v6}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    move v7, v8

    goto :goto_6

    :cond_6
    move/from16 v7, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v8

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move v10, v8

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move v11, v8

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move v14, v8

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/16 v15, 0x1e

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v8, p15

    :goto_e
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p16, v8

    invoke-direct/range {p1 .. p16}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZZZZLjava/util/List;ZZII)V

    return-void

    nop

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

.method public final getCountryCodeFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->countryCodeFilters:Ljava/util/List;

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

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->disableSelectOptions:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisplayAllProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->displayAllProfile:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnableIndex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->enableIndex:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnableSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->enableSearch:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMaxPickableCount()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->maxPickableCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMinPickableCount()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->minPickableCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showFavorite:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowMyProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showMyProfile:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowPickedFriend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showPickedFriend:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->title:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUsingOsFilter()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->countryCodeFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->enableSearch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->enableIndex:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showMyProfile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showFavorite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->disableSelectOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v1, p1, p2}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->displayAllProfile:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->showPickedFriend:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->maxPickableCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->minPickableCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
