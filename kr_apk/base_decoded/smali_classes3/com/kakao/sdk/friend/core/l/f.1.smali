.class public final Lcom/kakao/sdk/friend/core/l/f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/s;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/s;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/f;->a:Lcom/kakao/sdk/friend/core/l/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/b/c;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/f;->a:Lcom/kakao/sdk/friend/core/l/s;

    .line 29
    iget-object v1, v1, Lcom/kakao/sdk/friend/core/l/s;->f:Lkotlin/Lazy;

    .line 39
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/friend/core/m/b;

    .line 49
    iget-boolean v1, v1, Lcom/kakao/sdk/friend/core/m/b;->i:Z

    .line 59
    new-instance v2, Lcom/kakao/sdk/friend/core/l/d;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/l/f;->a:Lcom/kakao/sdk/friend/core/l/s;

    invoke-direct {v2, v3}, Lcom/kakao/sdk/friend/core/l/d;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    new-instance v3, Lcom/kakao/sdk/friend/core/l/e;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/l/f;->a:Lcom/kakao/sdk/friend/core/l/s;

    invoke-direct {v3, v4}, Lcom/kakao/sdk/friend/core/l/e;-><init>(Lcom/kakao/sdk/friend/core/l/s;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/sdk/friend/core/b/c;-><init>(ZLcom/kakao/sdk/friend/core/l/d;Lcom/kakao/sdk/friend/core/l/e;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
