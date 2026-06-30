.class public final Lcom/kakaogame/game/model/InvitationSender;
.super Ljava/lang/Object;
.source "InvitationSender.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\tH\u00d6\u0001J\t\u0010\"\u001a\u00020\u000eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010R\u0015\u0010\u001a\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\u001b\u0010\u000b\u00a8\u0006#"
    }
    d2 = {
        "Lcom/kakaogame/game/model/InvitationSender;",
        "",
        "body",
        "Lorg/json/JSONObject;",
        "<init>",
        "(Lorg/json/JSONObject;)V",
        "getBody",
        "()Lorg/json/JSONObject;",
        "invitationEventId",
        "",
        "getInvitationEventId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "invitationUrl",
        "",
        "getInvitationUrl",
        "()Ljava/lang/String;",
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "profileImageUrl",
        "getProfileImageUrl",
        "nickname",
        "getNickname",
        "totalReceiversCount",
        "getTotalReceiversCount",
        "component1",
        "copy",
        "equals",
        "",
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

.field private final invitationEventId:Ljava/lang/Integer;

.field private final invitationUrl:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;

.field private final profileImageUrl:Ljava/lang/String;

.field private final totalReceiversCount:Ljava/lang/Integer;

.field private final userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    const v0, 0x3365c943

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/game/model/InvitationSender;->body:Lorg/json/JSONObject;

    const v0, 0x5d12339f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x543effa2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->invitationEventId:Ljava/lang/Integer;

    const v0, 0x5d12318f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->invitationUrl:Ljava/lang/String;

    const v0, 0x3364485b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->userId:Ljava/lang/Long;

    const v0, -0x451b747f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->profileImageUrl:Ljava/lang/String;

    const v0, -0x2244c0e4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->nickname:Ljava/lang/String;

    const v0, -0x2240d03c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/game/model/InvitationSender;->totalReceiversCount:Ljava/lang/Integer;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakaogame/game/model/InvitationSender;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/kakaogame/game/model/InvitationSender;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/kakaogame/game/model/InvitationSender;->body:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakaogame/game/model/InvitationSender;->copy(Lorg/json/JSONObject;)Lcom/kakaogame/game/model/InvitationSender;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->body:Lorg/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Lorg/json/JSONObject;)Lcom/kakaogame/game/model/InvitationSender;
    .locals 1

    const v0, 0x3365c943

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakaogame/game/model/InvitationSender;

    invoke-direct {v0, p1}, Lcom/kakaogame/game/model/InvitationSender;-><init>(Lorg/json/JSONObject;)V

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
    instance-of v1, p1, Lcom/kakaogame/game/model/InvitationSender;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakaogame/game/model/InvitationSender;

    iget-object v1, p0, Lcom/kakaogame/game/model/InvitationSender;->body:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/kakaogame/game/model/InvitationSender;->body:Lorg/json/JSONObject;

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
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->body:Lorg/json/JSONObject;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getInvitationEventId()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->invitationEventId:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getInvitationUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->invitationUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->nickname:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->profileImageUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTotalReceiversCount()Ljava/lang/Integer;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->totalReceiversCount:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUserId()Ljava/lang/Long;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->userId:Ljava/lang/Long;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/game/model/InvitationSender;->body:Lorg/json/JSONObject;

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

    const v1, 0x543b1962

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/game/model/InvitationSender;->body:Lorg/json/JSONObject;

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
