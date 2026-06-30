.class public final Lcom/kakao/sdk/friend/core/l/p;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/p;->a:Lcom/kakao/sdk/friend/core/l/s;

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

    check-cast p1, Lcom/kakao/sdk/friend/core/j/r;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/kakao/sdk/friend/core/l/o;->a:[I

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
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/p;->a:Lcom/kakao/sdk/friend/core/l/s;

    .line 29
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/l/s;->c:Lcom/kakao/sdk/friend/core/l/W;

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "requireContext()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/l/W;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kakao/sdk/friend/core/k/o;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_2
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/p;->a:Lcom/kakao/sdk/friend/core/l/s;

    .line 49
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    .line 59
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/b;

    .line 69
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/m/b;->b()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/p;->a:Lcom/kakao/sdk/friend/core/l/s;

    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "cancelled."

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/kakao/sdk/friend/core/l/s;->a(Lcom/kakao/sdk/common/model/ClientError;)V

    goto :goto_1

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/p;->a:Lcom/kakao/sdk/friend/core/l/s;

    invoke-static {p1}, Lcom/kakao/sdk/friend/core/l/s;->a(Lcom/kakao/sdk/friend/core/l/s;)V

    .line 99
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
