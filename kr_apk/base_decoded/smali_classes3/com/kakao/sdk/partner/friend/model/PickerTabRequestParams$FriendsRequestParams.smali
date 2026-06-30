.class public final Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendsRequestParams"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001Ba\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001cH\u00d6\u0001R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0016\u0010\u0012R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0012R\u0015\u0010\r\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\""
    }
    d2 = {
        "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;",
        "Landroid/os/Parcelable;",
        "friendFilter",
        "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
        "countryCodeFilters",
        "",
        "",
        "usingOsFilter",
        "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
        "enableIndex",
        "",
        "showMyProfile",
        "showFavorite",
        "showPickedFriend",
        "(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "getCountryCodeFilters",
        "()Ljava/util/List;",
        "getEnableIndex",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getFriendFilter",
        "()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
        "getShowFavorite",
        "getShowMyProfile",
        "getShowPickedFriend",
        "getUsingOsFilter",
        "()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;",
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

.field private final enableIndex:Ljava/lang/Boolean;

.field private final friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

.field private final showFavorite:Ljava/lang/Boolean;

.field private final showMyProfile:Ljava/lang/Boolean;

.field private final showPickedFriend:Ljava/lang/Boolean;

.field private final usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams$Creator;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams$Creator;-><init>()V

    sput-object v0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 29
    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 39
    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 49
    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 59
    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x60

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 69
    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 79
    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    iput-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->countryCodeFilters:Ljava/util/List;

    iput-object p3, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    iput-object p4, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->enableIndex:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showMyProfile:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showFavorite:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showPickedFriend:Ljava/lang/Boolean;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 99
    sget-object p1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_FRIEND_FILTER()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    sget-object p2, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {p2}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_OS_FILTER()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    sget-object p6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    sget-object p7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-direct/range {p2 .. p9}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

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

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->countryCodeFilters:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnableIndex()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->enableIndex:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowFavorite()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showFavorite:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowMyProfile()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showMyProfile:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowPickedFriend()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showPickedFriend:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUsingOsFilter()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

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
    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->countryCodeFilters:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->enableIndex:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showMyProfile:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showFavorite:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$FriendsRequestParams;->showPickedFriend:Ljava/lang/Boolean;

    if-nez p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return-void

    nop

    .array-data 1
    .end array-data
.end method
