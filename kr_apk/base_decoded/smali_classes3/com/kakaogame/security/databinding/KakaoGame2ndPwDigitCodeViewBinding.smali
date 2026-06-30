.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPwDigitCodeViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final inputView:Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDetailViewBinding;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final settingView:Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;

.field public final virtualKeypad:Lcom/kakaogame/secondpw/view/VirtualKeypad;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDetailViewBinding;Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;Lcom/kakaogame/secondpw/view/VirtualKeypad;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 369
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;->inputView:Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDetailViewBinding;

    .line 379
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;->settingView:Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;

    .line 389
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;->virtualKeypad:Lcom/kakaogame/secondpw/view/VirtualKeypad;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;
    .locals 4

    .line 689
    sget v0, Lcom/kakaogame/security/R$id;->input_view:I

    .line 699
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 739
    invoke-static {v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDetailViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDetailViewBinding;

    move-result-object v0

    .line 759
    sget v1, Lcom/kakaogame/security/R$id;->setting_view:I

    .line 769
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 809
    invoke-static {v2}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;

    move-result-object v1

    .line 829
    sget v2, Lcom/kakaogame/security/R$id;->virtual_keypad:I

    .line 839
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/secondpw/view/VirtualKeypad;

    if-eqz v3, :cond_0

    .line 889
    new-instance v2, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;-><init>(Landroid/widget/LinearLayout;Lcom/kakaogame/security/databinding/KakaoGame2ndPwInputDetailViewBinding;Lcom/kakaogame/security/databinding/KakaoGame2ndPwSettingDetailViewBinding;Lcom/kakaogame/secondpw/view/VirtualKeypad;)V

    return-object v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 919
    :cond_2
    :goto_0
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

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 499
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;
    .locals 2

    .line 559
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_digit_code_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 579
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 599
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDigitCodeViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
