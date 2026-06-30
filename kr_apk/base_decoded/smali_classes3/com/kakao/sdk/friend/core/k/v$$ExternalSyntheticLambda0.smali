.class public final synthetic Lcom/kakao/sdk/friend/core/k/v$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/kakao/sdk/friend/core/k/v;

.field public final synthetic f$1:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Lcom/kakao/sdk/friend/core/k/v;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/k/v$$ExternalSyntheticLambda0;->f$0:Lcom/kakao/sdk/friend/core/k/v;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/k/v$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/Observer;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/k/v$$ExternalSyntheticLambda0;->f$0:Lcom/kakao/sdk/friend/core/k/v;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/k/v$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/Observer;

    invoke-static {v0, v1, p1}, Lcom/kakao/sdk/friend/core/k/v;->a(Lcom/kakao/sdk/friend/core/k/v;Landroidx/lifecycle/Observer;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method
