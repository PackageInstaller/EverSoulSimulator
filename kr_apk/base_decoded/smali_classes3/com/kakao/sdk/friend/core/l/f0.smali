.class public final Lcom/kakao/sdk/friend/core/l/f0;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/f0;->a:Lcom/kakao/sdk/friend/core/l/m0;

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

    check-cast p1, Ljava/lang/Integer;

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/f0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    .line 29
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/l/m0;->c:Lcom/kakao/sdk/friend/core/m/k;

    if-nez v0, :cond_0

    const-string/jumbo v0, "viewModel"

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    :cond_0
    iget v0, v0, Lcom/kakao/sdk/friend/core/m/k;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/f0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    .line 69
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/f;->g:Lcom/kakao/sdk/friend/core/e/n;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/n;->e:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/f0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    .line 99
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    .line 109
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/f;->g:Lcom/kakao/sdk/friend/core/e/n;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/n;->e:Landroid/widget/TextView;

    const-string v1, "count"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
