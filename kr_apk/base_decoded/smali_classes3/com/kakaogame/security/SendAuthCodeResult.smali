.class public final Lcom/kakaogame/security/SendAuthCodeResult;
.super Ljava/lang/Object;
.source "SecondaryPWService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kakaogame/security/SendAuthCodeResult;",
        "",
        "isSend",
        "",
        "authType",
        "Lcom/kakaogame/security/SendAuthType;",
        "authKey",
        "",
        "<init>",
        "(ZLcom/kakaogame/security/SendAuthType;Ljava/lang/String;)V",
        "()Z",
        "getAuthType",
        "()Lcom/kakaogame/security/SendAuthType;",
        "getAuthKey",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "security_release"
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
.field private final authKey:Ljava/lang/String;

.field private final authType:Lcom/kakaogame/security/SendAuthType;

.field private final isSend:Z


# direct methods
.method public constructor <init>(ZLcom/kakaogame/security/SendAuthType;Ljava/lang/String;)V
    .locals 1

    const v0, 0x33619deb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x54366e22

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5569
    iput-boolean p1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->isSend:Z

    .line 5579
    iput-object p2, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authType:Lcom/kakaogame/security/SendAuthType;

    .line 5589
    iput-object p3, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authKey:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ZLcom/kakaogame/security/SendAuthType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 5579
    sget-object p2, Lcom/kakaogame/security/SendAuthType;->TALK:Lcom/kakaogame/security/SendAuthType;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 5559
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/security/SendAuthCodeResult;-><init>(ZLcom/kakaogame/security/SendAuthType;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakaogame/security/SendAuthCodeResult;ZLcom/kakaogame/security/SendAuthType;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/security/SendAuthCodeResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->isSend:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authType:Lcom/kakaogame/security/SendAuthType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authKey:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakaogame/security/SendAuthCodeResult;->copy(ZLcom/kakaogame/security/SendAuthType;Ljava/lang/String;)Lcom/kakaogame/security/SendAuthCodeResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakaogame/security/SendAuthCodeResult;->isSend:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Lcom/kakaogame/security/SendAuthType;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authType:Lcom/kakaogame/security/SendAuthType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authKey:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(ZLcom/kakaogame/security/SendAuthType;Ljava/lang/String;)Lcom/kakaogame/security/SendAuthCodeResult;
    .locals 1

    const v0, 0x33619deb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x54366e22

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakaogame/security/SendAuthCodeResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/kakaogame/security/SendAuthCodeResult;-><init>(ZLcom/kakaogame/security/SendAuthType;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakaogame/security/SendAuthCodeResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakaogame/security/SendAuthCodeResult;

    iget-boolean v1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->isSend:Z

    iget-boolean v3, p1, Lcom/kakaogame/security/SendAuthCodeResult;->isSend:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authType:Lcom/kakaogame/security/SendAuthType;

    iget-object v3, p1, Lcom/kakaogame/security/SendAuthCodeResult;->authType:Lcom/kakaogame/security/SendAuthType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakaogame/security/SendAuthCodeResult;->authKey:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getAuthKey()Ljava/lang/String;
    .locals 1

    .line 5589
    iget-object v0, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authKey:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAuthType()Lcom/kakaogame/security/SendAuthType;
    .locals 1

    .line 5579
    iget-object v0, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authType:Lcom/kakaogame/security/SendAuthType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/kakaogame/security/SendAuthCodeResult;->isSend:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authType:Lcom/kakaogame/security/SendAuthType;

    invoke-virtual {v1}, Lcom/kakaogame/security/SendAuthType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isSend()Z
    .locals 1

    .line 5569
    iget-boolean v0, p0, Lcom/kakaogame/security/SendAuthCodeResult;->isSend:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x54366e6a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->isSend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225a640e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authType:Lcom/kakaogame/security/SendAuthType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1f4717

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/security/SendAuthCodeResult;->authKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
