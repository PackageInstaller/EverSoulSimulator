.class public final Lcom/kakaogame/security/KeypadDataResult;
.super Ljava/lang/Object;
.source "SecondaryPWService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakaogame/security/KeypadDataResult;",
        "",
        "publicKeyString",
        "",
        "keypadRawDataList",
        "",
        "Lcom/kakaogame/security/KeypadRawData;",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;)V",
        "getPublicKeyString",
        "()Ljava/lang/String;",
        "getKeypadRawDataList",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private final keypadRawDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/security/KeypadRawData;",
            ">;"
        }
    .end annotation
.end field

.field private final publicKeyString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/kakaogame/security/KeypadRawData;",
            ">;)V"
        }
    .end annotation

    const v0, -0x224de8fc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543620b2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5629
    iput-object p1, p0, Lcom/kakaogame/security/KeypadDataResult;->publicKeyString:Ljava/lang/String;

    .line 5639
    iput-object p2, p0, Lcom/kakaogame/security/KeypadDataResult;->keypadRawDataList:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakaogame/security/KeypadDataResult;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/kakaogame/security/KeypadDataResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/kakaogame/security/KeypadDataResult;->publicKeyString:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/kakaogame/security/KeypadDataResult;->keypadRawDataList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/security/KeypadDataResult;->copy(Ljava/lang/String;Ljava/util/List;)Lcom/kakaogame/security/KeypadDataResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/security/KeypadDataResult;->publicKeyString:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/security/KeypadRawData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakaogame/security/KeypadDataResult;->keypadRawDataList:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;)Lcom/kakaogame/security/KeypadDataResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/kakaogame/security/KeypadRawData;",
            ">;)",
            "Lcom/kakaogame/security/KeypadDataResult;"
        }
    .end annotation

    const v0, -0x224de8fc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x543620b2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakaogame/security/KeypadDataResult;

    invoke-direct {v0, p1, p2}, Lcom/kakaogame/security/KeypadDataResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/kakaogame/security/KeypadDataResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakaogame/security/KeypadDataResult;

    iget-object v1, p0, Lcom/kakaogame/security/KeypadDataResult;->publicKeyString:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakaogame/security/KeypadDataResult;->publicKeyString:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakaogame/security/KeypadDataResult;->keypadRawDataList:Ljava/util/List;

    iget-object p1, p1, Lcom/kakaogame/security/KeypadDataResult;->keypadRawDataList:Ljava/util/List;

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

.method public final getKeypadRawDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/security/KeypadRawData;",
            ">;"
        }
    .end annotation

    .line 5639
    iget-object v0, p0, Lcom/kakaogame/security/KeypadDataResult;->keypadRawDataList:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPublicKeyString()Ljava/lang/String;
    .locals 1

    .line 5629
    iget-object v0, p0, Lcom/kakaogame/security/KeypadDataResult;->publicKeyString:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/security/KeypadDataResult;->publicKeyString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakaogame/security/KeypadDataResult;->keypadRawDataList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d1f0bef

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/security/KeypadDataResult;->publicKeyString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x45164cf7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/security/KeypadDataResult;->keypadRawDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
