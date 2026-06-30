.class final Lcom/kakaogame/KGMessage$KGMessageResultCode;
.super Ljava/lang/Object;
.source "KGMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KGMessageResultCode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakaogame/KGMessage$KGMessageResultCode;",
        "",
        "<init>",
        "()V",
        "MESSAGE_BOX_ID_NOT_FOUND",
        "",
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
.field public static final INSTANCE:Lcom/kakaogame/KGMessage$KGMessageResultCode;

.field public static final MESSAGE_BOX_ID_NOT_FOUND:I = 0x1cd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/KGMessage$KGMessageResultCode;

    invoke-direct {v0}, Lcom/kakaogame/KGMessage$KGMessageResultCode;-><init>()V

    sput-object v0, Lcom/kakaogame/KGMessage$KGMessageResultCode;->INSTANCE:Lcom/kakaogame/KGMessage$KGMessageResultCode;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 2569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
