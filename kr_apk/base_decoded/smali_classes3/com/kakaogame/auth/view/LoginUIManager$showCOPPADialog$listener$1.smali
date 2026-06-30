.class public final Lcom/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1;
.super Ljava/lang/Object;
.source "LoginUIManager.kt"

# interfaces
.implements Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/view/LoginUIManager;->showCOPPADialog(Landroid/app/Activity;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1",
        "Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;",
        "onDatePick",
        "",
        "year",
        "",
        "month",
        "day",
        "onUserCanceled",
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


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $limitAge:I


# direct methods
.method constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1;->$limitAge:I

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onDatePick(III)V
    .locals 2

    .line 769
    sget-object v0, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    iget v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1;->$limitAge:I

    invoke-static {v0, p1, p2, p3, v1}, Lcom/kakaogame/auth/view/LoginUIManager;->access$isUpAge(Lcom/kakaogame/auth/view/LoginUIManager;IIII)Z

    move-result p1

    .line 779
    iget-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1;->$callback:Lkotlin/jvm/functions/Function1;

    sget-object p3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public onUserCanceled()V
    .locals 5

    .line 819
    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$showCOPPADialog$listener$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 829
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/4 v2, 0x0

    .line 859
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x2329

    const v4, 0x54381432

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    .line 829
    invoke-virtual {v1, v3, v4, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 819
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
