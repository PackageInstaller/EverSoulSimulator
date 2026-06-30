.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPwInputDisplayBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final pwInputNone:Landroid/widget/ImageView;

.field public final pwInputValue:Lcom/kakaogame/ui/font/NotoSansTextView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/kakaogame/ui/font/NotoSansTextView;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 329
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->pwInputNone:Landroid/widget/ImageView;

    .line 339
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->pwInputValue:Lcom/kakaogame/ui/font/NotoSansTextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;
    .locals 3

    .line 639
    sget v0, Lcom/kakaogame/security/R$id;->pw_input_none:I

    .line 649
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 699
    sget v0, Lcom/kakaogame/security/R$id;->pw_input_value:I

    .line 709
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v2, :cond_0

    .line 759
    new-instance v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/kakaogame/ui/font/NotoSansTextView;)V

    return-object v0

    .line 789
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 799
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 449
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;
    .locals 2

    .line 509
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_input_display:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 529
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 549
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDisplayBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
