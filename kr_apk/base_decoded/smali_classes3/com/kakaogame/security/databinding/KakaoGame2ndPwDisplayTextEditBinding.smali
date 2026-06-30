.class public final Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;
.super Ljava/lang/Object;
.source "KakaoGame2ndPwDisplayTextEditBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final displayCode1:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

.field public final displayCode2:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

.field public final displayCode3:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

.field public final displayCode4:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

.field public final displayCode5:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

.field public final displayCode6:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

.field public final kakaoGame2ndPwCodeContentLine:Landroid/view/View;

.field public final pwInputTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Landroid/view/View;Lcom/kakaogame/ui/font/NotoSansTextView;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 539
    iput-object p2, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode1:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    .line 549
    iput-object p3, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode2:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    .line 559
    iput-object p4, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode3:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    .line 569
    iput-object p5, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode4:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    .line 579
    iput-object p6, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode5:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    .line 589
    iput-object p7, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->displayCode6:Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    .line 599
    iput-object p8, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->kakaoGame2ndPwCodeContentLine:Landroid/view/View;

    .line 609
    iput-object p9, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->pwInputTitle:Lcom/kakaogame/ui/font/NotoSansTextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;
    .locals 12

    .line 909
    sget v0, Lcom/kakaogame/security/R$id;->display_code_1:I

    .line 919
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    if-eqz v4, :cond_0

    .line 969
    sget v0, Lcom/kakaogame/security/R$id;->display_code_2:I

    .line 979
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    if-eqz v5, :cond_0

    .line 1029
    sget v0, Lcom/kakaogame/security/R$id;->display_code_3:I

    .line 1039
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    if-eqz v6, :cond_0

    .line 1089
    sget v0, Lcom/kakaogame/security/R$id;->display_code_4:I

    .line 1099
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    if-eqz v7, :cond_0

    .line 1149
    sget v0, Lcom/kakaogame/security/R$id;->display_code_5:I

    .line 1159
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    if-eqz v8, :cond_0

    .line 1209
    sget v0, Lcom/kakaogame/security/R$id;->display_code_6:I

    .line 1219
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;

    if-eqz v9, :cond_0

    .line 1269
    sget v0, Lcom/kakaogame/security/R$id;->kakao_game_2nd_pw_code_content_line:I

    .line 1279
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1329
    sget v0, Lcom/kakaogame/security/R$id;->pw_input_title:I

    .line 1339
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/kakaogame/ui/font/NotoSansTextView;

    if-eqz v11, :cond_0

    .line 1389
    new-instance v0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Lcom/kakaogame/secondpw/view/PasswordCodeDisplayView;Landroid/view/View;Lcom/kakaogame/ui/font/NotoSansTextView;)V

    return-object v0

    .line 1429
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1439
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 719
    invoke-static {p0, v0, v1}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;
    .locals 2

    .line 779
    sget v0, Lcom/kakaogame/security/R$layout;->kakao_game_2nd_pw_display_text_edit:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 799
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 819
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->bind(Landroid/view/View;)Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/kakaogame/security/databinding/KakaoGame2ndPwDisplayTextEditBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
