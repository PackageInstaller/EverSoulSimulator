.class public final Lcom/kakao/sdk/friend/core/m/d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/m/i;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/m/i;Lcom/kakao/sdk/friend/core/l/N;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/d;->a:Lcom/kakao/sdk/friend/core/m/i;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/m/d;->b:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/Map;

    const-string v0, "scopeMap"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/d;->a:Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/d;->b:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/kakao/sdk/friend/core/model/SelectedUsers;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/m/d;->a:Lcom/kakao/sdk/friend/core/m/i;

    .line 49
    iget-object v2, v2, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/kakao/sdk/friend/core/model/SelectedUsers;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
