.class public final Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;
.super Ljava/lang/Object;
.source "KakaoGameSdkLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameLoginBottomSpace:Landroid/view/View;

.field public final kakaoGameLoginClose:Landroid/widget/ImageView;

.field public final kakaoGameLoginIdpList:Landroid/widget/LinearLayout;

.field public final kakaoGameLoginIdpList1:Landroid/widget/LinearLayout;

.field public final kakaoGameLoginIdpList2:Landroid/widget/LinearLayout;

.field public final kakaoGameLoginIdpListMulti:Landroid/widget/LinearLayout;

.field public final kakaoGameLoginLayout:Landroid/widget/RelativeLayout;

.field public final kakaoGameLoginTitle:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final topBarSpace:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 1249
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginBottomSpace:Landroid/view/View;

    .line 1259
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginClose:Landroid/widget/ImageView;

    .line 1269
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpList:Landroid/widget/LinearLayout;

    .line 1279
    iput-object p5, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpList1:Landroid/widget/LinearLayout;

    .line 1289
    iput-object p6, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpList2:Landroid/widget/LinearLayout;

    .line 1299
    iput-object p7, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpListMulti:Landroid/widget/LinearLayout;

    .line 1309
    iput-object p8, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginLayout:Landroid/widget/RelativeLayout;

    .line 1319
    iput-object p9, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginTitle:Landroid/widget/TextView;

    .line 1329
    iput-object p10, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->topBarSpace:Landroid/widget/RelativeLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;
    .locals 12

    .line 1629
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_bottom_space:I

    .line 1639
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 1659
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_close:I

    .line 1669
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 1719
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_idp_list:I

    .line 1729
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 1779
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_idp_list1:I

    .line 1789
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1809
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_idp_list2:I

    .line 1819
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1839
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_idp_list_multi:I

    .line 1849
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1869
    move-object v9, p0

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 1889
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_title:I

    .line 1899
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 1949
    sget v0, Lcom/kakaogame/R$id;->top_bar_space:I

    .line 1959
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1979
    new-instance p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

    move-object v1, p0

    move-object v2, v9

    invoke-direct/range {v1 .. v11}, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    return-object p0

    .line 2029
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 2039
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1439
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;
    .locals 2

    .line 1499
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_sdk_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 1519
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1539
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1389
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
