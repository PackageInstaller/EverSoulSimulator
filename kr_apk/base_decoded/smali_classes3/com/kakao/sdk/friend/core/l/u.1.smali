.class public final synthetic Lcom/kakao/sdk/friend/core/l/u;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/m/i;)V
    .locals 7

    const/4 v1, 0x1

    .line 19
    const-class v3, Lcom/kakao/sdk/friend/core/m/i;

    const-string/jumbo v4, "uncheck"

    const-string/jumbo v5, "uncheck(I)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 19
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(I)Lcom/kakao/sdk/friend/core/i/e;

    move-result-object v1

    .line 39
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/i/e;Z)V

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->e()V

    iget-boolean v3, v0, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 49
    iput v2, v4, Lcom/kakao/sdk/friend/core/m/n;->b:I

    .line 59
    :cond_1
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    invoke-virtual {v0, p1, v1, v3}, Lcom/kakao/sdk/friend/core/m/i;->a(ILcom/kakao/sdk/friend/core/i/e;Z)Lcom/kakao/sdk/friend/core/j/o;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->c()V

    .line 69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
