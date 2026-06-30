.class public final Lcom/kakao/sdk/friend/core/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/TextView;

.field public final c:Lcom/kakao/sdk/friend/core/view/SquircleImageView;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/kakao/sdk/friend/core/view/SquircleImageView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/e/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/e/k;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/e/k;->c:Lcom/kakao/sdk/friend/core/view/SquircleImageView;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
