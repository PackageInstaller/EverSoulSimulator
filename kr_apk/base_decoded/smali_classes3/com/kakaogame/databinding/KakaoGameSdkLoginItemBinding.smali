.class public final Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;
.super Ljava/lang/Object;
.source "KakaoGameSdkLoginItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

.field public final kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

.field public final kakaoGameLoginIdpItemName:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 379
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    .line 389
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

    .line 399
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;
    .locals 4

    .line 699
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_idp_item:I

    .line 709
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 759
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_idp_item_icon:I

    .line 769
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 819
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_idp_item_name:I

    .line 829
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 879
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    .line 909
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 919
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 509
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;
    .locals 2

    .line 569
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_sdk_login_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 589
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 609
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
