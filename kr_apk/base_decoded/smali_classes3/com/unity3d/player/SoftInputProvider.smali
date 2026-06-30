.class abstract Lcom/unity3d/player/SoftInputProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 6

    invoke-static {}, Lcom/unity3d/player/SoftInputProvider;->nativeGetSoftInputType()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/unity3d/player/a/a;->b(I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-static {v4}, Lcom/unity3d/player/a/d;->a(I)I

    move-result v5

    if-ne v5, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_1
    return v4

    nop

    .array-data 1
    .end array-data
.end method

.method private static final native nativeGetSoftInputType()I
.end method
