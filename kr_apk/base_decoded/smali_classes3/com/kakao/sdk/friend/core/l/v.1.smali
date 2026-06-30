.class public final Lcom/kakao/sdk/friend/core/l/v;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/S;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/S;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/v;->a:Lcom/kakao/sdk/friend/core/l/S;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/v;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->b()Ljava/util/List;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/kakao/sdk/friend/core/i/e;

    .line 49
    iget-boolean v5, v4, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    if-nez v5, :cond_0

    .line 59
    iget-object v4, v4, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 69
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakao/sdk/friend/core/i/e;

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iput-boolean v4, v3, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->e()V

    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->m:Z

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/kakao/sdk/friend/core/i/i;

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    iget-object v5, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    sget-object v6, Lcom/kakao/sdk/friend/core/i/i;->a:Lcom/kakao/sdk/friend/core/i/i;

    invoke-virtual {v5, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->B:Lcom/kakao/sdk/friend/core/m/n;

    .line 99
    iput v4, v3, Lcom/kakao/sdk/friend/core/m/n;->b:I

    .line 109
    :cond_5
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->p:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    new-instance v4, Lcom/kakao/sdk/friend/core/j/n;

    invoke-direct {v4, v2, v1}, Lcom/kakao/sdk/friend/core/j/n;-><init>(Ljava/util/ArrayList;Z)V

    invoke-virtual {v3, v4}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v2}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getMaxPickableCount()I

    move-result v2

    if-lt v1, v2, :cond_6

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->r:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/kakao/sdk/friend/core/j/b;

    iget-object v3, v0, Lcom/kakao/sdk/friend/core/m/i;->f:Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;

    invoke-virtual {v3}, Lcom/kakao/sdk/friend/core/internal/InternalFriendsParams;->getMaxPickableCount()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/kakao/sdk/friend/core/j/b;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->c()V

    .line 119
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .array-data 1
    .end array-data
.end method
