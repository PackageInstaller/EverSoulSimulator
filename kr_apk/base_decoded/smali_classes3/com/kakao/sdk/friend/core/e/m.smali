.class public final Lcom/kakao/sdk/friend/core/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/view/NestedScrollableHost;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/view/NestedScrollableHost;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/e/m;->a:Lcom/kakao/sdk/friend/core/view/NestedScrollableHost;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/e/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/m;->a:Lcom/kakao/sdk/friend/core/view/NestedScrollableHost;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
