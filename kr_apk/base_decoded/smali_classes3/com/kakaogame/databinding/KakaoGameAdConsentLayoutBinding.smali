.class public final Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;
.super Ljava/lang/Object;
.source "KakaoGameAdConsentLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameSdkAlertBtnCancel:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameSdkAlertBtnOk:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameSdkAlertDesc:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameSdkAlertTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 409
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->kakaoGameSdkAlertBtnCancel:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 419
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->kakaoGameSdkAlertBtnOk:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 429
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->kakaoGameSdkAlertDesc:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 439
    iput-object p5, p0, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->kakaoGameSdkAlertTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;
    .locals 8

    .line 739
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_alert_btn_cancel:I

    .line 749
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v4, :cond_0

    .line 799
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_alert_btn_ok:I

    .line 809
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v5, :cond_0

    .line 859
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_alert_desc:I

    .line 869
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v6, :cond_0

    .line 919
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_alert_title:I

    .line 929
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v7, :cond_0

    .line 979
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 549
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;
    .locals 2

    .line 609
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_ad_consent_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 629
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 649
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameAdConsentLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
