.class public final Lcom/kakaogame/game/model/InvitationState;
.super Ljava/lang/Object;
.source "InvitationState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\t\u0010$\u001a\u00020\u000eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0010\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kakaogame/game/model/InvitationState;",
        "",
        "body",
        "Lorg/json/JSONObject;",
        "<init>",
        "(Lorg/json/JSONObject;)V",
        "getBody",
        "()Lorg/json/JSONObject;",
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "profileImageUrl",
        "",
        "getProfileImageUrl",
        "()Ljava/lang/String;",
        "nickname",
        "getNickname",
        "senderReward",
        "getSenderReward",
        "senderRewardState",
        "getSenderRewardState",
        "receiverReward",
        "getReceiverReward",
        "receiverRewardState",
        "getReceiverRewardState",
        "createdAt",
        "getCreatedAt",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "idp_kakao_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final body:Lorg/json/JSONObject;

.field private final createdAt:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;

.field private final profileImageUrl:Ljava/lang/String;

.field private final receiverReward:Ljava/lang/String;

.field private final receiverRewardState:Ljava/lang/String;

.field private final senderReward:Ljava/lang/String;

.field private final senderRewardState:Ljava/lang/String;

.field private final userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const v0, 0x3365c943

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/game/model/InvitationState;->body:Lorg/json/JSONObject;

    const v0, 0x3364485b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->userId:Ljava/lang/Long;

    const v0, -0x451b747f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->profileImageUrl:Ljava/lang/String;

    const v0, -0x2244c0e4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->nickname:Ljava/lang/String;

    const v0, 0x22571696

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->senderReward:Ljava/lang/String;

    const v0, 0x22571d66

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->senderRewardState:Ljava/lang/String;

    const v0, 0x7d721f05

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->receiverReward:Ljava/lang/String;

    const v0, 0x22571c8e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->receiverRewardState:Ljava/lang/String;

    const v0, -0x2240df74

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/game/model/InvitationState;->createdAt:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakaogame/game/model/InvitationState;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/kakaogame/game/model/InvitationState;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/kakaogame/game/model/InvitationState;->body:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakaogame/game/model/InvitationState;->copy(Lorg/json/JSONObject;)Lcom/kakaogame/game/model/InvitationState;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->body:Lorg/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Lorg/json/JSONObject;)Lcom/kakaogame/game/model/InvitationState;
    .locals 1

    const v0, 0x3365c943

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakaogame/game/model/InvitationState;

    invoke-direct {v0, p1}, Lcom/kakaogame/game/model/InvitationState;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakaogame/game/model/InvitationState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakaogame/game/model/InvitationState;

    iget-object v1, p0, Lcom/kakaogame/game/model/InvitationState;->body:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/kakaogame/game/model/InvitationState;->body:Lorg/json/JSONObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getBody()Lorg/json/JSONObject;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->body:Lorg/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->createdAt:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->nickname:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->profileImageUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getReceiverReward()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->receiverReward:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getReceiverRewardState()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->receiverRewardState:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSenderReward()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->senderReward:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSenderRewardState()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->senderRewardState:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUserId()Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->userId:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationState;->body:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x543b14e2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/game/model/InvitationState;->body:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
