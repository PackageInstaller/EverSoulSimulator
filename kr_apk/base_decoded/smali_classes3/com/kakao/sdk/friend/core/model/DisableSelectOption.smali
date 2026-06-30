.class public final Lcom/kakao/sdk/friend/core/model/DisableSelectOption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B-\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
        "Landroid/os/Parcelable;",
        "reason",
        "Lcom/kakao/sdk/friend/core/model/DisableSelectReason;",
        "message",
        "",
        "uuids",
        "",
        "(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;Ljava/lang/String;Ljava/util/List;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "getReason",
        "()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;",
        "setReason",
        "(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;)V",
        "getUuids",
        "()Ljava/util/List;",
        "setUuids",
        "(Ljava/util/List;)V",
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
            "Lcom/kakao/sdk/friend/core/model/DisableSelectOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final message:Ljava/lang/String;

.field private reason:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

.field private uuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption$Creator;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption$Creator;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;)V
    .locals 7

    const-string v0, "reason"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;-><init>(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;Ljava/lang/String;)V
    .locals 7

    const-string v0, "reason"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;-><init>(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/friend/core/model/DisableSelectReason;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reason"

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->reason:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->uuids:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;-><init>(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;Ljava/lang/String;Ljava/util/List;)V

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

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->message:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getReason()Lcom/kakao/sdk/friend/core/model/DisableSelectReason;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->reason:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->uuids:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setReason(Lcom/kakao/sdk/friend/core/model/DisableSelectReason;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->reason:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setUuids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->uuids:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->reason:Lcom/kakao/sdk/friend/core/model/DisableSelectReason;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/model/DisableSelectOption;->uuids:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
