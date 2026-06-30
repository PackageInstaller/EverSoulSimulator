.class public final Lcom/kakao/sdk/friend/core/i/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14

    const-string v0, "parcel"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/friend/core/i/o;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/kakao/sdk/friend/core/i/q;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v7, v1

    check-cast v7, Lcom/kakao/sdk/friend/core/i/q;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    move-object v8, v1

    check-cast v8, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_3

    :cond_4
    sget-object v1, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    move-object v9, v1

    check-cast v9, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v3

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    move-object v10, v1

    check-cast v10, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    const-class v1, Lcom/kakao/sdk/friend/core/i/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/ResultReceiver;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/kakao/sdk/friend/core/model/CustomSection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    :goto_5
    move-object v12, v3

    check-cast v12, Lcom/kakao/sdk/friend/core/model/CustomSection;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    move-object v1, v0

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, p1

    .line 29
    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/i/o;-><init>(IZZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/i/q;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Landroid/os/ResultReceiver;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 19
    new-array p1, p1, [Lcom/kakao/sdk/friend/core/i/o;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
