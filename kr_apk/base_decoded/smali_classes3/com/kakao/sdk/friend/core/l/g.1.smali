.class public final Lcom/kakao/sdk/friend/core/l/g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/s;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/s;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/g;->a:Lcom/kakao/sdk/friend/core/l/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/g;->a:Lcom/kakao/sdk/friend/core/l/s;

    .line 29
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/l/s;->c:Lcom/kakao/sdk/friend/core/l/W;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/l/W;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/l/W;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kakao/sdk/friend/core/k/o;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 49
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .array-data 1
    .end array-data
.end method
