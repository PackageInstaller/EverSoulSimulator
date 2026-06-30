.class final enum Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;
.super Ljava/lang/Enum;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FullCornerDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

.field public static final enum BOTH:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

.field public static final enum LEFT:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

.field public static final enum NONE:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

.field public static final enum RIGHT:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2144
    new-instance v0, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    const-string v1, "BOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->BOTH:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    .line 2145
    new-instance v1, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->LEFT:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    .line 2146
    new-instance v3, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->RIGHT:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    .line 2147
    new-instance v5, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->NONE:Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2143
    sput-object v7, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->$VALUES:[Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;
    .locals 1

    .line 2143
    const-class v0, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;
    .locals 1

    .line 2143
    sget-object v0, Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->$VALUES:[Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    invoke-virtual {v0}, [Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/slider/BaseSlider$FullCornerDirection;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
