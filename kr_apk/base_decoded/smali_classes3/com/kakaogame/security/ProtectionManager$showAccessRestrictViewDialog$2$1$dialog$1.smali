.class final Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;
.super Ljava/lang/Object;
.source "ProtectionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
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

.field final synthetic $appScreenOrientation:I

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


# direct methods
.method constructor <init>(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;->$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;->$appScreenOrientation:I

    iput-object p3, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 5339
    invoke-virtual {p0}, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final invoke()V
    .locals 3

    .line 5369
    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;->$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;->$appScreenOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 5379
    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$showAccessRestrictViewDialog$2$1$dialog$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfad

    invoke-virtual {v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
