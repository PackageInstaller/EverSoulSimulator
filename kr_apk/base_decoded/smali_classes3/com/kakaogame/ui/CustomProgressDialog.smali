.class public final Lcom/kakaogame/ui/CustomProgressDialog;
.super Ljava/lang/Object;
.source "CustomProgressDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakaogame/ui/CustomProgressDialog;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "dialog",
        "Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;",
        "show",
        "",
        "dismiss",
        "CustomProgressDialogImpl",
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
.field private final context:Landroid/content/Context;

.field private dialog:Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/ui/CustomProgressDialog;->context:Landroid/content/Context;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getContext$p(Lcom/kakaogame/ui/CustomProgressDialog;)Landroid/content/Context;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/kakaogame/ui/CustomProgressDialog;->context:Landroid/content/Context;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getDialog$p(Lcom/kakaogame/ui/CustomProgressDialog;)Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/kakaogame/ui/CustomProgressDialog;->dialog:Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setDialog$p(Lcom/kakaogame/ui/CustomProgressDialog;Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/kakaogame/ui/CustomProgressDialog;->dialog:Lcom/kakaogame/ui/CustomProgressDialog$CustomProgressDialogImpl;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final dismiss()V
    .locals 7

    .line 309
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/ui/CustomProgressDialog$dismiss$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/kakaogame/ui/CustomProgressDialog$dismiss$1;-><init>(Lcom/kakaogame/ui/CustomProgressDialog;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final show()V
    .locals 7

    .line 169
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/ui/CustomProgressDialog$show$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/kakaogame/ui/CustomProgressDialog$show$1;-><init>(Lcom/kakaogame/ui/CustomProgressDialog;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
