.class public final Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;
.super Ljava/lang/Object;
.source "KakaoGameProtectedUserUnregisterAgreementBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameProtectedPopupAgreementCheck:Landroid/widget/RelativeLayout;

.field public final kakaoGameProtectedPopupAgreementTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameProtectedPopupCheckBoxOff:Landroid/widget/ImageView;

.field public final kakaoGameProtectedPopupCheckBoxOn:Landroid/widget/ImageView;

.field public final kakaoSdkProtectedUserPopupAgreementBtn:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 469
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupAgreementCheck:Landroid/widget/RelativeLayout;

    .line 479
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupAgreementTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 489
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupCheckBoxOff:Landroid/widget/ImageView;

    .line 499
    iput-object p5, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoGameProtectedPopupCheckBoxOn:Landroid/widget/ImageView;

    .line 509
    iput-object p6, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->kakaoSdkProtectedUserPopupAgreementBtn:Landroid/widget/FrameLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;
    .locals 9

    .line 819
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_agreement_check:I

    .line 829
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    .line 879
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_agreement_title:I

    .line 889
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v5, :cond_0

    .line 939
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_check_box_off:I

    .line 949
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 999
    sget v0, Lcom/kakaogame/R$id;->kakao_game_protected_popup_check_box_on:I

    .line 1009
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 1059
    sget v0, Lcom/kakaogame/R$id;->kakao_sdk_protected_user_popup_agreement_btn:I

    .line 1069
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    .line 1119
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    return-object v0

    .line 1169
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1179
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 629
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;
    .locals 2

    .line 689
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_protected_user_unregister_agreement:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 709
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 729
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterAgreementBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
