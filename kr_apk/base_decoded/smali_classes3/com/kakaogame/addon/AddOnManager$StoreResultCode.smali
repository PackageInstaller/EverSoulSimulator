.class final Lcom/kakaogame/addon/AddOnManager$StoreResultCode;
.super Ljava/lang/Object;
.source "AddOnManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/addon/AddOnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StoreResultCode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/addon/AddOnManager$StoreResultCode;",
        "",
        "<init>",
        "()V",
        "SUCCESS",
        "",
        "INVALID_PARAMETER",
        "AUTHENTICATION_FAILED_TOKEN",
        "INVALID_APP_ID",
        "INVALID_PLAYER_ID",
        "INVALID_ITEM_ID",
        "INVALID_TRANSACTION_ID",
        "INVALID_PURCHASE_TOKEN",
        "INCOMPLETE_PAYMENT",
        "ALREADY_COMPLETE_ORDER",
        "SERVER_ERROR",
        "kakaogame_addon_release"
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
.field public static final ALREADY_COMPLETE_ORDER:I = 0x1e3

.field public static final AUTHENTICATION_FAILED_TOKEN:I = 0x191

.field public static final INCOMPLETE_PAYMENT:I = 0x1e2

.field public static final INSTANCE:Lcom/kakaogame/addon/AddOnManager$StoreResultCode;

.field public static final INVALID_APP_ID:I = 0x1cc

.field public static final INVALID_ITEM_ID:I = 0x1d6

.field public static final INVALID_PARAMETER:I = 0x190

.field public static final INVALID_PLAYER_ID:I = 0x1cd

.field public static final INVALID_PURCHASE_TOKEN:I = 0x1e1

.field public static final INVALID_TRANSACTION_ID:I = 0x1e0

.field public static final SERVER_ERROR:I = 0x1f4

.field public static final SUCCESS:I = 0xc8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/addon/AddOnManager$StoreResultCode;

    invoke-direct {v0}, Lcom/kakaogame/addon/AddOnManager$StoreResultCode;-><init>()V

    sput-object v0, Lcom/kakaogame/addon/AddOnManager$StoreResultCode;->INSTANCE:Lcom/kakaogame/addon/AddOnManager$StoreResultCode;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
