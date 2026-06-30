.class final Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;
.super Landroid/app/Dialog;
.source "LogoutUIManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/view/LogoutUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogoutPopupDialog"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "idpCode",
        "",
        "requestType",
        "Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;",
        "uiLock",
        "Lcom/kakaogame/util/MutexLock;",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "<init>",
        "(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;Lcom/kakaogame/util/MutexLock;)V",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final uiLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OOY11t8pFXrY3gKaXiBFMmhj8rw(Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->_init_$lambda$0(Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;Lcom/kakaogame/util/MutexLock;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;",
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0bddd0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0ce698

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x22420e9c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat:I

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->uiLock:Lcom/kakaogame/util/MutexLock;

    const/4 p4, 0x1

    .line 649
    invoke-virtual {p0, p4}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->requestWindowFeature(I)Z

    .line 659
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 669
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x1030002

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 679
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 689
    invoke-virtual {p0, v3}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->setCanceledOnTouchOutside(Z)V

    .line 699
    new-instance v1, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;)V

    invoke-virtual {p0, v1}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d70f69d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_logout_idp:I

    new-array v4, p4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v0, v2, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 869
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-static {v4}, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;

    move-result-object v4

    const v5, 0x6d0cf638

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 919
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

    sget v6, Lcom/kakaogame/R$drawable;->login_ico_talk_brown:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 929
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpLine:Landroid/view/View;

    sget v6, Lcom/kakaogame/R$drawable;->login_img_popup_bar_talk:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 949
    :cond_0
    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Facebook:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 959
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

    sget v6, Lcom/kakaogame/R$drawable;->login_ico_fb_blue:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 969
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpLine:Landroid/view/View;

    sget v6, Lcom/kakaogame/R$drawable;->login_img_popup_bar_fb:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 989
    :cond_1
    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Google:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 999
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

    sget v6, Lcom/kakaogame/R$drawable;->login_ico_google:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1009
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpLine:Landroid/view/View;

    sget v6, Lcom/kakaogame/R$drawable;->login_img_popup_bar_google:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1029
    :cond_2
    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1039
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

    sget v6, Lcom/kakaogame/R$drawable;->login_ico_siwa:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1049
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpLine:Landroid/view/View;

    sget v6, Lcom/kakaogame/R$drawable;->login_img_popup_bar_guest:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1069
    :cond_3
    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Gamania:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1079
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

    sget v6, Lcom/kakaogame/R$drawable;->login_ico_guest_black:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1089
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpLine:Landroid/view/View;

    sget v6, Lcom/kakaogame/R$drawable;->login_img_popup_bar_guest:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1109
    :cond_4
    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Twitter:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1119
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

    sget v6, Lcom/kakaogame/R$drawable;->login_ico_twitter:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1129
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpLine:Landroid/view/View;

    sget v6, Lcom/kakaogame/R$drawable;->login_img_popup_bar_guest:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1149
    :cond_5
    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1159
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpIcon:Landroid/widget/ImageView;

    sget v6, Lcom/kakaogame/R$drawable;->login_ico_guest_black:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1169
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpLine:Landroid/view/View;

    sget v6, Lcom/kakaogame/R$drawable;->login_img_popup_bar_guest:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1239
    :cond_6
    :goto_0
    iget-object v5, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutIdpDesc:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    sget-object v2, Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;->UNREGISTER:Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;

    if-ne p3, v2, :cond_8

    .line 1269
    iget-object p3, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutTitle:Landroid/widget/TextView;

    sget v1, Lcom/kakaogame/R$string;->kakao_game_sdk_unregister_title:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1279
    sget-object p3, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {p3}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1289
    sget p2, Lcom/kakaogame/R$string;->kakao_game_sdk_unregister_desc_kakao:I

    invoke-static {v0, p2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1309
    :cond_7
    sget p2, Lcom/kakaogame/R$string;->kakao_game_sdk_unregister_desc:I

    invoke-static {v0, p2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 1329
    :goto_1
    iget-object p3, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutDesc:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    iget-object p2, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutBtnOk:Landroid/widget/TextView;

    sget p3, Lcom/kakaogame/R$string;->kakao_game_sdk_unregister_btn:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1359
    :cond_8
    iget-object p3, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutTitle:Landroid/widget/TextView;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_logout_title:I

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1369
    sget-object p3, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {p3}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2, p4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1379
    sget p2, Lcom/kakaogame/R$string;->kakao_game_sdk_logout_desc_guest:I

    invoke-static {v0, p2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1399
    :cond_9
    sget p2, Lcom/kakaogame/R$string;->kakao_game_sdk_logout_desc:I

    new-array p3, p4, [Ljava/lang/Object;

    aput-object v1, p3, v3

    invoke-static {v0, p2, p3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1419
    :goto_2
    iget-object p3, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutDesc:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    iget-object p2, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutBtnOk:Landroid/widget/TextView;

    sget p3, Lcom/kakaogame/R$string;->kakao_game_sdk_logout_btn:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 1449
    :goto_3
    iget-object p2, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutBtnOk:Landroid/widget/TextView;

    new-instance p3, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1509
    iget-object p2, v4, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->kakaoGameSdkLogoutBtnCancel:Landroid/widget/TextView;

    new-instance p3, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1579
    invoke-virtual {v4}, Lcom/kakaogame/databinding/KakaoGameSdkLogoutPopupBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->setContentView(Landroid/view/View;)V

    .line 1589
    sget-object p2, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, p3}, Lcom/kakaogame/util/DisplayUtil;->setFullScreenView(Landroid/app/Activity;Landroid/view/Window;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final _init_$lambda$0(Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 709
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x6f

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x2329

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 749
    iget-object p2, p0, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->uiLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p2, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 759
    iget-object p1, p0, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->uiLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 769
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->dismiss()V

    return p3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static final lambda$3$lambda$1(Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;Landroid/view/View;)V
    .locals 1

    .line 1459
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1469
    iget-object v0, p0, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->uiLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1479
    iget-object p1, p0, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->uiLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 1489
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static final lambda$3$lambda$2(Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;Landroid/view/View;)V
    .locals 1

    .line 1519
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x2329

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1529
    iget-object v0, p0, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->uiLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1539
    iget-object p1, p0, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->uiLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    .line 1549
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LogoutUIManager$LogoutPopupDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method
