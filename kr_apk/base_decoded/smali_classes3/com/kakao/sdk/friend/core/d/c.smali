.class public final Lcom/kakao/sdk/friend/core/d/c;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/d/c;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/d/c;->b:Lcom/kakao/sdk/friend/core/d/i;

    iput p3, p0, Lcom/kakao/sdk/friend/core/d/c;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    .line 19
    iget-object p1, p0, Lcom/kakao/sdk/friend/core/d/c;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/d/c;->b:Lcom/kakao/sdk/friend/core/d/i;

    .line 29
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/d/i;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iget v0, p0, Lcom/kakao/sdk/friend/core/d/c;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/kakao/sdk/friend/core/d/c;->b:Lcom/kakao/sdk/friend/core/d/i;

    .line 49
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/d/i;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    iget v0, p0, Lcom/kakao/sdk/friend/core/d/c;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/network/model/PickerChatMemberInfo;->a()Lcom/kakao/sdk/friend/core/network/model/PickerChatMembers;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/d/c;->a:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
