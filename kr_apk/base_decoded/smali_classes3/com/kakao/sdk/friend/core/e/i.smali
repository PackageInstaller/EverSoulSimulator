.class public final Lcom/kakao/sdk/friend/core/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatRadioButton;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/e/i;->b:Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/e/i;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/e/i;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/e/i;->e:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/kakao/sdk/friend/core/e/i;->f:Landroid/widget/TextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/kakao/sdk/friend/core/e/i;
    .locals 8

    sget v0, Lcom/kakao/sdk/friend/core/R$layout;->kakao_sdk_item_chat_picker:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 19
    sget p1, Lcom/kakao/sdk/friend/core/R$id;->check_box:I

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/AppCompatRadioButton;

    if-eqz v3, :cond_0

    sget p1, Lcom/kakao/sdk/friend/core/R$id;->member_count_tv:I

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    sget p1, Lcom/kakao/sdk/friend/core/R$id;->open_chat_image:I

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget p1, Lcom/kakao/sdk/friend/core/R$id;->profile_iv:I

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    sget p1, Lcom/kakao/sdk/friend/core/R$id;->title_tv:I

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    new-instance p1, Lcom/kakao/sdk/friend/core/e/i;

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/kakao/sdk/friend/core/e/i;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatRadioButton;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/e/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
