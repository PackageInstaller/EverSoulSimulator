.class final Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;
.super Ljava/lang/Object;
.source "ProtectionManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/security/ProtectionManager;->showAccessRestrictViewDialog(Landroid/app/Activity;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $min:I

.field final synthetic $second:I


# direct methods
.method constructor <init>(Landroid/app/Activity;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$min:I

    iput p3, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$second:I

    iput-object p4, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 5289
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 5299
    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$activity:Landroid/app/Activity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 5309
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailLimitCount()I

    move-result v1

    .line 5319
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPinFailBlockTime()I

    move-result v2

    .line 5329
    iget v3, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$min:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$second:I

    add-int/2addr v3, v4

    .line 5339
    new-instance v4, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;

    .line 5349
    iget-object v5, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$activity:Landroid/app/Activity;

    .line 5359
    new-instance v6, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;

    iget-object v7, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$activity:Landroid/app/Activity;

    invoke-direct {v6, v7, v1, v2, v3}, Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;-><init>(Landroid/app/Activity;III)V

    .line 5339
    new-instance v1, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;

    iget-object v2, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {v1, v2, v0, v3}, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;-><init>(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v5, v6, v1}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/secondpw/viewdata/RestrictPopupViewData;Lkotlin/jvm/functions/Function0;)V

    .line 5399
    invoke-virtual {v4}, Lcom/kakaogame/secondpw/SecondPWRestrictViewDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5419
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const v4, 0x5d1f14df

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5429
    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v3, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
