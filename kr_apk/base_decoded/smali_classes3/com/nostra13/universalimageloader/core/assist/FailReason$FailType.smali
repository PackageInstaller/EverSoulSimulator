.class public final enum Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
.super Ljava/lang/Enum;
.source "FailReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/assist/FailReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field public static final enum UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 489
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const v1, 0x336c71bb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 549
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const v3, 0x5437d72a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 599
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const v5, 0x7d7ed685    # 2.117111E37f

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 619
    new-instance v5, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const v7, 0x225bdf6e

    invoke-static {v7}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    .line 639
    new-instance v7, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const v9, 0x33675e43

    invoke-static {v9}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 469
    sput-object v9, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-void

    nop

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

    .line 469
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .locals 1

    .line 469
    const-class v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    .locals 1

    .line 469
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
