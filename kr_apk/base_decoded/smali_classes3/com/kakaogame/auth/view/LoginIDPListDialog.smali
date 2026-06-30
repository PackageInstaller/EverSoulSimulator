.class public final Lcom/kakaogame/auth/view/LoginIDPListDialog;
.super Landroid/app/AlertDialog;
.source "LoginIDPListDialog.kt"

# interfaces
.implements Lcom/kakaogame/KGActivityManager$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/auth/view/LoginIDPListDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 (2\u00020\u00012\u00020\u0002:\u0001(BL\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012#\u0010\n\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u000b\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0012\u0010\u0016\u001a\u00020\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002J \u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0008\u0010!\u001a\u00020\u000fH\u0002J\u0008\u0010\"\u001a\u00020\u000fH\u0002J\u0008\u0010#\u001a\u00020\u000fH\u0014J\u0008\u0010$\u001a\u00020\u000fH\u0016J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\'H\u0016R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\n\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/LoginIDPListDialog;",
        "Landroid/app/AlertDialog;",
        "Lcom/kakaogame/KGActivityManager$ConfigChangeListener;",
        "activity",
        "Landroid/app/Activity;",
        "idpCodes",
        "",
        "",
        "requestType",
        "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "idpCode",
        "",
        "<init>",
        "(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lkotlin/jvm/functions/Function1;)V",
        "binding",
        "Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;",
        "preOrientation",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initView",
        "setIdpItemView",
        "idpList1View",
        "Landroid/view/ViewGroup;",
        "idpList2View",
        "idpListView",
        "createLoginItem",
        "Landroid/view/View;",
        "calculateViewSize",
        "setDialogDim",
        "onStart",
        "dismiss",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/auth/view/LoginIDPListDialog$Companion;

.field private static final TAG:Ljava/lang/String; = "LoginIDPListDialog"


# instance fields
.field private binding:Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final idpCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preOrientation:I

.field private final requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;


# direct methods
.method public static synthetic $r8$lambda$Ctd8L-s-iqGuQ8VeozPkRbBSwIY(Lcom/kakaogame/auth/view/LoginIDPListDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setIdpItemView$lambda$4(Lcom/kakaogame/auth/view/LoginIDPListDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$IWqCr9HuIlupwF7XSrUFiORNkiE(Lcom/kakaogame/auth/view/LoginIDPListDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setIdpItemView$lambda$3(Lcom/kakaogame/auth/view/LoginIDPListDialog;Ljava/lang/String;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$YCf5RzLeKJ8Q3jx1HpgUXbB59hE(Lcom/kakaogame/auth/view/LoginIDPListDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->onCreate$lambda$0(Lcom/kakaogame/auth/view/LoginIDPListDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$d9ZiknS70M06IVb4cI0vAQrcVy0(Lcom/kakaogame/auth/view/LoginIDPListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->initView$lambda$2$lambda$1(Lcom/kakaogame/auth/view/LoginIDPListDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/auth/view/LoginIDPListDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/auth/view/LoginIDPListDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->Companion:Lcom/kakaogame/auth/view/LoginIDPListDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0ce698

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x103012e

    .line 389
    invoke-direct {p0, v0, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 359
    iput-object p2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->idpCodes:Ljava/util/List;

    .line 369
    iput-object p3, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    .line 379
    iput-object p4, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->callback:Lkotlin/jvm/functions/Function1;

    const/4 p2, -0x1

    .line 449
    iput p2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->preOrientation:I

    .line 479
    invoke-virtual {p0, p1}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final calculateViewSize()V
    .locals 3

    .line 2629
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2255f27e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d70f4f5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7d70f45d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 2659
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/kakaogame/util/DisplayUtil;->getDisplayWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2669
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/kakaogame/util/DisplayUtil;->getDisplayHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2679
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final createLoginItem(Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;)Landroid/view/View;
    .locals 5

    .line 1709
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d0ce858

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, -0x22475aec

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255f27e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;

    move-result-object v0

    const v1, 0x6d0cf638

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7d70f69d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1779
    new-instance v2, Ljava/io/File;

    const v3, 0x7d70f675

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1799
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1809
    iget-object v3, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1819
    iget-object v2, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1859
    :cond_0
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 1869
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    sget v2, Lcom/kakaogame/R$drawable;->zinny_sdk_popup_item_yellow:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1879
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

    sget v2, Lcom/kakaogame/R$drawable;->login_ico_talk_black:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1889
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    if-ne p2, v2, :cond_1

    .line 1899
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    .line 1919
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v1, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp_kakao:I

    invoke-static {p2, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 1889
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1949
    :cond_2
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Facebook:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1959
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    sget v2, Lcom/kakaogame/R$drawable;->zinny_sdk_popup_item_white:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1969
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

    sget v2, Lcom/kakaogame/R$drawable;->login_ico_fb:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1979
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    if-ne p2, v2, :cond_3

    .line 1989
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_1

    .line 2009
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 1979
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2039
    :cond_4
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Google:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2049
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    sget v2, Lcom/kakaogame/R$drawable;->zinny_sdk_popup_item_white:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2059
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

    sget v2, Lcom/kakaogame/R$drawable;->login_ico_google:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2069
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    if-ne p2, v2, :cond_5

    .line 2079
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_2

    .line 2099
    :cond_5
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 2069
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2129
    :cond_6
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2139
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    sget v2, Lcom/kakaogame/R$drawable;->zinny_sdk_popup_item_white:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2149
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

    sget v2, Lcom/kakaogame/R$drawable;->login_ico_siwa:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2159
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    if-ne p2, v2, :cond_7

    .line 2169
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_3

    .line 2189
    :cond_7
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v1, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp_siwa:I

    invoke-static {p2, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 2159
    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2219
    :cond_8
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Gamania:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2229
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    sget v2, Lcom/kakaogame/R$drawable;->zinny_sdk_popup_item_white:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2239
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

    sget v2, Lcom/kakaogame/R$drawable;->login_ico_guest2:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2249
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    if-ne p2, v2, :cond_9

    .line 2259
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_4

    .line 2279
    :cond_9
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 2249
    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2309
    :cond_a
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Twitter:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2319
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    sget v2, Lcom/kakaogame/R$drawable;->zinny_sdk_popup_item_white:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2329
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

    sget v2, Lcom/kakaogame/R$drawable;->login_ico_twitter:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2339
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    if-ne p2, v2, :cond_b

    .line 2349
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_5

    .line 2369
    :cond_b
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v1, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp_twitter:I

    invoke-static {p2, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 2339
    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 2399
    :cond_c
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2409
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    sget v2, Lcom/kakaogame/R$drawable;->zinny_sdk_popup_item_grey:I

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2419
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemIcon:Landroid/widget/ImageView;

    sget v2, Lcom/kakaogame/R$drawable;->login_ico_guest2:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2429
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItemName:Landroid/widget/TextView;

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    if-ne p2, v2, :cond_d

    .line 2439
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v2, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_idp:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p2, v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_6

    .line 2459
    :cond_d
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    sget v1, Lcom/kakaogame/R$string;->kakao_game_sdk_login_idp_guest:I

    invoke-static {p2, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 2429
    :goto_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2549
    :cond_e
    :goto_7
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 2559
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2589
    :cond_f
    iget-object p1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginItemBinding;->kakaoGameLoginIdpItem:Landroid/widget/RelativeLayout;

    const-string p2, "kakaoGameLoginIdpItem"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final initView()V
    .locals 5

    .line 809
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2255f27e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224228cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, -0x45198e67

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 849
    :cond_0
    new-instance v2, Ljava/io/File;

    const v3, 0x7d70f675

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 889
    iget-object v3, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 899
    iget-object v2, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 929
    :cond_1
    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    sget-object v3, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    if-ne v2, v3, :cond_2

    .line 939
    iget-object v2, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginTitle:Landroid/widget/TextView;

    sget v3, Lcom/kakaogame/R$string;->kakao_game_sdk_connect_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 959
    :cond_2
    iget-object v2, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginTitle:Landroid/widget/TextView;

    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    const v4, -0x45199f27

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kakaogame/core/CoreManager$Companion;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :goto_0
    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->idpCodes:Ljava/util/List;

    if-nez v2, :cond_3

    .line 989
    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->dismiss()V

    goto :goto_2

    .line 1019
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/kakaogame/util/DisplayUtil;->isScreenPortrait(Landroid/app/Activity;)Z

    move-result v1

    const v2, -0x45199fc7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 1029
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpList:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    invoke-direct {p0, v1, v2}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setIdpItemView(Landroid/view/ViewGroup;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;)V

    goto :goto_1

    .line 1049
    :cond_4
    iget-object v1, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->idpCodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    const/16 v4, 0x8

    if-le v1, v3, :cond_5

    .line 1059
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1069
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpList1:Landroid/widget/LinearLayout;

    const v2, -0x224238fc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpList2:Landroid/widget/LinearLayout;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    invoke-direct {p0, v1, v3, v2}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setIdpItemView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;)V

    goto :goto_1

    .line 1089
    :cond_5
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpListMulti:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1099
    iget-object v1, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginIdpList:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->requestType:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    invoke-direct {p0, v1, v2}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setIdpItemView(Landroid/view/ViewGroup;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;)V

    .line 1129
    :goto_1
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->kakaoGameLoginClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/kakaogame/auth/view/LoginIDPListDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/auth/view/LoginIDPListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initView$lambda$2$lambda$1(Lcom/kakaogame/auth/view/LoginIDPListDialog;Landroid/view/View;)V
    .locals 1

    .line 1139
    iget-object p1, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->callback:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$0(Lcom/kakaogame/auth/view/LoginIDPListDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 599
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x6f

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->callback:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->dismiss()V

    return p3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final setDialogDim()V
    .locals 3

    .line 2719
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2255f27e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d10dad7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f6147ae    # 0.88f

    .line 2749
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2759
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2769
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final setIdpItemView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;)V
    .locals 6

    .line 1259
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2255f27e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255fa26    # 2.899931E-18f

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->idpCodes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1289
    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->idpCodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1309
    invoke-direct {p0, v2, p3}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->createLoginItem(Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;)Landroid/view/View;

    move-result-object v3

    .line 1329
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    move-object v4, p1

    goto :goto_1

    :cond_0
    move-object v4, p2

    .line 1339
    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1349
    new-instance v5, Lcom/kakaogame/auth/view/LoginIDPListDialog$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v2}, Lcom/kakaogame/auth/view/LoginIDPListDialog$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/auth/view/LoginIDPListDialog;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1389
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$layout;->kakao_game_sdk_login_item_space:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 1399
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1439
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->idpCodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 1449
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget p3, Lcom/kakaogame/R$layout;->kakao_game_sdk_login_item:I

    invoke-static {p1, p3}, Lcom/kakaogame/util/ResourceUtil;->getLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    .line 1459
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1469
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget p3, Lcom/kakaogame/R$layout;->kakao_game_sdk_login_item_space:I

    invoke-static {p1, p3}, Lcom/kakaogame/util/ResourceUtil;->getLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    .line 1479
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final setIdpItemView(Landroid/view/ViewGroup;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;)V
    .locals 5

    .line 1529
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2255f27e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255fa26    # 2.899931E-18f

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->idpCodes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1559
    iget-object v2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->idpCodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1579
    invoke-direct {p0, v2, p2}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->createLoginItem(Ljava/lang/String;Lcom/kakaogame/auth/view/LoginUIManager$RequestType;)Landroid/view/View;

    move-result-object v3

    .line 1599
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1609
    new-instance v4, Lcom/kakaogame/auth/view/LoginIDPListDialog$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v2}, Lcom/kakaogame/auth/view/LoginIDPListDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/auth/view/LoginIDPListDialog;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1649
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget v3, Lcom/kakaogame/R$layout;->kakao_game_sdk_login_item_space:I

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 1659
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final setIdpItemView$lambda$3(Lcom/kakaogame/auth/view/LoginIDPListDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1359
    iget-object p2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final setIdpItemView$lambda$4(Lcom/kakaogame/auth/view/LoginIDPListDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1619
    iget-object p2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 2909
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2929
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2255f27e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d70f9e5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->removeConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const v0, 0x7d77683d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2989
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224230c4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d10d32f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->preOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255f27e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    iget v0, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->preOrientation:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->preOrientation:I

    if-eq v0, v1, :cond_2

    .line 3019
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

    if-nez v0, :cond_1

    const v0, -0x45198e67

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3029
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setContentView(Landroid/view/View;)V

    .line 3039
    invoke-direct {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->initView()V

    .line 3049
    invoke-direct {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->calculateViewSize()V

    .line 3079
    :cond_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->preOrientation:I

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 519
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 539
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x2255f27e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x2255f37e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/kakaogame/util/DisplayUtil;->checkSystemFontSize(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 579
    invoke-virtual {p0, p1}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setCanceledOnTouchOutside(Z)V

    .line 589
    new-instance v0, Lcom/kakaogame/auth/view/LoginIDPListDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/auth/view/LoginIDPListDialog;)V

    invoke-virtual {p0, v0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 719
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

    .line 749
    invoke-direct {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->initView()V

    .line 759
    invoke-direct {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->calculateViewSize()V

    .line 769
    iget-object p1, p0, Lcom/kakaogame/auth/view/LoginIDPListDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/databinding/KakaoGameSdkLoginBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setContentView(Landroid/view/View;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onStart()V
    .locals 3

    .line 2809
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 2829
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2255f27e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255f32e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    invoke-direct {p0}, Lcom/kakaogame/auth/view/LoginIDPListDialog;->setDialogDim()V

    .line 2869
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->addConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    return-void

    .array-data 1
    .end array-data
.end method
