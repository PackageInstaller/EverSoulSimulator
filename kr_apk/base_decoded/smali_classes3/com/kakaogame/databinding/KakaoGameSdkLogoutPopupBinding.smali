.class public final Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;
.super Ljava/lang/Object;
.source "KakaoGameSdkLogoutPopupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameSdkLogoutBtnCancel:Landroid/widget/TextView;

.field public final kakaoGameSdkLogoutBtnOk:Landroid/widget/TextView;

.field public final kakaoGameSdkLogoutDesc:Landroid/widget/TextView;

.field public final kakaoGameSdkLogoutIdp:Landroid/widget/LinearLayout;

.field public final kakaoGameSdkLogoutIdpDesc:Landroid/widget/TextView;

.field public final kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

.field public final kakaoGameSdkLogoutIdpLine:Landroid/view/View;

.field public final kakaoGameSdkLogoutTitle:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 549
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutBtnCancel:Landroid/widget/TextView;

    .line 559
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutBtnOk:Landroid/widget/TextView;

    .line 569
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutDesc:Landroid/widget/TextView;

    .line 579
    iput-object p5, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdp:Landroid/widget/LinearLayout;

    .line 589
    iput-object p6, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpDesc:Landroid/widget/TextView;

    .line 599
    iput-object p7, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

    .line 609
    iput-object p8, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpLine:Landroid/view/View;

    .line 619
    iput-object p9, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutTitle:Landroid/widget/TextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;
    .locals 12

    .line 919
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_logout_btn_cancel:I

    .line 929
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 979
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_logout_btn_ok:I

    .line 989
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 1039
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_logout_desc:I

    .line 1049
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1099
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_logout_idp:I

    .line 1109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 1159
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_logout_idp_desc:I

    .line 1169
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 1219
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_logout_idp_icon:I

    .line 1229
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 1279
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_logout_idp_line:I

    .line 1289
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1339
    sget v0, Lcom/kakaogame/R$id;->kakao_game_sdk_logout_title:I

    .line 1349
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 1399
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V

    return-object v0

    .line 1449
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1459
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 729
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;
    .locals 2

    .line 789
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_sdk_logout_popup:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 809
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 829
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
