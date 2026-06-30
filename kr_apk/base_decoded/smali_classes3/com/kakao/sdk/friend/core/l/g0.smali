.class public final Lcom/kakao/sdk/friend/core/l/g0;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/g0;->a:Lcom/kakao/sdk/friend/core/l/m0;

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

    check-cast p1, Ljava/lang/Boolean;

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/g0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    .line 29
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/l/m0;->a:Lcom/kakao/sdk/friend/core/e/f;

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/f;->g:Lcom/kakao/sdk/friend/core/e/n;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/n;->c:Landroid/widget/TextView;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
