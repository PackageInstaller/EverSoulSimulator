.class public final Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;
.super Ljava/lang/Object;
.source "KakaoGameSdkLoginItemSpaceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameLoginBottomSpace:Landroid/view/View;

.field public final kakaoGameLoginIdpItemSpace:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;->rootView:Landroid/widget/FrameLayout;

    .line 319
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;->kakaoGameLoginBottomSpace:Landroid/view/View;

    .line 329
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;->kakaoGameLoginIdpItemSpace:Landroid/widget/RelativeLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;
    .locals 3

    .line 629
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_bottom_space:I

    .line 639
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    sget v0, Lcom/kakaogame/R$id;->kakao_game_login_idp_item_space:I

    .line 699
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 749
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/RelativeLayout;)V

    return-object v0

    .line 779
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 789
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 439
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;
    .locals 2

    .line 499
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_sdk_login_item_space:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 519
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 539
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemSpaceBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
