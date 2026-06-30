.class public final Lcom/kakao/sdk/friend/core/l/H;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/H;->a:Lcom/kakao/sdk/friend/core/l/S;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "it"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfa

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/H;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getPickedFriendsRv$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/e/m;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/H;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v3}, Lcom/kakao/sdk/friend/core/l/S;->access$getPickedFriendsHeightPx(Lcom/kakao/sdk/friend/core/l/S;)I

    move-result v3

    new-instance v4, Lcom/kakao/sdk/friend/core/l/G;

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/l/H;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-direct {v4, v5}, Lcom/kakao/sdk/friend/core/l/G;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    .line 29
    invoke-static {v0, v3, v1, v4}, Lcom/kakao/sdk/friend/core/n/e;->a(Lcom/kakao/sdk/friend/core/e/m;IILkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/H;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getPickedFriendsRv$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/e/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v3, Lcom/kakao/sdk/friend/core/n/c;->a:Lcom/kakao/sdk/friend/core/n/c;

    invoke-static {v0, v2, v1, v3}, Lcom/kakao/sdk/friend/core/n/e;->a(Lcom/kakao/sdk/friend/core/e/m;IILkotlin/jvm/functions/Function0;)V

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/H;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getTitleBar$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/e/n;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/H;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v1

    .line 69
    iget-boolean v1, v1, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    .line 79
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/kakao/sdk/friend/core/n/f;->a(Lcom/kakao/sdk/friend/core/e/n;ZI)V

    :cond_2
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/H;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getTabViewModel$p(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/k;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    iget v3, v0, Lcom/kakao/sdk/friend/core/m/k;->a:I

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/k;->f:Landroidx/lifecycle/MutableLiveData;

    if-lez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/k;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 99
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
