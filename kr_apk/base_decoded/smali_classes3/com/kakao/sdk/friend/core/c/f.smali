.class public final Lcom/kakao/sdk/friend/core/c/f;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/e/h;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/e/h;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/e/h;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/c/f;->a:Lcom/kakao/sdk/friend/core/e/h;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
