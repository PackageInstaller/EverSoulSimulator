.class public Lcom/unity3d/player/MultiWindowSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static s_LastMultiWindowMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/unity3d/player/PlatformSupport;->NOUGAT_SUPPORT:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    :cond_1
    return v0

    .array-data 1
    .end array-data
.end method

.method public static isMultiWindowModeChangedToTrue(Landroid/app/Activity;)Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/MultiWindowSupport;->s_LastMultiWindowMode:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .array-data 1
    .end array-data
.end method

.method public static saveMultiWindowMode(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    sput-boolean p0, Lcom/unity3d/player/MultiWindowSupport;->s_LastMultiWindowMode:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method
