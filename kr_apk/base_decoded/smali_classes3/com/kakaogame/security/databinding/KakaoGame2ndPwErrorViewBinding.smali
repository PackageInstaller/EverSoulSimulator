.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPwErrorViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGame2ndPwError2lineMsg:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwError2lineTime:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwError2lineTimeGuide:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwError2lineView:Landroid/widget/RelativeLayout;

.field public final kakaoGame2ndPwErrorConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

.field public final kakaoGame2ndPwErrorView:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansButton;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 499
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->kakaoGame2ndPwError2lineMsg:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 509
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->kakaoGame2ndPwError2lineTime:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 519
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->kakaoGame2ndPwError2lineTimeGuide:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 529
    iput-object p5, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->kakaoGame2ndPwError2lineView:Landroid/widget/RelativeLayout;

    .line 539
    iput-object p6, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->kakaoGame2ndPwErrorConfirm:Lcom/kakaogame/ui/font/NotoSansButton;

    .line 549
    iput-object p7, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->kakaoGame2ndPwErrorView:Landroid/widget/RelativeLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;
    .locals 10

    .line 849
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_error_2line_msg:I

    .line 859
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v4, :cond_0

    .line 909
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_error_2line_time:I

    .line 919
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v5, :cond_0

    .line 969
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_error_2line_time_guide:I

    .line 979
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v6, :cond_0

    .line 1029
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_error_2line_view:I

    .line 1039
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 1089
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_error_confirm:I

    .line 1099
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/kakaogame/ui/font/NotoSansButton;

    if-eqz v8, :cond_0

    .line 1149
    move-object v9, p0

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1169
    new-instance p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansButton;Landroid/widget/RelativeLayout;)V

    return-object p0

    .line 1219
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1229
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 659
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;
    .locals 2

    .line 719
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_error_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 739
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 759
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwErrorViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
