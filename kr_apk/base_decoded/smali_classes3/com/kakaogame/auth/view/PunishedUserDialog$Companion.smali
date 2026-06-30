.class public final Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;
.super Ljava/lang/Object;
.source "PunishedUserDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/view/PunishedUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;",
        "",
        "<init>",
        "()V",
        "RESULT_EMAIL",
        "",
        "getRESULT_EMAIL",
        "()Ljava/lang/String;",
        "RESULT_UNREGISTERED",
        "getRESULT_UNREGISTERED",
        "RESULT_TERMINATE",
        "getRESULT_TERMINATE",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/auth/view/PunishedUserDialog$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRESULT_EMAIL()Ljava/lang/String;
    .locals 1

    .line 499
    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->access$getRESULT_EMAIL$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRESULT_TERMINATE()Ljava/lang/String;
    .locals 1

    .line 519
    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->access$getRESULT_TERMINATE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRESULT_UNREGISTERED()Ljava/lang/String;
    .locals 1

    .line 509
    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog;->access$getRESULT_UNREGISTERED$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
