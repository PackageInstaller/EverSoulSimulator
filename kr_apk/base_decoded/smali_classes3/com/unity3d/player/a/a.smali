.class public abstract synthetic Lcom/unity3d/player/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unity3d/player/a/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .array-data 1
    .end array-data
.end method

.method public static synthetic a(I)I
    .locals 0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic b(I)[I
    .locals 3

    new-array v0, p0, [I

    sget-object v1, Lcom/unity3d/player/a/a;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
