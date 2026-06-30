.class public final Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;
.super Ljava/lang/Object;
.source "KakaoGameKakaoLoginItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loginMethodIcon:Landroid/widget/ImageView;

.field public final loginMethodLayout:Landroid/widget/LinearLayout;

.field public final loginMethodText:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 369
    iput-object p2, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;->loginMethodIcon:Landroid/widget/ImageView;

    .line 379
    iput-object p3, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;->loginMethodLayout:Landroid/widget/LinearLayout;

    .line 389
    iput-object p4, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;->loginMethodText:Landroid/widget/TextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;
    .locals 4

    .line 689
    sget v0, Lcom/kakaogame/kakao/R$id;->login_method_icon:I

    .line 699
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 749
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 769
    sget v2, Lcom/kakaogame/kakao/R$id;->login_method_text:I

    .line 779
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 829
    new-instance p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object p0

    :cond_0
    move v0, v2

    .line 859
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 869
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 499
    invoke-static {p0, v0, v1}, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;
    .locals 2

    .line 559
    sget v0, Lcom/kakaogame/kakao/R$layout;->kakao_game_kakao_login_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 579
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 599
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;->bind(Landroid/view/View;)Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kakaogame/kakao/databinding/KakaoGameKakaoLoginItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
