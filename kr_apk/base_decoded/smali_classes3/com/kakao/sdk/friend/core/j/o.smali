.class public final Lcom/kakao/sdk/friend/core/j/o;
.super Lcom/kakao/sdk/friend/core/j/p;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/kakao/sdk/friend/core/i/e;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kakao/sdk/friend/core/i/e;ZZ)V
    .locals 1

    const-string/jumbo v0, "userIndexes"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/j/p;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/j/o;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/j/o;->b:Lcom/kakao/sdk/friend/core/i/e;

    iput-boolean p3, p0, Lcom/kakao/sdk/friend/core/j/o;->c:Z

    iput-boolean p4, p0, Lcom/kakao/sdk/friend/core/j/o;->d:Z

    return-void

    .array-data 1
    .end array-data
.end method
