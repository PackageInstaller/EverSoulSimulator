.class public final Lcom/kakao/sdk/friend/core/b/e;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 5

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "oldList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/i/l;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/e;->b:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "newList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/i/l;

    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/kakao/sdk/friend/core/i/k;

    if-nez v0, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/kakao/sdk/friend/core/i/k;

    .line 19
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/k;->a:Ljava/lang/String;

    .line 29
    check-cast p2, Lcom/kakao/sdk/friend/core/i/k;

    .line 39
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/i/k;->a:Ljava/lang/String;

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/i;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    instance-of p1, p2, Lcom/kakao/sdk/friend/core/i/i;

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/j;

    if-eqz v0, :cond_7

    instance-of p1, p2, Lcom/kakao/sdk/friend/core/i/j;

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v0, :cond_9

    instance-of v0, p2, Lcom/kakao/sdk/friend/core/i/e;

    if-nez v0, :cond_8

    return v1

    :cond_8
    check-cast p1, Lcom/kakao/sdk/friend/core/i/e;

    .line 59
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 69
    check-cast p2, Lcom/kakao/sdk/friend/core/i/e;

    .line 79
    iget-object p2, p2, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    .line 89
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/a;

    if-eqz v0, :cond_b

    instance-of v0, p2, Lcom/kakao/sdk/friend/core/i/a;

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Lcom/kakao/sdk/friend/core/i/a;

    .line 99
    iget-wide v3, p1, Lcom/kakao/sdk/friend/core/i/a;->a:J

    .line 109
    check-cast p2, Lcom/kakao/sdk/friend/core/i/a;

    .line 119
    iget-wide p1, p2, Lcom/kakao/sdk/friend/core/i/a;->a:J

    cmp-long p1, v3, p1

    if-nez p1, :cond_b

    move v1, v2

    :cond_b
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final areItemsTheSame(II)Z
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "oldList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/friend/core/i/l;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/e;->b:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "newList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/friend/core/i/l;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1

    .array-data 1
    .end array-data
.end method

.method public final getNewListSize()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/e;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "newList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOldListSize()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/b/e;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "oldList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
