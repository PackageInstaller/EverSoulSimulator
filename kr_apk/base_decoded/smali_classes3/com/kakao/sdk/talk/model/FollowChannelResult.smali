.class public final Lcom/kakao/sdk/talk/model/FollowChannelResult;
.super Ljava/lang/Object;
.source "FollowChannelResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
        "",
        "success",
        "",
        "channelPublicId",
        "",
        "(ZLjava/lang/String;)V",
        "getChannelPublicId",
        "()Ljava/lang/String;",
        "getSuccess",
        "()Z",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "talk_release"
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
.field public static final Companion:Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;


# instance fields
.field private final channelPublicId:Ljava/lang/String;

.field private final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->Companion:Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "channelPublicId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->success:Z

    iput-object p2, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->channelPublicId:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/talk/model/FollowChannelResult;ZLjava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/talk/model/FollowChannelResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->success:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->channelPublicId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/talk/model/FollowChannelResult;->copy(ZLjava/lang/String;)Lcom/kakao/sdk/talk/model/FollowChannelResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->success:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->channelPublicId:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(ZLjava/lang/String;)Lcom/kakao/sdk/talk/model/FollowChannelResult;
    .locals 1

    const-string v0, "channelPublicId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/talk/model/FollowChannelResult;

    invoke-direct {v0, p1, p2}, Lcom/kakao/sdk/talk/model/FollowChannelResult;-><init>(ZLjava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/talk/model/FollowChannelResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/talk/model/FollowChannelResult;

    iget-boolean v1, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->success:Z

    iget-boolean v3, p1, Lcom/kakao/sdk/talk/model/FollowChannelResult;->success:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->channelPublicId:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakao/sdk/talk/model/FollowChannelResult;->channelPublicId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getChannelPublicId()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->channelPublicId:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSuccess()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->success:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->channelPublicId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->success:Z

    iget-object v1, p0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->channelPublicId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FollowChannelResult(success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", channelPublicId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
