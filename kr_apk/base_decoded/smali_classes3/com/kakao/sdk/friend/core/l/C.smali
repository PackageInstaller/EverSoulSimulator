.class public final synthetic Lcom/kakao/sdk/friend/core/l/C;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/m/i;)V
    .locals 7

    const/4 v1, 0x2

    .line 19
    const-class v3, Lcom/kakao/sdk/friend/core/m/i;

    const-string v4, "searchFriends"

    const-string v5, "searchFriends(Landroid/content/Context;Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    const-string v0, "p0"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "context"

    .line 29
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "searchText"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->u:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p2, v0, Lcom/kakao/sdk/friend/core/m/i;->u:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    iget-object p2, v0, Lcom/kakao/sdk/friend/core/m/i;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(Z)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, v0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    new-instance v0, Lcom/kakao/sdk/friend/core/j/k;

    sget-object v1, Lcom/kakao/sdk/friend/core/j/q;->b:Lcom/kakao/sdk/friend/core/j/q;

    invoke-direct {v0, v1, p1}, Lcom/kakao/sdk/friend/core/j/k;-><init>(Lcom/kakao/sdk/friend/core/j/q;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/kakao/sdk/friend/core/i/k;

    sget v3, Lcom/kakao/sdk/friend/core/R$string;->search_result:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "context.getString(R.string.search_result)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Lcom/kakao/sdk/friend/core/i/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/i;->b()Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/kakao/sdk/friend/core/i/e;

    .line 39
    iget-object v4, v4, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    .line 49
    :cond_3
    invoke-static {v4, p2}, Lcom/kakao/sdk/friend/core/k/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lcom/kakao/sdk/friend/core/i/j;->a:Lcom/kakao/sdk/friend/core/i/j;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/m/i;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/kakao/sdk/friend/core/m/i;->a(Z)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, v0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    new-instance v0, Lcom/kakao/sdk/friend/core/j/k;

    sget-object v1, Lcom/kakao/sdk/friend/core/j/q;->a:Lcom/kakao/sdk/friend/core/j/q;

    invoke-direct {v0, v1, p1}, Lcom/kakao/sdk/friend/core/j/k;-><init>(Lcom/kakao/sdk/friend/core/j/q;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    .line 59
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
