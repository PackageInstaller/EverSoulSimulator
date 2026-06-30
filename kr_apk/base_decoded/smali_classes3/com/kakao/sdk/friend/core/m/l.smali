.class public final Lcom/kakao/sdk/friend/core/m/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/i/o;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/i/o;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/l;->a:Lcom/kakao/sdk/friend/core/i/o;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1

    const-string v0, "modelClass"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/l;->a:Lcom/kakao/sdk/friend/core/i/o;

    if-eqz v0, :cond_1

    const-class v0, Lcom/kakao/sdk/friend/core/m/k;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/kakao/sdk/friend/core/m/k;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/l;->a:Lcom/kakao/sdk/friend/core/i/o;

    invoke-direct {p1, v0}, Lcom/kakao/sdk/friend/core/m/k;-><init>(Lcom/kakao/sdk/friend/core/i/o;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Picker is not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
