.class public final Lcom/kakao/sdk/friend/core/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/kakao/sdk/friend/core/view/EmptyView;

.field public final c:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/kakao/sdk/friend/core/view/EmptyView;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/e/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/e/d;->b:Lcom/kakao/sdk/friend/core/view/EmptyView;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/e/d;->c:Landroid/widget/LinearLayout;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
