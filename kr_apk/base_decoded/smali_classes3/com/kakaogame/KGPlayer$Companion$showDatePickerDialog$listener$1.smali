.class public final Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$listener$1;
.super Ljava/lang/Object;
.source "KGPlayer.kt"

# interfaces
.implements Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/KGPlayer$Companion;->showDatePickerDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
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
        "com/kakaogame/KGPlayer$Companion$showDatePickerDialog$listener$1",
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
.field final synthetic $callback:Lcom/kakaogame/KGResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGPlayer$KGDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kakaogame/KGResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGPlayer$KGDate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$listener$1;->$callback:Lcom/kakaogame/KGResultCallback;

    .line 3179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onDatePick(III)V
    .locals 1

    .line 3199
    new-instance v0, Lcom/kakaogame/KGPlayer$KGDate;

    invoke-direct {v0, p1, p2, p3}, Lcom/kakaogame/KGPlayer$KGDate;-><init>(III)V

    .line 3209
    iget-object p1, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$listener$1;->$callback:Lcom/kakaogame/KGResultCallback;

    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onUserCanceled()V
    .locals 4

    .line 3249
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/4 v1, 0x0

    const/16 v2, 0x2329

    const v3, 0x54381432

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 3259
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x5d113d2f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    iget-object v1, p0, Lcom/kakaogame/KGPlayer$Companion$showDatePickerDialog$listener$1;->$callback:Lcom/kakaogame/KGResultCallback;

    invoke-interface {v1, v0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    return-void

    .array-data 1
    .end array-data
.end method
