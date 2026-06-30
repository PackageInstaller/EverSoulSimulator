.class public final Lcom/kakao/sdk/friend/core/l/Q;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/Q;->a:Lcom/kakao/sdk/friend/core/l/S;

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
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/l/Q;->a:Lcom/kakao/sdk/friend/core/l/S;

    new-instance v2, Lcom/kakao/sdk/friend/core/m/j;

    invoke-static {}, Lcom/kakao/sdk/friend/core/a/m;->a()Lcom/kakao/sdk/friend/core/d/a;

    move-result-object v3

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/l/Q;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-virtual {v4}, Lcom/kakao/sdk/friend/core/l/S;->getSettings()Lcom/kakao/sdk/friend/core/i/o;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/kakao/sdk/friend/core/m/j;-><init>(Lcom/kakao/sdk/friend/core/d/a;Lcom/kakao/sdk/friend/core/i/o;)V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/kakao/sdk/friend/core/m/i;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
