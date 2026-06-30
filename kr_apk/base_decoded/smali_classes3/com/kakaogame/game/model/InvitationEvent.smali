.class public final Lcom/kakaogame/game/model/InvitationEvent;
.super Ljava/lang/Object;
.source "InvitationEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0019\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010(\u001a\u00020\u000e2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010*\u001a\u00020\tH\u00d6\u0001J\t\u0010+\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0015\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0015\u0010\u0018\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\u0019\u0010\u000bR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0015\"\u0004\u0008 \u0010!R\u001e\u0010\"\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000c\u001a\u0004\u0008#\u0010\u000b\"\u0004\u0008$\u0010%\u00a8\u0006,"
    }
    d2 = {
        "Lcom/kakaogame/game/model/InvitationEvent;",
        "",
        "body",
        "Lorg/json/JSONObject;",
        "<init>",
        "(Lorg/json/JSONObject;)V",
        "getBody",
        "()Lorg/json/JSONObject;",
        "id",
        "",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "enabled",
        "",
        "getEnabled",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "startsAt",
        "",
        "getStartsAt",
        "()Ljava/lang/String;",
        "endsAt",
        "getEndsAt",
        "maxSenderRewardsCount",
        "getMaxSenderRewardsCount",
        "senderReward",
        "getSenderReward",
        "receiverReward",
        "getReceiverReward",
        "invitationUrl",
        "getInvitationUrl",
        "setInvitationUrl",
        "(Ljava/lang/String;)V",
        "totalReceiversCount",
        "getTotalReceiversCount",
        "setTotalReceiversCount",
        "(Ljava/lang/Integer;)V",
        "component1",
        "copy",
        "equals",
        "other",
        "hashCode",
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

.field private final enabled:Ljava/lang/Boolean;

.field private final endsAt:Ljava/lang/String;

.field private final id:Ljava/lang/Integer;

.field private invitationUrl:Ljava/lang/String;

.field private final maxSenderRewardsCount:Ljava/lang/Integer;

.field private final receiverReward:Ljava/lang/String;

.field private final senderReward:Ljava/lang/String;

.field private final startsAt:Ljava/lang/String;

.field private totalReceiversCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const v0, 0x3365c943

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/game/model/InvitationEvent;->body:Lorg/json/JSONObject;

    const v0, 0x543effa2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->id:Ljava/lang/Integer;

    const v0, -0x2240d4ec

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->enabled:Ljava/lang/Boolean;

    const v0, 0x543b1f42

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->startsAt:Ljava/lang/String;

    const v0, -0x451b710f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->endsAt:Ljava/lang/String;

    const v0, 0x6d0e03a8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->maxSenderRewardsCount:Ljava/lang/Integer;

    const v0, 0x22571696

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->senderReward:Ljava/lang/String;

    const v0, 0x7d721f05

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->receiverReward:Ljava/lang/String;

    const v0, 0x3360bc93

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x5d12318f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/kakaogame/game/model/InvitationEvent;->invitationUrl:Ljava/lang/String;

    .line 189
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, -0x2240d03c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/kakaogame/game/model/InvitationEvent;->totalReceiversCount:Ljava/lang/Integer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakaogame/game/model/InvitationEvent;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/kakaogame/game/model/InvitationEvent;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/kakaogame/game/model/InvitationEvent;->body:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakaogame/game/model/InvitationEvent;->copy(Lorg/json/JSONObject;)Lcom/kakaogame/game/model/InvitationEvent;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->body:Lorg/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Lorg/json/JSONObject;)Lcom/kakaogame/game/model/InvitationEvent;
    .locals 1

    const v0, 0x3365c943

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakaogame/game/model/InvitationEvent;

    invoke-direct {v0, p1}, Lcom/kakaogame/game/model/InvitationEvent;-><init>(Lorg/json/JSONObject;)V

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
    instance-of v1, p1, Lcom/kakaogame/game/model/InvitationEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakaogame/game/model/InvitationEvent;

    iget-object v1, p0, Lcom/kakaogame/game/model/InvitationEvent;->body:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/kakaogame/game/model/InvitationEvent;->body:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->body:Lorg/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->enabled:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEndsAt()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->endsAt:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->id:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getInvitationUrl()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->invitationUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMaxSenderRewardsCount()Ljava/lang/Integer;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->maxSenderRewardsCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getReceiverReward()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->receiverReward:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSenderReward()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->senderReward:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getStartsAt()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->startsAt:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTotalReceiversCount()Ljava/lang/Integer;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->totalReceiversCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationEvent;->body:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setInvitationUrl(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/kakaogame/game/model/InvitationEvent;->invitationUrl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTotalReceiversCount(Ljava/lang/Integer;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/kakaogame/game/model/InvitationEvent;->totalReceiversCount:Ljava/lang/Integer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x3360bec3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/game/model/InvitationEvent;->body:Lorg/json/JSONObject;

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
