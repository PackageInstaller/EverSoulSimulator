.class public final Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;
.super Ljava/lang/Object;
.source "KakaoGameKakaoLoginDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loginCloseButton:Landroid/widget/Button;

.field public final loginCloseLayout:Landroid/widget/RelativeLayout;

.field public final loginListView:Landroid/widget/ListView;

.field public final loginTitleText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/ListView;Landroid/widget/TextView;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->rootView:Landroid/widget/LinearLayout;

    .line 419
    iput-object p2, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->loginCloseButton:Landroid/widget/Button;

    .line 429
    iput-object p3, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->loginCloseLayout:Landroid/widget/RelativeLayout;

    .line 439
    iput-object p4, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->loginListView:Landroid/widget/ListView;

    .line 449
    iput-object p5, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->loginTitleText:Landroid/widget/TextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;
    .locals 8

    .line 749
    sget v0, Lcom/kakaogame/kakao/R$id;->login_close_button:I

    .line 759
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 809
    sget v0, Lcom/kakaogame/kakao/R$id;->login_close_layout:I

    .line 819
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 869
    sget v0, Lcom/kakaogame/kakao/R$id;->login_list_view:I

    .line 879
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ListView;

    if-eqz v6, :cond_0

    .line 929
    sget v0, Lcom/kakaogame/kakao/R$id;->login_title_text:I

    .line 939
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 989
    new-instance v0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/ListView;Landroid/widget/TextView;)V

    return-object v0

    .line 1019
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1029
    new-instance v0, Ljava/lang/NullPointerException;

    const v1, 0x3362bed3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 559
    invoke-static {p0, v0, v1}, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;
    .locals 2

    .line 619
    sget v0, Lcom/kakaogame/kakao/R$layout;->kakao_game_kakao_login_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 639
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 659
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->bind(Landroid/view/View;)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginDialogBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
