.class public final Lcom/kakao/sdk/friend/core/l/c0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/m0;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/m0;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/c0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/c0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    .line 29
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez p1, :cond_0

    const-string/jumbo p1, "viewModel"

    .line 39
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    :cond_0
    iget v0, p1, Lcom/kakao/sdk/friend/core/m/k;->a:I

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/m/k;->g:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/kakao/sdk/friend/core/j/r;->b:Lcom/kakao/sdk/friend/core/j/r;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->g:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/m/k;->h:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/kakao/sdk/friend/core/j/r;->b:Lcom/kakao/sdk/friend/core/j/r;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->h:Landroidx/lifecycle/MutableLiveData;

    :goto_0
    sget-object v0, Lcom/kakao/sdk/friend/core/j/r;->a:Lcom/kakao/sdk/friend/core/j/r;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
