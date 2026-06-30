.class public final Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;
.super Ljava/lang/Object;
.source "LoginUIManager.kt"

# interfaces
.implements Lcom/kakaogame/KGResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/auth/view/LoginUIManager;->showLoginDialog(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kakaogame/KGResultCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1",
        "Lcom/kakaogame/KGResultCallback;",
        "Ljava/lang/Void;",
        "onResult",
        "",
        "result",
        "Lcom/kakaogame/KGResult;",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $idpCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

.field final synthetic $traceJobId:I


# direct methods
.method public static synthetic $r8$lambda$Eh-OFnZ_bAJLVVJc14W8-pv2pS8(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->onResult$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Y8Qahytny0uZtbNRKFr8IY6h4s4(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->onResult$lambda$1(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$idpCodes:Ljava/util/List;

    iput-object p4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iput p5, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$traceJobId:I

    .line 2299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onResult$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;Landroid/content/DialogInterface;)V
    .locals 0

    .line 2439
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onResult$lambda$1(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 6

    .line 2519
    sget-object v0, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/kakaogame/auth/view/LoginUIManager;->access$showLoginDialog(Lcom/kakaogame/auth/view/LoginUIManager;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onResult(Lcom/kakaogame/KGResult;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 2329
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x193

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1cf

    if-eq v0, v1, :cond_4

    const/16 v1, 0xfdc

    if-eq v0, v1, :cond_4

    .line 2479
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2489
    sget-object v3, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    iget-object v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$idpCodes:Ljava/util/List;

    iget-object v6, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iget v7, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$traceJobId:I

    iget-object v8, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v3 .. v8}, Lcom/kakaogame/auth/view/LoginUIManager;->access$showLoginDialog(Lcom/kakaogame/auth/view/LoginUIManager;Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 2509
    :cond_2
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$idpCodes:Ljava/util/List;

    iget-object v6, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    iget v7, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$traceJobId:I

    iget-object v8, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    new-instance v9, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2, p1, v1, v9}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 2389
    :cond_3
    sget-object v0, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    .line 2399
    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$activity:Landroid/app/Activity;

    .line 2409
    sget-object v3, Lcom/kakaogame/auth/view/LoginUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LoginUIManager;

    iget-object v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$activity:Landroid/app/Activity;

    check-cast v4, Landroid/content/Context;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/kakaogame/auth/view/LoginUIManager;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 2389
    iget-object v4, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    new-instance v5, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, p1}, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/kakaogame/KGResult;)V

    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/kakaogame/ui/DialogManager;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;ZLandroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 2359
    :cond_4
    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$showLoginDialog$loginIDPListDialog$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method
