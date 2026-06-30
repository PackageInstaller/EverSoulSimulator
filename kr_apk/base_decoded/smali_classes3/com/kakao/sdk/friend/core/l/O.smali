.class public final synthetic Lcom/kakao/sdk/friend/core/l/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "function"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/O;->a:Lkotlin/jvm/functions/Function1;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/O;->a:Lkotlin/jvm/functions/Function1;

    .line 29
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/O;->a:Lkotlin/jvm/functions/Function1;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/O;->a:Lkotlin/jvm/functions/Function1;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/O;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method
