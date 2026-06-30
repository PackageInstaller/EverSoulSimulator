.class public final Lcom/kakao/sdk/friend/core/internal/InternalTabParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;,
        Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0002./Bo\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\t\u0010(\u001a\u00020\u000fH\u00d6\u0001J\u0019\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\r\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010 R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'\u00a8\u00060"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/internal/InternalTabParams;",
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
        "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;",
        "chatParams",
        "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;",
        "(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V",
        "getChatParams",
        "()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;",
        "getDisableSelectOptions",
        "()Ljava/util/List;",
        "getDisplayAllProfile",
        "()Z",
        "getEnableSearch",
        "getFriendsParams",
        "()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;",
        "getMaxPickableCount",
        "()I",
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
        "InternalChatParams",
        "InternalFriendsParams",
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
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chatParams:Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

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

.field private final enableSearch:Z

.field private final friendsParams:Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

.field private final maxPickableCount:I

.field private final minPickableCount:I

.field private final orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

.field private final title:Ljava/lang/String;

.field private final viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/internal/a;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/internal/a;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
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

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
    .locals 14

    const-string v0, "friendsParams"

    move-object/from16 v10, p2

    .line 29
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

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
    .locals 14

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v3, p2

    .line 39
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendsParams"

    move-object/from16 v10, p3

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

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
    .locals 14

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v3, p2

    .line 49
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendsParams"

    move-object/from16 v10, p4

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

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
    .locals 14

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v3, p2

    .line 59
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendsParams"

    move-object/from16 v10, p5

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

    move/from16 v5, p4

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v3, p2

    .line 69
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendsParams"

    move-object/from16 v10, p6

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

    move/from16 v5, p4

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;ZII",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "viewAppearance"

    .line 79
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendsParams"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    iput-boolean p4, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->enableSearch:Z

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->disableSelectOptions:Ljava/util/List;

    iput-boolean p6, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->displayAllProfile:Z

    iput p7, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->maxPickableCount:I

    iput p8, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->minPickableCount:I

    iput-object p9, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->friendsParams:Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    iput-object p10, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->chatParams:Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 89
    sget-object v1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v1}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v1

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move v8, v1

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    const/16 v1, 0x1e

    move v9, v1

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    move v10, v2

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    move-object v2, p0

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;ZI",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v3, p2

    .line 99
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendsParams"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatParams"

    move-object/from16 v11, p9

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v12, 0x80

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZLcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;Z",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;",
            "Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v3, p2

    .line 109
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "friendsParams"

    move-object/from16 v10, p7

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

    move/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;-><init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIILcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

.method public final getChatParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->chatParams:Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

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

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->disableSelectOptions:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisplayAllProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->displayAllProfile:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnableSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->enableSearch:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFriendsParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->friendsParams:Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMaxPickableCount()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->maxPickableCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMinPickableCount()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->minPickableCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->title:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->enableSearch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->disableSelectOptions:Ljava/util/List;

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
    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->displayAllProfile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->maxPickableCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->minPickableCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->friendsParams:Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalFriendsParams;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->chatParams:Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    .array-data 1
    .end array-data
.end method
