.class public final Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;
.super Ljava/lang/Object;
.source "KakaoGameProtectedUserConfirmCodeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameConfirmCodeGuide:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGameConfirmCodeInput:Lcom/kakaogame/ui/font/NotoSansEditText;

.field public final kakaoGameInputBoxView:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansEditText;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 389
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->kakaoGameConfirmCodeGuide:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 399
    iput-object p3, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->kakaoGameConfirmCodeInput:Lcom/kakaogame/ui/font/NotoSansEditText;

    .line 409
    iput-object p4, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->kakaoGameInputBoxView:Landroid/widget/FrameLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;
    .locals 4

    .line 709
    sget v0, Lcom/kakaogame/R$id;->kakao_game_confirm_code_guide:I

    .line 719
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v1, :cond_0

    .line 769
    sget v0, Lcom/kakaogame/R$id;->kakao_game_confirm_code_input:I

    .line 779
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/ui/font/NotoSansEditText;

    if-eqz v2, :cond_0

    .line 829
    sget v0, Lcom/kakaogame/R$id;->kakao_game_input_box_view:I

    .line 839
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 889
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Lcom/kakaogame/ui/font/NotoSansEditText;Landroid/widget/FrameLayout;)V

    return-object v0

    .line 919
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 929
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 519
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;
    .locals 2

    .line 579
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_protected_user_confirm_code:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 599
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 619
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserConfirmCodeBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
