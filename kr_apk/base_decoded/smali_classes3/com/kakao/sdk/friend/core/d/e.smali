.class public final Lcom/kakao/sdk/friend/core/d/e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/kakao/sdk/friend/core/d/i;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/kakao/sdk/friend/core/d/i;I)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/d/e;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/d/e;->b:Lcom/kakao/sdk/friend/core/d/i;

    iput p3, p0, Lcom/kakao/sdk/friend/core/d/e;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerUsers;

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    .line 19
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/d/e;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/d/e;->b:Lcom/kakao/sdk/friend/core/d/i;

    .line 29
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/d/i;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iget v0, p0, Lcom/kakao/sdk/friend/core/d/e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerUsers;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerUsers;->b()Lcom/kakao/sdk/friend/core/network/model/PickerFriends;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kakao/sdk/friend/core/network/model/PickerFriends;->a()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/d/e;->b:Lcom/kakao/sdk/friend/core/d/i;

    iget v1, p0, Lcom/kakao/sdk/friend/core/d/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 49
    iget-object v3, v0, Lcom/kakao/sdk/friend/core/d/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    invoke-virtual {v3, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 69
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/d/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerUsers;->c()Lcom/kakao/sdk/friend/core/network/model/Me;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/d/e;->a:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
