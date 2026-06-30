.class public final Lcom/kakao/sdk/friend/core/c/h;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final a:Lcom/kakao/sdk/friend/core/e/l;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/e/l;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectAllCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deselectAllCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Lcom/kakao/sdk/friend/core/e/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/c/h;->a:Lcom/kakao/sdk/friend/core/e/l;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/c/h;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/c/h;->c:Lkotlin/jvm/functions/Function0;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(ZLcom/kakao/sdk/friend/core/c/h;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    .line 99
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/kakao/sdk/friend/core/c/h;->c:Lkotlin/jvm/functions/Function0;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/kakao/sdk/friend/core/c/h;->b:Lkotlin/jvm/functions/Function0;

    :goto_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/h;->a:Lcom/kakao/sdk/friend/core/e/l;

    .line 19
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/e/l;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 29
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/e/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/kakao/sdk/friend/core/R$string;->deselect_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/e/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/kakao/sdk/friend/core/R$string;->select_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/l;->b:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/c/h;->a:Lcom/kakao/sdk/friend/core/e/l;

    .line 79
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/e/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 89
    new-instance v1, Lcom/kakao/sdk/friend/core/c/h$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/kakao/sdk/friend/core/c/h$$ExternalSyntheticLambda0;-><init>(ZLcom/kakao/sdk/friend/core/c/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .array-data 1
    .end array-data
.end method
