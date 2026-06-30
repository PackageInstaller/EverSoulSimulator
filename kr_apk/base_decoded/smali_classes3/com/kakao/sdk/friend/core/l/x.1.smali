.class public final Lcom/kakao/sdk/friend/core/l/x;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/S;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/S;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/x;->a:Lcom/kakao/sdk/friend/core/l/S;

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

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/x;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(I)Lcom/kakao/sdk/friend/core/i/e;

    move-result-object v1

    .line 39
    iget-boolean v2, v1, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    xor-int/lit8 v2, v2, 0x1

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/i/e;Z)V

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    new-instance v2, Lcom/kakao/sdk/friend/core/j/m;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/kakao/sdk/friend/core/j/m;-><init>(Ljava/util/List;Lcom/kakao/sdk/friend/core/i/e;Z)V

    invoke-virtual {v0, v2}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    .line 59
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
