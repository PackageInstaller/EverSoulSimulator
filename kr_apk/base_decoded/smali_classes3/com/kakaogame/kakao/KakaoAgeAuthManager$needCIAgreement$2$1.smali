.class final Lcom/kakaogame/kakao/KakaoAgeAuthManager$needCIAgreement$2$1;
.super Ljava/lang/Object;
.source "KakaoAgeAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/kakao/KakaoAgeAuthManager;->needCIAgreement(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/kakao/sdk/user/model/ScopeInfo;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$needCIAgreement$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1629
    check-cast p1, Lcom/kakao/sdk/user/model/ScopeInfo;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/kakao/KakaoAgeAuthManager$needCIAgreement$2$1;->invoke(Lcom/kakao/sdk/user/model/ScopeInfo;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lcom/kakao/sdk/user/model/ScopeInfo;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 1689
    invoke-virtual {p1}, Lcom/kakao/sdk/user/model/ScopeInfo;->getScopes()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1699
    invoke-virtual {p1}, Lcom/kakao/sdk/user/model/ScopeInfo;->getScopes()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1709
    invoke-virtual {p1}, Lcom/kakao/sdk/user/model/ScopeInfo;->getScopes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/user/model/Scope;

    invoke-virtual {p1}, Lcom/kakao/sdk/user/model/Scope;->getAgreed()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1719
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$needCIAgreement$2$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 1709
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kakaogame/kakao/KakaoAgeAuthManager$needCIAgreement$2$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method
