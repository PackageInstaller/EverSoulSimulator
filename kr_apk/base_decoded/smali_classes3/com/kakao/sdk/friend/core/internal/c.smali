.class public final Lcom/kakao/sdk/friend/core/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    const-string v0, "parcel"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move p1, v5

    goto :goto_3

    :cond_3
    move p1, v6

    :goto_3
    move-object v1, v0

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerFriendFilter;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerUsingOsFilter;ZZZZ)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    new-array p1, p1, [Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
