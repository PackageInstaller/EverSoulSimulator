.class public final Lcom/kakao/sdk/friend/core/l/J;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/S;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/S;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/J;->a:Lcom/kakao/sdk/friend/core/l/S;

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

    check-cast p1, Lcom/kakao/sdk/friend/core/j/r;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/kakao/sdk/friend/core/l/I;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/J;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/l/S;->access$getSearchBar$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/l/W;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/l/W;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/l/W;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/k/o;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/J;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/m/i;->a()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/J;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/l/S;->access$cancelPicker(Lcom/kakao/sdk/friend/core/l/S;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/J;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/l/S;->access$sendResult(Lcom/kakao/sdk/friend/core/l/S;)V

    .line 49
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
