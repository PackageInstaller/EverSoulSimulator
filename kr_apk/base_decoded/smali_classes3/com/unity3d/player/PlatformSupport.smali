.class public Lcom/unity3d/player/PlatformSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MARSHMALLOW_SUPPORT:Z

.field static final NOUGAT_SUPPORT:Z

.field static final PIE_SUPPORT:Z

.field static final RED_VELVET_CAKE_SUPPORT:Z

.field static final SNOW_CONE_SUPPORT:Z

.field static final TIRAMISU_SUPPORT:Z

.field static final UPSIDE_DOWN_CAKE_SUPPORT:Z

.field static final VANILLA_ICE_CREAM_SUPPORT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/unity3d/player/PlatformSupport;->MARSHMALLOW_SUPPORT:Z

    sput-boolean v1, Lcom/unity3d/player/PlatformSupport;->NOUGAT_SUPPORT:Z

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/unity3d/player/PlatformSupport;->PIE_SUPPORT:Z

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sput-boolean v2, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    sput-boolean v2, Lcom/unity3d/player/PlatformSupport;->SNOW_CONE_SUPPORT:Z

    const/16 v2, 0x21

    if-lt v0, v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    sput-boolean v2, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    const/16 v2, 0x22

    if-lt v0, v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    sput-boolean v2, Lcom/unity3d/player/PlatformSupport;->UPSIDE_DOWN_CAKE_SUPPORT:Z

    const/16 v2, 0x23

    if-lt v0, v2, :cond_5

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    sput-boolean v1, Lcom/unity3d/player/PlatformSupport;->VANILLA_ICE_CREAM_SUPPORT:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
