.class public final Lcom/kakao/sdk/friend/core/l/l;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/l;->a:Lcom/kakao/sdk/friend/core/l/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/kakao/sdk/friend/core/j/p;

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/l;->a:Lcom/kakao/sdk/friend/core/l/s;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/j/f;

    const/4 v2, -0x1

    const-string v3, "event"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/l/s;->e:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/b/c;

    .line 59
    check-cast p1, Lcom/kakao/sdk/friend/core/j/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/j/f;->a:Lcom/kakao/sdk/friend/core/i/a;

    .line 89
    iget-object v3, v1, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p1, v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 99
    :cond_0
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->b:Lcom/kakao/sdk/friend/core/e/n;

    if-eqz p1, :cond_1

    invoke-static {p1, v4, v4}, Lcom/kakao/sdk/friend/core/n/f;->a(Lcom/kakao/sdk/friend/core/e/n;ZI)V

    :cond_1
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->g:Lcom/kakao/sdk/friend/core/m/k;

    if-eqz p1, :cond_5

    .line 109
    iget v0, p1, Lcom/kakao/sdk/friend/core/m/k;->a:I

    if-ne v0, v4, :cond_5

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->f:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :cond_2
    instance-of v1, p1, Lcom/kakao/sdk/friend/core/j/l;

    if-eqz v1, :cond_5

    .line 129
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/l/s;->e:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/b/c;

    .line 139
    check-cast p1, Lcom/kakao/sdk/friend/core/j/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/j/l;->a:Lcom/kakao/sdk/friend/core/i/a;

    .line 169
    iget-object v3, v1, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p1, v2, :cond_3

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 179
    :cond_3
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->b:Lcom/kakao/sdk/friend/core/e/n;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    invoke-static {p1, v4, v1}, Lcom/kakao/sdk/friend/core/n/f;->a(Lcom/kakao/sdk/friend/core/e/n;ZI)V

    :cond_4
    iget-object p1, v0, Lcom/kakao/sdk/friend/core/l/s;->g:Lcom/kakao/sdk/friend/core/m/k;

    if-eqz p1, :cond_5

    .line 189
    iget v0, p1, Lcom/kakao/sdk/friend/core/m/k;->a:I

    if-ne v0, v4, :cond_5

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/k;->f:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 199
    :cond_5
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
