.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPwCodeInputViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final kakaoGame2ndPwCodeClear:Landroid/widget/FrameLayout;

.field public final kakaoGame2ndPwCodeContent:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwCodeContentLine:Landroid/view/View;

.field public final kakaoGame2ndPwCodeInput:Lcom/kakaogame/ui/font/NotoSansEditText;

.field public final kakaoGame2ndPwContentTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

.field public final kakaoGame2ndPwResetButton:Landroid/widget/Button;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/view/View;Lcom/kakaogame/ui/font/NotoSansEditText;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/Button;)V
    .locals 0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 519
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwCodeClear:Landroid/widget/FrameLayout;

    .line 529
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwCodeContent:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 539
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwCodeContentLine:Landroid/view/View;

    .line 549
    iput-object p5, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwCodeInput:Lcom/kakaogame/ui/font/NotoSansEditText;

    .line 559
    iput-object p6, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwContentTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    .line 569
    iput-object p7, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->kakaoGame2ndPwResetButton:Landroid/widget/Button;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;
    .locals 10

    .line 869
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_code_clear:I

    .line 879
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 929
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_code_content:I

    .line 939
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v5, :cond_0

    .line 989
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_code_content_line:I

    .line 999
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1049
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_code_input:I

    .line 1059
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/kakaogame/ui/font/NotoSansEditText;

    if-eqz v7, :cond_0

    .line 1109
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_content_title:I

    .line 1119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v8, :cond_0

    .line 1169
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_reset_button:I

    .line 1179
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 1229
    new-instance v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/view/View;Lcom/kakaogame/ui/font/NotoSansEditText;Lcom/kakaogame/ui/font/NotoSansTextView;Landroid/widget/Button;)V

    return-object v0

    .line 1269
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1279
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 679
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;
    .locals 2

    .line 739
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_code_input_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 759
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 779
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwCodeInputViewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
