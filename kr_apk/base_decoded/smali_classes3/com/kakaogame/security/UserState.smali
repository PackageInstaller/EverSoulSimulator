.class public final Lcom/kakaogame/security/UserState;
.super Ljava/lang/Object;
.source "SecondaryPWService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kakaogame/security/UserState;",
        "",
        "isRegistered",
        "",
        "isBlocked",
        "blockMin",
        "",
        "blockSec",
        "<init>",
        "(ZZII)V",
        "()Z",
        "getBlockMin",
        "()I",
        "getBlockSec",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final blockMin:I

.field private final blockSec:I

.field private final isBlocked:Z

.field private final isRegistered:Z


# direct methods
.method public constructor <init>(ZZII)V
    .locals 0

    .line 5359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5369
    iput-boolean p1, p0, Lcom/kakaogame/security/UserState;->isRegistered:Z

    .line 5379
    iput-boolean p2, p0, Lcom/kakaogame/security/UserState;->isBlocked:Z

    .line 5389
    iput p3, p0, Lcom/kakaogame/security/UserState;->blockMin:I

    .line 5399
    iput p4, p0, Lcom/kakaogame/security/UserState;->blockSec:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 5359
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/security/UserState;-><init>(ZZII)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakaogame/security/UserState;ZZIIILjava/lang/Object;)Lcom/kakaogame/security/UserState;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/kakaogame/security/UserState;->isRegistered:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/kakaogame/security/UserState;->isBlocked:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/kakaogame/security/UserState;->blockMin:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/kakaogame/security/UserState;->blockSec:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakaogame/security/UserState;->copy(ZZII)Lcom/kakaogame/security/UserState;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakaogame/security/UserState;->isRegistered:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kakaogame/security/UserState;->isBlocked:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/kakaogame/security/UserState;->blockMin:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/kakaogame/security/UserState;->blockSec:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(ZZII)Lcom/kakaogame/security/UserState;
    .locals 1

    new-instance v0, Lcom/kakaogame/security/UserState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/kakaogame/security/UserState;-><init>(ZZII)V

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
    instance-of v1, p1, Lcom/kakaogame/security/UserState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakaogame/security/UserState;

    iget-boolean v1, p0, Lcom/kakaogame/security/UserState;->isRegistered:Z

    iget-boolean v3, p1, Lcom/kakaogame/security/UserState;->isRegistered:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/kakaogame/security/UserState;->isBlocked:Z

    iget-boolean v3, p1, Lcom/kakaogame/security/UserState;->isBlocked:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/kakaogame/security/UserState;->blockMin:I

    iget v3, p1, Lcom/kakaogame/security/UserState;->blockMin:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/kakaogame/security/UserState;->blockSec:I

    iget p1, p1, Lcom/kakaogame/security/UserState;->blockSec:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getBlockMin()I
    .locals 1

    .line 5389
    iget v0, p0, Lcom/kakaogame/security/UserState;->blockMin:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getBlockSec()I
    .locals 1

    .line 5399
    iget v0, p0, Lcom/kakaogame/security/UserState;->blockSec:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/kakaogame/security/UserState;->isRegistered:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/kakaogame/security/UserState;->isBlocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/kakaogame/security/UserState;->blockMin:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/kakaogame/security/UserState;->blockSec:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public final isBlocked()Z
    .locals 1

    .line 5379
    iget-boolean v0, p0, Lcom/kakaogame/security/UserState;->isBlocked:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isRegistered()Z
    .locals 1

    .line 5369
    iget-boolean v0, p0, Lcom/kakaogame/security/UserState;->isRegistered:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x336dca03

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kakaogame/security/UserState;->isRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1f46cf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kakaogame/security/UserState;->isBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x6d0375d0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kakaogame/security/UserState;->blockMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x54366ae2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kakaogame/security/UserState;->blockSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
