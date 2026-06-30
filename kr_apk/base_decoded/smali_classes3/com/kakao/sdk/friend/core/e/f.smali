.class public final Lcom/kakao/sdk/friend/core/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/TextView;

.field public final c:Lcom/kakao/sdk/friend/core/view/EmptyView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroidx/viewpager2/widget/ViewPager2;

.field public final f:Lcom/google/android/material/tabs/TabLayout;

.field public final g:Lcom/kakao/sdk/friend/core/e/n;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/kakao/sdk/friend/core/view/EmptyView;Landroid/widget/TextView;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;Lcom/kakao/sdk/friend/core/e/n;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/e/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/e/f;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/e/f;->c:Lcom/kakao/sdk/friend/core/view/EmptyView;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/e/f;->d:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/e/f;->e:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p6, p0, Lcom/kakao/sdk/friend/core/e/f;->f:Lcom/google/android/material/tabs/TabLayout;

    iput-object p7, p0, Lcom/kakao/sdk/friend/core/e/f;->g:Lcom/kakao/sdk/friend/core/e/n;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
