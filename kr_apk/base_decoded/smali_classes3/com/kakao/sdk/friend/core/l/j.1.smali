.class public final Lcom/kakao/sdk/friend/core/l/j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/s;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/s;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/j;->a:Lcom/kakao/sdk/friend/core/l/s;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    const-string v0, "<anonymous parameter 0>"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "text"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/l/j;->a:Lcom/kakao/sdk/friend/core/l/s;

    .line 29
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    .line 39
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/m/b;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "searchText"

    .line 59
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/kakao/sdk/friend/core/m/b;->q:Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p2, p1, Lcom/kakao/sdk/friend/core/m/b;->q:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p1, Lcom/kakao/sdk/friend/core/m/b;->o:Lcom/kakao/sdk/friend/core/k/v;

    new-instance v0, Lcom/kakao/sdk/friend/core/j/k;

    sget-object v1, Lcom/kakao/sdk/friend/core/j/q;->b:Lcom/kakao/sdk/friend/core/j/q;

    invoke-direct {v0, v1}, Lcom/kakao/sdk/friend/core/j/k;-><init>(Lcom/kakao/sdk/friend/core/j/q;)V

    invoke-virtual {p2, v0}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/kakao/sdk/friend/core/m/b;->h:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/m/b;->o:Lcom/kakao/sdk/friend/core/k/v;

    new-instance v1, Lcom/kakao/sdk/friend/core/j/k;

    sget-object v2, Lcom/kakao/sdk/friend/core/j/q;->a:Lcom/kakao/sdk/friend/core/j/q;

    invoke-direct {v1, v2}, Lcom/kakao/sdk/friend/core/j/k;-><init>(Lcom/kakao/sdk/friend/core/j/q;)V

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/kakao/sdk/friend/core/m/b;->f:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/kakao/sdk/friend/core/i/a;

    .line 69
    iget-object v4, v4, Lcom/kakao/sdk/friend/core/i/a;->b:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    .line 79
    :cond_3
    invoke-static {v4, p2}, Lcom/kakao/sdk/friend/core/k/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object p2, Lcom/kakao/sdk/friend/core/i/j;->a:Lcom/kakao/sdk/friend/core/i/j;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/b;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 89
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
