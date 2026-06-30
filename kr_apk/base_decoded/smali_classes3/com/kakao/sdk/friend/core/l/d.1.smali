.class public final Lcom/kakao/sdk/friend/core/l/d;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/d;->a:Lcom/kakao/sdk/friend/core/l/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/kakao/sdk/friend/core/i/a;

    const-string v0, "it"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/d;->a:Lcom/kakao/sdk/friend/core/l/s;

    .line 29
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    .line 39
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/b;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "chat"

    .line 59
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/b;->g:Lcom/kakao/sdk/friend/core/i/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/m/b;->b()V

    :cond_0
    iput-object p1, v0, Lcom/kakao/sdk/friend/core/m/b;->g:Lcom/kakao/sdk/friend/core/i/a;

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/kakao/sdk/friend/core/i/l;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v1, "null cannot be cast to non-null type com.kakao.sdk.friend.core.internal.ChatItem.Chat"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/kakao/sdk/friend/core/i/a;

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v2, Lcom/kakao/sdk/friend/core/i/a;->h:Z

    .line 79
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/b;->n:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/kakao/sdk/friend/core/j/f;

    invoke-direct {v1, p1}, Lcom/kakao/sdk/friend/core/j/f;-><init>(Lcom/kakao/sdk/friend/core/i/a;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
