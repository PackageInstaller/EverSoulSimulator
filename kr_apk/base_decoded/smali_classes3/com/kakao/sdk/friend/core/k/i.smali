.class public abstract Lcom/kakao/sdk/friend/core/k/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kakao/sdk/friend/core/k/j;I)I
    .locals 1

    .line 19
    invoke-interface {p0}, Lcom/kakao/sdk/friend/core/k/j;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/kakao/sdk/friend/core/k/j;->d()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    if-ne p1, p0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/16 p0, 0x9

    if-ne p1, p0, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method
