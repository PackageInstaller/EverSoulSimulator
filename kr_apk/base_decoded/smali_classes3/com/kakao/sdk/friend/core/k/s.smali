.class public final Lcom/kakao/sdk/friend/core/k/s;
.super Lcom/kakao/sdk/friend/core/k/r;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kakao/sdk/friend/core/a/g;Lcom/kakao/sdk/friend/core/a/h;)V
    .locals 0

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/k/s;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/k/s;->d:Lkotlin/jvm/functions/Function0;

    .line 19
    invoke-direct {p0, p1}, Lcom/kakao/sdk/friend/core/k/r;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    const-string v0, "resultData"

    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/k/s;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final a()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/k/s;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 59
    check-cast p1, Lkotlin/Pair;

    const-string v0, "response"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/k/r;->b:Ljava/lang/Object;

    .line 89
    check-cast v0, Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 2

    const-string v0, "error"

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/k/r;->b:Ljava/lang/Object;

    .line 49
    check-cast v0, Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, p1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
