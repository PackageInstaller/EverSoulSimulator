.class public final Lcom/kakao/sdk/friend/core/l/n;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/s;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/s;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/n;->a:Lcom/kakao/sdk/friend/core/l/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/kakao/sdk/friend/core/j/e;

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/n;->a:Lcom/kakao/sdk/friend/core/l/s;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/j/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->b:Lcom/kakao/sdk/friend/core/e/n;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->c:Lcom/kakao/sdk/friend/core/l/W;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_2
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/b;

    .line 59
    iget-boolean p1, p1, Lcom/kakao/sdk/friend/core/m/b;->k:Z

    if-nez p1, :cond_3

    .line 69
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->a:Lcom/kakao/sdk/friend/core/e/d;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/e/d;->b:Lcom/kakao/sdk/friend/core/view/EmptyView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->g:Lcom/kakao/sdk/friend/core/m/k;

    if-eqz p1, :cond_5

    .line 89
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->j:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/kakao/sdk/friend/core/j/d;->a:Lcom/kakao/sdk/friend/core/j/d;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 99
    :cond_4
    instance-of p1, p1, Lcom/kakao/sdk/friend/core/j/a;

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/kakao/sdk/friend/core/R$string;->unexpected_error_message:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-static {}, Lcom/liapp/y;->ڱڱحֱح()V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 109
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
