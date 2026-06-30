.class public final Lcom/kakao/sdk/friend/core/l/L;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/S;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/S;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/L;->a:Lcom/kakao/sdk/friend/core/l/S;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/L;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    .line 29
    iget-boolean v0, v0, Lcom/kakao/sdk/friend/core/m/i;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/kakao/sdk/friend/core/b/g;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/L;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v1}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v1

    .line 49
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/m/i;->i:Ljava/util/ArrayList;

    .line 59
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/kakao/sdk/friend/core/l/K;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/L;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v3}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kakao/sdk/friend/core/l/K;-><init>(Lcom/kakao/sdk/friend/core/m/i;)V

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/b/g;-><init>(Ljava/util/List;Lcom/kakao/sdk/friend/core/l/K;)V

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
