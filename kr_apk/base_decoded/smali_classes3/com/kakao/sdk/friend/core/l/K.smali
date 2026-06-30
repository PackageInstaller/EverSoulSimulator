.class public final synthetic Lcom/kakao/sdk/friend/core/l/K;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/m/i;)V
    .locals 7

    const/4 v1, 0x1

    .line 19
    const-class v3, Lcom/kakao/sdk/friend/core/m/i;

    const-string/jumbo v4, "uncheck"

    const-string/jumbo v5, "uncheck(Lcom/kakao/sdk/friend/core/internal/FriendItem$User;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/kakao/sdk/friend/core/i/e;

    const-string v0, "p0"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/kakao/sdk/friend/core/m/i;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/i/e;)V

    .line 29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
