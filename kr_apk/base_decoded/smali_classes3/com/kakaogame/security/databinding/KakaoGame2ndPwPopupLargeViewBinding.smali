.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPwPopupLargeViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGame2ndPwError1lineMsg:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

.field public final kakaoGame2ndPwPopupView:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansButton;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 379
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;->kakaoGame2ndPwError1lineMsg:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 389
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;->kakaoGame2ndPwPopupConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    .line 399
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;->kakaoGame2ndPwPopupView:Landroid/widget/RelativeLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;
    .locals 3

    .line 699
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_error_1line_msg:I

    .line 709
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v1, :cond_0

    .line 759
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_popup_confirm:I

    .line 769
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/ui/font/NotoSansButton;

    if-eqz v2, :cond_0

    .line 819
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 839
    new-instance v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansButton;Landroid/widget/RelativeLayout;)V

    return-object v0

    .line 869
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 879
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 509
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;
    .locals 2

    .line 569
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_popup_large_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 589
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 609
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPopupLargeViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
