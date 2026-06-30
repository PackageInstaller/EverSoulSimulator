.class public final Lcom/kakao/sdk/friend/core/i/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/kakao/sdk/friend/core/i/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

.field public final e:Lcom/kakao/sdk/friend/core/i/q;

.field public final f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

.field public final g:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

.field public final h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

.field public final i:Landroid/os/ResultReceiver;

.field public final j:Lcom/kakao/sdk/friend/core/model/CustomSection;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/i/n;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/i/n;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/i/o;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(IZZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/i/q;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Landroid/os/ResultReceiver;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/kakao/sdk/friend/core/i/o;->a:I

    iput-boolean p2, p0, Lcom/kakao/sdk/friend/core/i/o;->b:Z

    iput-boolean p3, p0, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/i/o;->d:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/i/o;->e:Lcom/kakao/sdk/friend/core/i/q;

    iput-object p6, p0, Lcom/kakao/sdk/friend/core/i/o;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    iput-object p7, p0, Lcom/kakao/sdk/friend/core/i/o;->g:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    iput-object p8, p0, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    iput-object p9, p0, Lcom/kakao/sdk/friend/core/i/o;->i:Landroid/os/ResultReceiver;

    iput-object p10, p0, Lcom/kakao/sdk/friend/core/i/o;->j:Lcom/kakao/sdk/friend/core/model/CustomSection;

    iput-object p11, p0, Lcom/kakao/sdk/friend/core/i/o;->k:Ljava/util/List;

    iput-object p12, p0, Lcom/kakao/sdk/friend/core/i/o;->l:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(IZZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/i/q;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Landroid/os/ResultReceiver;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;I)V
    .locals 15

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v1}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_0
    move/from16 v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p11

    :goto_7
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p12

    :goto_8
    move-object v2, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v14}, Lcom/kakao/sdk/friend/core/i/o;-><init>(IZZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/i/q;Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;Lcom/kakao/sdk/friend/core/internal/InternalChatParams;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Landroid/os/ResultReceiver;Lcom/kakao/sdk/friend/core/model/CustomSection;Ljava/util/List;Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Landroid/os/ResultReceiver;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/o;->i:Landroid/os/ResultReceiver;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final b()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/kakao/sdk/friend/core/i/o;->a:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "out"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/kakao/sdk/friend/core/i/o;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/i/o;->b:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/i/o;->c:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/o;->d:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/o;->e:Lcom/kakao/sdk/friend/core/i/q;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/i/q;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/o;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/o;->g:Lcom/kakao/sdk/friend/core/internal/InternalChatParams;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/internal/InternalChatParams;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/o;->h:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/o;->i:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/o;->j:Lcom/kakao/sdk/friend/core/model/CustomSection;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/kakao/sdk/friend/core/model/CustomSection;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object p2, p0, Lcom/kakao/sdk/friend/core/i/o;->k:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/i/o;->l:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
