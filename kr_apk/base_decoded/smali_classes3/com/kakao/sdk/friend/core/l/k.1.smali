.class public final Lcom/kakao/sdk/friend/core/l/k;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/k;->a:Lcom/kakao/sdk/friend/core/l/s;

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

    check-cast p1, Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/k;->a:Lcom/kakao/sdk/friend/core/l/s;

    .line 29
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/l/s;->e:Lkotlin/Lazy;

    .line 39
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/b/c;

    const-string v1, "it"

    .line 49
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "items"

    .line 59
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/kakao/sdk/friend/core/b/c;->e:Lcom/kakao/sdk/friend/core/b/e;

    iget-object v2, v0, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "oldList"

    .line 69
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newList"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/kakao/sdk/friend/core/b/e;->a:Ljava/util/List;

    iput-object p1, v1, Lcom/kakao/sdk/friend/core/b/e;->b:Ljava/util/List;

    .line 79
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/b/c;->e:Lcom/kakao/sdk/friend/core/b/e;

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, v0, Lcom/kakao/sdk/friend/core/b/c;->d:Ljava/util/List;

    .line 89
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method
