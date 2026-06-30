.class public final Lcom/kakao/sdk/friend/core/i/b;
.super Lcom/kakao/sdk/friend/core/i/c;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/i/c;-><init>()V

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/i/b;->a:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/i/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/friend/core/i/b;

    iget-boolean v1, p0, Lcom/kakao/sdk/friend/core/i/b;->a:Z

    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/i/b;->a:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/i/b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 19
    iget-boolean v0, p0, Lcom/kakao/sdk/friend/core/i/b;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SelectAll(isChecked="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
