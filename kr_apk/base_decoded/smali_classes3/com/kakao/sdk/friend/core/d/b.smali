.class public final Lcom/kakao/sdk/friend/core/d/b;
.super Lcom/kakao/sdk/network/ApiCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/m/h;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/d/b;->a:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/kakao/sdk/network/ApiCallback;-><init>(Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    check-cast p1, Ljava/util/List;

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/d/b;->a:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
