.class public final Lcom/kakao/sdk/friend/core/internal/InternalChatParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001Bw\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0007\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0015J\t\u0010\'\u001a\u00020\u0013H\u00d6\u0001J\u0019\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0013H\u00d6\u0001R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&\u00a8\u0006-"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/internal/InternalChatParams;",
        "Landroid/os/Parcelable;",
        "selectionType",
        "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
        "title",
        "",
        "chatFilters",
        "",
        "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
        "viewAppearance",
        "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
        "orientation",
        "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "enableSearch",
        "",
        "disableSelectOptions",
        "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
        "displayAllProfile",
        "maxPickableCount",
        "",
        "minPickableCount",
        "(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZII)V",
        "getChatFilters",
        "()Ljava/util/List;",
        "getDisableSelectOptions",
        "getDisplayAllProfile",
        "()Z",
        "getEnableSearch",
        "getMaxPickableCount",
        "()I",
        "getMinPickableCount",
        "getOrientation",
        "()Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
        "getSelectionType",
        "()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
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
            "Lcom/kakao/sdk/friend/core/internal/InternalChatParams;",
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

.field private final maxPickableCount:I

.field private final minPickableCount:I

.field private final orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

.field private final selectionType:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

.field private final title:Ljava/lang/String;

.field private final viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/i/g;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/i/g;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;)V
    .locals 14

    const-string v0, "selectionType"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3fe

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;)V
    .locals 14

    const-string v0, "selectionType"

    move-object v2, p1

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3fc

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectionType"

    move-object v2, p1

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatFilters"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3f8

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            ")V"
        }
    .end annotation

    const-string v0, "selectionType"

    move-object v2, p1

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatFilters"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3f0

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            ")V"
        }
    .end annotation

    const-string v0, "selectionType"

    move-object v2, p1

    .line 59
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatFilters"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e0

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z)V"
        }
    .end annotation

    const-string v0, "selectionType"

    move-object v2, p1

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatFilters"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3c0

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selectionType"

    move-object v2, p1

    .line 79
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatFilters"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x380

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "selectionType"

    move-object v2, p1

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatFilters"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x300

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZI)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;ZI)V"
        }
    .end annotation

    const-string v0, "selectionType"

    move-object v2, p1

    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatFilters"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewAppearance"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x200

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/friend/core/model/PickerChatFilter;",
            ">;",
            "Lcom/kakao/sdk/friend/core/model/ViewAppearance;",
            "Lcom/kakao/sdk/friend/core/model/PickerOrientation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;ZII)V"
        }
    .end annotation

    const-string v0, "selectionType"

    .line 109
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatFilters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewAppearance"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disableSelectOptions"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->selectionType:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->chatFilters:Ljava/util/List;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    iput-boolean p6, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->enableSearch:Z

    iput-object p7, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->disableSelectOptions:Ljava/util/List;

    iput-boolean p8, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->displayAllProfile:Z

    iput p9, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->maxPickableCount:I

    iput p10, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->minPickableCount:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 119
    sget-object v2, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_CHAT_FILTER()Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2

    sget-object v3, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_VIEW_APPEARANCE()Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    sget-object v4, Lcom/kakao/sdk/friend/core/model/DefaultValues;->INSTANCE:Lcom/kakao/sdk/friend/core/model/DefaultValues;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/model/DefaultValues;->getDEFAULT_PICKER_ORIENTATION()Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    move/from16 v5, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    const/16 v9, 0x1e

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v6, p10

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move/from16 p8, v5

    move-object/from16 p9, v7

    move/from16 p10, v8

    move/from16 p11, v9

    move/from16 p12, v6

    invoke-direct/range {p2 .. p12}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;-><init>(Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;Ljava/lang/String;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/ViewAppearance;Lcom/kakao/sdk/friend/core/model/PickerOrientation;ZLjava/util/List;ZII)V

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

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->chatFilters:Ljava/util/List;

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

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->disableSelectOptions:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisplayAllProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->displayAllProfile:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnableSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->enableSearch:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMaxPickableCount()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->maxPickableCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMinPickableCount()I
    .locals 1

    iget v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->minPickableCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOrientation()Lcom/kakao/sdk/friend/core/model/PickerOrientation;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSelectionType()Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->selectionType:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->title:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getViewAppearance()Lcom/kakao/sdk/friend/core/model/ViewAppearance;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->selectionType:Lcom/kakao/sdk/friend/core/model/PickerChatSelectionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->chatFilters:Ljava/util/List;

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

    check-cast v1, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->viewAppearance:Lcom/kakao/sdk/friend/core/model/ViewAppearance;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->orientation:Lcom/kakao/sdk/friend/core/model/PickerOrientation;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->enableSearch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->disableSelectOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;

    invoke-virtual {v1, p1, p2}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->displayAllProfile:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->maxPickableCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->minPickableCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .array-data 1
    .end array-data
.end method
