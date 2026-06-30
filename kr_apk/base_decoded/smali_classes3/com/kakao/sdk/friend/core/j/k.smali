.class public final Lcom/kakao/sdk/friend/core/j/k;
.super Lcom/kakao/sdk/friend/core/j/p;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/j/q;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/j/q;)V
    .locals 2

    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "status"

    .line 29
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "needToUpdatePositions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/j/p;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/j/k;->a:Lcom/kakao/sdk/friend/core/j/q;

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/j/k;->b:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/friend/core/j/q;Ljava/util/List;)V
    .locals 1

    const-string v0, "status"

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "needToUpdatePositions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/j/p;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/j/k;->a:Lcom/kakao/sdk/friend/core/j/q;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/j/k;->b:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method
