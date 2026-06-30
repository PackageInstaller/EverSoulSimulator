.class public final Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;
.super Ljava/lang/Object;
.source "KakaoGameProtectedUserUnregisterConfirmBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGameUnregisterGuideView:Lcom/kakaogame/ui/font/NotoSansTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 289
    iput-object p2, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->kakaoGameUnregisterGuideView:Lcom/kakaogame/ui/font/NotoSansTextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;
    .locals 2

    .line 599
    sget v0, Lcom/kakaogame/R$id;->kakao_game_unregister_guide_view:I

    .line 609
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v1, :cond_0

    .line 659
    new-instance v0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/ui/font/NotoSansTextView;)V

    return-object v0

    .line 689
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 699
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 409
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;
    .locals 2

    .line 469
    sget v0, Lcom/kakaogame/R$layout;->kakao_game_protected_user_unregister_confirm:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 489
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/kakaogame/databinding/KakaoGameProtectedUserUnregisterConfirmBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
