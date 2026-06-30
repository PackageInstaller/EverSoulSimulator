.class public final Lcom/kakaogame/coupon/CouponManager$CouponResultCode;
.super Ljava/lang/Object;
.source "CouponManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/coupon/CouponManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CouponResultCode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakaogame/coupon/CouponManager$CouponResultCode;",
        "",
        "<init>",
        "()V",
        "COUPON_INVALID",
        "",
        "COUPON_USED",
        "COUPON_SOLDOUT",
        "COUPON_EXPIRED",
        "COUPON_EXCEED",
        "COUPON_NOT_OWNER",
        "COUPON_IN_PROGRESSING",
        "COUPON_DDOS",
        "COUPON_SERVER_ERROR",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final COUPON_DDOS:I = 0x1d5

.field public static final COUPON_EXCEED:I = 0x1cf

.field public static final COUPON_EXPIRED:I = 0x1ce

.field public static final COUPON_INVALID:I = 0x193

.field public static final COUPON_IN_PROGRESSING:I = 0x1d1

.field public static final COUPON_NOT_OWNER:I = 0x1d0

.field public static final COUPON_SERVER_ERROR:I = 0x1f7

.field public static final COUPON_SOLDOUT:I = 0x1cd

.field public static final COUPON_USED:I = 0x1cc

.field public static final INSTANCE:Lcom/kakaogame/coupon/CouponManager$CouponResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/coupon/CouponManager$CouponResultCode;

    invoke-direct {v0}, Lcom/kakaogame/coupon/CouponManager$CouponResultCode;-><init>()V

    sput-object v0, Lcom/kakaogame/coupon/CouponManager$CouponResultCode;->INSTANCE:Lcom/kakaogame/coupon/CouponManager$CouponResultCode;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
