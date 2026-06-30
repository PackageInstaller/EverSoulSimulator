.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPwPassiveViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGame2ndPwPassiveBg:Landroid/widget/RelativeLayout;

.field public final kakaoGame2ndPwPassiveContent:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwPassiveContentDump:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwPassiveRound:Landroid/widget/ImageView;

.field public final passiveViewDetail:Lcom/kakaogame/ui/font/NotoSansTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/ImageView;Lcom/kakaogame/ui/font/NotoSansTextView;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 449
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->kakaoGame2ndPwPassiveBg:Landroid/widget/RelativeLayout;

    .line 459
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->kakaoGame2ndPwPassiveContent:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 469
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->kakaoGame2ndPwPassiveContentDump:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 479
    iput-object p5, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->kakaoGame2ndPwPassiveRound:Landroid/widget/ImageView;

    .line 489
    iput-object p6, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->passiveViewDetail:Lcom/kakaogame/ui/font/NotoSansTextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;
    .locals 9

    .line 789
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_passive_bg:I

    .line 799
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    .line 849
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_passive_content:I

    .line 859
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v5, :cond_0

    .line 909
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_passive_content_dump:I

    .line 919
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v6, :cond_0

    .line 969
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_passive_round:I

    .line 979
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 1029
    sget v0, Lcom/kakaogame/security/R$id;->passive_view_detail:I

    .line 1039
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v8, :cond_0

    .line 1089
    new-instance v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/ImageView;Lcom/kakaogame/ui/font/NotoSansTextView;)V

    return-object v0

    .line 1129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1139
    new-instance v0, Ljava/lang/NullPointerException;

    const v1, 0x3362bed3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 599
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;
    .locals 2

    .line 659
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_passive_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 679
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 699
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwPassiveViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
