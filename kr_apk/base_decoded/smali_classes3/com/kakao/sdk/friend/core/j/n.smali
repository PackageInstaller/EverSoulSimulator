.class public final Lcom/kakao/sdk/friend/core/j/n;
.super Lcom/kakao/sdk/friend/core/j/p;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 1

    const-string/jumbo v0, "users"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/j/p;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/j/n;->a:Ljava/util/List;

    iput-boolean p2, p0, Lcom/kakao/sdk/friend/core/j/n;->b:Z

    return-void

    .array-data 1
    .end array-data
.end method
