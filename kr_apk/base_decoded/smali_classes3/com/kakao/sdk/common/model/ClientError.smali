.class public final Lcom/kakao/sdk/common/model/ClientError;
.super Lcom/kakao/sdk/common/model/KakaoSdkError;
.source "KakaoClientError.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ClientError;",
        "Lcom/kakao/sdk/common/model/KakaoSdkError;",
        "reason",
        "Lcom/kakao/sdk/common/model/ClientErrorCause;",
        "msg",
        "",
        "(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V",
        "getMsg",
        "()Ljava/lang/String;",
        "getReason",
        "()Lcom/kakao/sdk/common/model/ClientErrorCause;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final msg:Ljava/lang/String;

.field private final reason:Lcom/kakao/sdk/common/model/ClientErrorCause;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p2, v0}, Lcom/kakao/sdk/common/model/KakaoSdkError;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 259
    iput-object p1, p0, Lcom/kakao/sdk/common/model/ClientError;->reason:Lcom/kakao/sdk/common/model/ClientErrorCause;

    .line 269
    iput-object p2, p0, Lcom/kakao/sdk/common/model/ClientError;->msg:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1}, Lcom/kakao/sdk/common/model/ClientErrorCause;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const-class p3, Lcom/kakao/sdk/common/model/Description;

    .line 279
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/common/model/Description;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/kakao/sdk/common/model/Description;->value()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, "Client-side error"

    .line 249
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/common/model/ClientError;Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/common/model/ClientError;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/kakao/sdk/common/model/ClientError;->reason:Lcom/kakao/sdk/common/model/ClientErrorCause;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/common/model/ClientError;->copy(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)Lcom/kakao/sdk/common/model/ClientError;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Lcom/kakao/sdk/common/model/ClientErrorCause;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/common/model/ClientError;->reason:Lcom/kakao/sdk/common/model/ClientErrorCause;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)Lcom/kakao/sdk/common/model/ClientError;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    invoke-direct {v0, p1, p2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/kakao/sdk/common/model/ClientError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/common/model/ClientError;

    iget-object v1, p0, Lcom/kakao/sdk/common/model/ClientError;->reason:Lcom/kakao/sdk/common/model/ClientErrorCause;

    iget-object v3, p1, Lcom/kakao/sdk/common/model/ClientError;->reason:Lcom/kakao/sdk/common/model/ClientErrorCause;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object p1

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

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ClientError;->msg:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getReason()Lcom/kakao/sdk/common/model/ClientErrorCause;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ClientError;->reason:Lcom/kakao/sdk/common/model/ClientErrorCause;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/kakao/sdk/common/model/ClientError;->reason:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ClientErrorCause;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/kakao/sdk/common/model/ClientError;->reason:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/model/ClientError;->getMsg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClientError(reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", msg="

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
