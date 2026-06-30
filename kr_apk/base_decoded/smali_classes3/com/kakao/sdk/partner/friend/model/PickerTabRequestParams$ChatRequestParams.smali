.class public final Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;
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
    name = "ChatRequestParams"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\u0019\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rH\u00d6\u0001R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;",
        "Landroid/os/Parcelable;",
        "selectionType",
        "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
        "chatFilters",
        "",
        "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
        "(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/util/List;)V",
        "getChatFilters",
        "()Ljava/util/List;",
        "getSelectionType",
        "()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
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
            "Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chatFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionType:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams$Creator;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams$Creator;-><init>()V

    sput-object v0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;)V
    .locals 2

    const-string v0, "selectionType"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectionType"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->selectionType:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    iput-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->chatFilters:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 39
    sget-object p2, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {p2}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_CHAT_FILTER()Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/util/List;)V

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

.method public final getChatFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->chatFilters:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->selectionType:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->selectionType:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams$ChatRequestParams;->chatFilters:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method
