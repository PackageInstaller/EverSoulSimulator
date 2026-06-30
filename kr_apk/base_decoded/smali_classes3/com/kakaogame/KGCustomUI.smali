.class public final Lcom/kakaogame/KGCustomUI;
.super Ljava/lang/Object;
.source "KGCustomUI.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGCustomUI$KGCustomAlert;,
        Lcom/kakaogame/KGCustomUI$KGCustomAlertCallback;,
        Lcom/kakaogame/KGCustomUI$KGCustomAlertType;,
        Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\u000c\r\u000e\u000fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/KGCustomUI;",
        "",
        "<init>",
        "()V",
        "ACTION_CLOSE",
        "",
        "registerShowCustomAlertHandler",
        "",
        "type",
        "Lcom/kakaogame/KGCustomUI$KGCustomAlertType;",
        "handler",
        "Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;",
        "KGCustomAlertType",
        "KGShowCustomAlertHandler",
        "KGCustomAlertCallback",
        "KGCustomAlert",
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
.field public static final ACTION_CLOSE:Ljava/lang/String; = "customUI_close"

.field public static final INSTANCE:Lcom/kakaogame/KGCustomUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/KGCustomUI;

    invoke-direct {v0}, Lcom/kakaogame/KGCustomUI;-><init>()V

    sput-object v0, Lcom/kakaogame/KGCustomUI;->INSTANCE:Lcom/kakaogame/KGCustomUI;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final registerShowCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 119
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/core/CoreManager;->registerShowCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;)V

    return-void

    .array-data 1
    .end array-data
.end method
