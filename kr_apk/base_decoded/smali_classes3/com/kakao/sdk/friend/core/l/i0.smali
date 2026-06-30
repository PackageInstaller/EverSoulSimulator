.class public final Lcom/kakao/sdk/friend/core/l/i0;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/i0;->a:Lcom/kakao/sdk/friend/core/l/m0;

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

    check-cast p1, Lcom/kakao/sdk/friend/core/j/d;

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/i0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    sget v0, Lcom/kakao/sdk/friend/core/R$string;->empty_chat_message:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.empty_chat_message)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/kakao/sdk/friend/core/l/m0;->a(Ljava/lang/String;I)V

    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/i0;->a:Lcom/kakao/sdk/friend/core/l/m0;

    const/16 v0, 0x8

    const-string v1, ""

    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/kakao/sdk/friend/core/l/m0;->a(Ljava/lang/String;I)V

    .line 59
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
