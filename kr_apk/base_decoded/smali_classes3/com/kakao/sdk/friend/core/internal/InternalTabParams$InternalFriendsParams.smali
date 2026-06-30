.class public final Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/friend/core/internal/InternalTabParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalFriendsParams"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001BS\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001bH\u00d6\u0001R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;",
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
        "(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZ)V",
        "getCountryCodeFilters",
        "()Ljava/util/List;",
        "getEnableIndex",
        "()Z",
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
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;",
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

.field private final enableIndex:Z

.field private final friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

.field private final showFavorite:Z

.field private final showMyProfile:Z

.field private final showPickedFriend:Z

.field private final usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/c;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/internal/c;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-direct/range {v0 .. v9}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;)V
    .locals 11

    const-string v0, "friendFilter"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "friendFilter"

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCodeFilters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;)V
    .locals 11
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

    const-string v0, "friendFilter"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCodeFilters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usingOsFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x78

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "Z)V"
        }
    .end annotation

    const-string v0, "friendFilter"

    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCodeFilters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usingOsFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "friendFilter"

    move-object v2, p1

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCodeFilters"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usingOsFilter"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x60

    const/4 v10, 0x0

    move-object v1, p0

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "ZZZ)V"
        }
    .end annotation

    const-string v0, "friendFilter"

    move-object v2, p1

    .line 79
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCodeFilters"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usingOsFilter"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, p0

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;",
            "ZZZZ)V"
        }
    .end annotation

    const-string v0, "friendFilter"

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCodeFilters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "usingOsFilter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->countryCodeFilters:Ljava/util/List;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    iput-boolean p4, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->enableIndex:Z

    iput-boolean p5, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showMyProfile:Z

    iput-boolean p6, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showFavorite:Z

    iput-boolean p7, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showPickedFriend:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

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

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    move v1, p3

    goto :goto_0

    :cond_3
    move v1, p4

    :goto_0
    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    move v2, p3

    goto :goto_1

    :cond_4
    move v2, p5

    :goto_1
    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    move v3, p3

    goto :goto_2

    :cond_5
    move v3, p6

    :goto_2
    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    move v4, p3

    goto :goto_3

    :cond_6
    move v4, p7

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-direct/range {p2 .. p9}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZ)V

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

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->countryCodeFilters:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnableIndex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->enableIndex:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFriendFilter()Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showFavorite:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowMyProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showMyProfile:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShowPickedFriend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showPickedFriend:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUsingOsFilter()Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->friendFilter:Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->countryCodeFilters:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->usingOsFilter:Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->enableIndex:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showMyProfile:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showFavorite:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->showPickedFriend:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
