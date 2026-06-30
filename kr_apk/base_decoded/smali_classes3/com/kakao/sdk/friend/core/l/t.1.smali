.class public final synthetic Lcom/kakao/sdk/friend/core/l/t;
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

    const-string v4, "check"

    const-string v5, "check(I)V"

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
    .locals 7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 19
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    if-nez v1, :cond_0

    .line 39
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getMaxPickableCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->r:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/kakao/sdk/friend/core/j/b;

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getMaxPickableCount()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/kakao/sdk/friend/core/j/b;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(I)Lcom/kakao/sdk/friend/core/i/e;

    move-result-object v1

    iget-boolean v2, v0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    sget-object v5, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    if-ne v4, v5, :cond_1

    iget-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->d()V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakao/sdk/friend/core/i/e;

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/i/e;)V

    :cond_2
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/i/e;Z)V

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->e()V

    iget-boolean v2, v0, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    if-eqz v2, :cond_4

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    sget-object v6, Lcom/kakao/sdk/friend/core/i/i;->a:Lcom/kakao/sdk/friend/core/i/i;

    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 49
    iput v3, v4, Lcom/kakao/sdk/friend/core/m/n;->b:I

    .line 59
    :cond_4
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    invoke-virtual {v0, p1, v1, v2}, Lcom/kakao/sdk/friend/core/m/i;->a(ILcom/kakao/sdk/friend/core/i/e;Z)Lcom/kakao/sdk/friend/core/j/o;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->c()V

    .line 69
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
