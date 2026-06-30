.class public final Lcom/kakaogame/KGResult$Companion;
.super Ljava/lang/Object;
.source "KGResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\r\"\u0004\u0008\u0001\u0010\u000eH\u0007J#\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u000f\u001a\u0002H\u000eH\u0007\u00a2\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J(\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u0007J5\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\r\"\u0004\u0008\u0001\u0010\u000e2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u0002H\u000eH\u0007\u00a2\u0006\u0002\u0010\u0015J*\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0004\u0008\u0001\u0010\u000e2\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0017H\u0007J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kakaogame/KGResult$Companion;",
        "",
        "<init>",
        "()V",
        "serialVersionUID",
        "",
        "KEY_CODE",
        "",
        "KEY_DESC",
        "KEY_CONTENT",
        "KEY_MESSAGE",
        "KEY_SERVER_ERROR_CODE",
        "getSuccessResult",
        "Lcom/kakaogame/KGResult;",
        "T",
        "content",
        "(Ljava/lang/Object;)Lcom/kakaogame/KGResult;",
        "getResult",
        "code",
        "",
        "description",
        "(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;",
        "result",
        "",
        "isNetworkError",
        "",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGResult$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getResult(I)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/kakaogame/KGResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4799
    new-instance v0, Lcom/kakaogame/KGResult;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/kakaogame/KGResult;-><init>(ILjava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4869
    new-instance v0, Lcom/kakaogame/KGResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, v1}, Lcom/kakaogame/KGResult;-><init>(ILjava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/kakaogame/KGResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4939
    new-instance v0, Lcom/kakaogame/KGResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/kakaogame/KGResult;-><init>(ILjava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/kakaogame/KGResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543e8a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    new-instance v0, Lcom/kakaogame/KGResult;

    invoke-direct {v0, p1}, Lcom/kakaogame/KGResult;-><init>(Ljava/util/Map;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getSuccessResult()Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/kakaogame/KGResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4659
    new-instance v0, Lcom/kakaogame/KGResult;

    const v1, -0x2243743c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/kakaogame/KGResult;-><init>(ILjava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/kakaogame/KGResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4729
    new-instance v0, Lcom/kakaogame/KGResult;

    const v1, -0x2243743c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/kakaogame/KGResult;-><init>(ILjava/lang/String;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final isNetworkError(I)Z
    .locals 3

    const/16 v0, 0x3e9

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f4

    const/4 v2, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x258

    if-ge p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1

    .array-data 1
    .end array-data
.end method
