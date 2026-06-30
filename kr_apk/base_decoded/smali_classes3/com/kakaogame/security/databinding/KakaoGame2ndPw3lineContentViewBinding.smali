.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPw3lineContentViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGame2ndPwContent:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwDetail:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 369
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;->kakaoGame2ndPwContent:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 379
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;->kakaoGame2ndPwDetail:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 389
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;->kakaoGame2ndPwTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;
    .locals 4

    .line 689
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_content:I

    .line 699
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v1, :cond_0

    .line 749
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_detail:I

    .line 759
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v2, :cond_0

    .line 809
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_title:I

    .line 819
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v3, :cond_0

    .line 869
    new-instance v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;)V

    return-object v0

    .line 899
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 909
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 499
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;
    .locals 2

    .line 559
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_3line_content_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 579
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 599
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPw3lineContentViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
