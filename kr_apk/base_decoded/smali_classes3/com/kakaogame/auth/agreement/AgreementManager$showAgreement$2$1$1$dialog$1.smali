.class final Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;
.super Ljava/lang/Object;
.source "AgreementManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/kakaogame/KGResult<",
        "Ljava/lang/String;",
        ">;",
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

.field final synthetic $checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $traceJobId:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    iput p3, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$traceJobId:I

    iput-object p4, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1949
    check-cast p1, Lcom/kakaogame/KGResult;

    invoke-virtual {p0, p1}, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->invoke(Lcom/kakaogame/KGResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lcom/kakaogame/KGResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x5439984a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1959
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1969
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    .line 1979
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/kakaogame/auth/agreement/AgreementManager;->setAgreements(Landroid/content/Context;Ljava/lang/String;)V

    .line 2009
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$checkType:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    sget-object v0, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;->AUTO_LOGIN:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    if-ne p1, v0, :cond_0

    .line 2019
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    iget v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$traceJobId:I

    invoke-static {p1, v0}, Lcom/kakaogame/auth/agreement/AgreementManager;->saveAgreementInfo(Landroid/content/Context;I)Lcom/kakaogame/KGResult;

    .line 2039
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 2059
    :cond_1
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    const/16 v1, 0x26ac

    if-ne v0, v1, :cond_2

    .line 2069
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 2089
    :cond_2
    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AgreementManager$showAgreement$2$1$1$dialog$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
