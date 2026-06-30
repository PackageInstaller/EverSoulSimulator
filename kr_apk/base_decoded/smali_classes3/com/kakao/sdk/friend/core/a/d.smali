.class public final Lcom/kakao/sdk/friend/core/a/d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function3;

.field public final synthetic b:Lcom/kakao/sdk/friend/core/a/k;

.field public final synthetic c:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

.field public final synthetic d:Lcom/kakao/sdk/friend/core/i/o;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lcom/kakao/sdk/friend/core/a/k;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Lcom/kakao/sdk/friend/core/i/o;Landroid/content/Context;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/a/d;->a:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/a/d;->b:Lcom/kakao/sdk/friend/core/a/k;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/a/d;->c:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/a/d;->d:Lcom/kakao/sdk/friend/core/i/o;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/a/d;->e:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/a/d;->a:Lkotlin/jvm/functions/Function3;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/a/d;->b:Lcom/kakao/sdk/friend/core/a/k;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/a/d;->c:Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams;->getChatParams()Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/friend/core/internal/InternalTabParams$InternalChatParams;->getChatFilters()Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    sget-object p1, Lcom/kakao/sdk/friend/core/model/PickerChatFilter;->REGULAR:Lcom/kakao/sdk/friend/core/model/PickerChatFilter;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/a/d;->b:Lcom/kakao/sdk/friend/core/a/k;

    .line 59
    iget-object v1, p1, Lcom/kakao/sdk/friend/core/a/k;->a:Lcom/kakao/sdk/friend/core/d/a;

    .line 69
    iget-object v2, p0, Lcom/kakao/sdk/friend/core/a/d;->d:Lcom/kakao/sdk/friend/core/i/o;

    .line 79
    iget v3, v2, Lcom/kakao/sdk/friend/core/i/o;->a:I

    .line 89
    new-instance v4, Lcom/kakao/sdk/friend/core/a/c;

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/a/d;->a:Lkotlin/jvm/functions/Function3;

    iget-object v6, p0, Lcom/kakao/sdk/friend/core/a/d;->e:Landroid/content/Context;

    invoke-direct {v4, p1, v2, v5, v6}, Lcom/kakao/sdk/friend/core/a/c;-><init>(Lcom/kakao/sdk/friend/core/a/k;Lcom/kakao/sdk/friend/core/i/o;Lkotlin/jvm/functions/Function3;Landroid/content/Context;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/d/i;

    invoke-virtual {v1, v3, v0, v4}, Lcom/kakao/sdk/friend/core/d/i;->a(ILjava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 99
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
