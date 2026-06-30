.class public final Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;
.super Ljava/lang/Object;
.source "KakaoGameProtectedUserRestrictGuideBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameProtectedPopupContent:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameProtectedPopupDetailReason:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameProtectedPopupDetailReasonDump:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameProtectedPopupDetailTerm:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameProtectedPopupRestrictView:Landroid/widget/RelativeLayout;

.field public final reasonLabel:Landroid/widget/LinearLayout;

.field public final reasonView:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final termsLabel:Landroid/widget/RelativeLayout;

.field public final yellowDot1:Landroid/widget/ImageView;

.field public final yellowDot2:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 649
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupContent:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 659
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailReason:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 669
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailReasonDump:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 679
    iput-object p5, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupDetailTerm:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 689
    iput-object p6, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->kakaoGameProtectedPopupRestrictView:Landroid/widget/RelativeLayout;

    .line 699
    iput-object p7, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->reasonLabel:Landroid/widget/LinearLayout;

    .line 709
    iput-object p8, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->reasonView:Landroid/widget/RelativeLayout;

    .line 719
    iput-object p9, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->termsLabel:Landroid/widget/RelativeLayout;

    .line 729
    iput-object p10, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->yellowDot1:Landroid/widget/ImageView;

    .line 739
    iput-object p11, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->yellowDot2:Landroid/widget/ImageView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;
    .locals 14

    .line 1049
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_content:I

    .line 1059
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v4, :cond_0

    .line 1109
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_detail_reason:I

    .line 1119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v5, :cond_0

    .line 1169
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_detail_reason_dump:I

    .line 1179
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v6, :cond_0

    .line 1229
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_detail_term:I

    .line 1239
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v7, :cond_0

    .line 1289
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_restrict_view:I

    .line 1299
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 1349
    sget v0, Lcom/kakaogame/R$id;->reason_label:I

    .line 1359
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 1409
    sget v0, Lcom/kakaogame/R$id;->reason_view:I

    .line 1419
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 1469
    sget v0, Lcom/kakaogame/R$id;->terms_label:I

    .line 1479
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    .line 1529
    sget v0, Lcom/kakaogame/R$id;->yellow_dot_1:I

    .line 1539
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    .line 1589
    sget v0, Lcom/kakaogame/R$id;->yellow_dot_2:I

    .line 1599
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 1649
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 1709
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1719
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 859
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;
    .locals 2

    .line 919
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_protected_user_restrict_guide:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 939
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 959
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserRestrictGuideBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
