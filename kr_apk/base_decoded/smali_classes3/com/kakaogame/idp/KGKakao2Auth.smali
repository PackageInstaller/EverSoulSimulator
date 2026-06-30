.class public final Lcom/kakaogame/idp/KGKakao2Auth;
.super Ljava/lang/Object;
.source "KGKakao2Auth.kt"

# interfaces
.implements Lcom/kakaogame/idp/IdpAuthHandler;
.implements Lcom/kakaogame/idp/IdpAuthExHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/idp/KGKakao2Auth$Companion;,
        Lcom/kakaogame/idp/KGKakao2Auth$Item;,
        Lcom/kakaogame/idp/KGKakao2Auth$LoginCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGKakao2Auth.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGKakao2Auth.kt\ncom/kakaogame/idp/KGKakao2Auth\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,784:1\n314#2,11:785\n1#3:796\n32#4,2:797\n*S KotlinDebug\n*F\n+ 1 KGKakao2Auth.kt\ncom/kakaogame/idp/KGKakao2Auth\n*L\n130#1:785,11\n522#1:797,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 12\u00020\u00012\u00020\u0002:\u0003/01B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0016J(\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006H\u0082@\u00a2\u0006\u0002\u0010\u000eJ*\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J6\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u001a\u0010\u0017\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0008\u0012\u0004\u0012\u00020\u00150\u0018H\u0002J*\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\u0016J\u0016\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\u0082@\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008H\u0016J\u001e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020\u0015H\u0002J\u0008\u0010&\u001a\u00020\u0015H\u0002J&\u0010\'\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000b2\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00150\u0018H\u0002J<\u0010(\u001a\u00020)2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+2\u0006\u0010-\u001a\u00020.2\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00150\u0018H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\u0004\u0018\u00010 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u00062"
    }
    d2 = {
        "Lcom/kakaogame/idp/KGKakao2Auth;",
        "Lcom/kakaogame/idp/IdpAuthHandler;",
        "Lcom/kakaogame/idp/IdpAuthExHandler;",
        "<init>",
        "()V",
        "loginType",
        "",
        "initialize",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "activity",
        "Landroid/app/Activity;",
        "loginWithTypeSync",
        "extras",
        "(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "idpLogin",
        "Lcom/kakaogame/idp/IdpAccount;",
        "traceJobId",
        "",
        "getAccessToken",
        "kakaoLoginWithType",
        "",
        "authType",
        "callback",
        "Lkotlin/Function1;",
        "checkAuth",
        "authData",
        "logout",
        "signOut",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unregister",
        "localIdpProfile",
        "Lcom/kakaogame/KGIdpProfile;",
        "getLocalIdpProfile",
        "()Lcom/kakaogame/KGIdpProfile;",
        "refreshAccessToken",
        "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerLoginListener",
        "onFirstLogin",
        "showKakaoAuthTypeSelectDialog",
        "createSelectLoginTypeDialog",
        "Landroid/app/Dialog;",
        "authItems",
        "",
        "Lcom/kakaogame/idp/KGKakao2Auth$Item;",
        "adapter",
        "Landroid/widget/ListAdapter;",
        "Item",
        "LoginCallback",
        "Companion",
        "idp_kakao_release"
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
.field public static final Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

.field private static KAKAO_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase; = null

.field public static final KEY_ALLOW_MSG:Ljava/lang/String; = "isAllowedMessage"

.field public static final KEY_APP_REGISTERED:Ljava/lang/String; = "isAppRegistered"

.field public static final KEY_CI:Ljava/lang/String; = "ci"

.field public static final KEY_IMPRESSION_ID:Ljava/lang/String; = "impressionId"

.field public static final KEY_MEMBER_KEY:Ljava/lang/String; = "memberKey"

.field public static final KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final KEY_PROFILE_IMAGE_URL:Ljava/lang/String; = "profileImageUrl"

.field public static final KEY_RECOMMENDED:Ljava/lang/String; = "isRecommended"

.field public static final KEY_RECOMMEND_RANK:Ljava/lang/String; = "recommendRank"

.field public static final KEY_REMAINING_GROUP_MSG_COUNT:Ljava/lang/String; = "remainingGroupMessageCount"

.field public static final KEY_REMAINING_INVITE_COUNT:Ljava/lang/String; = "remainingInviteCount"

.field public static final KEY_SERVICE_USER_ID:Ljava/lang/String; = "serviceUserId"

.field public static final KEY_TALK_OS:Ljava/lang/String; = "kakaoTalkOS"

.field public static final KEY_THUMBNAIL_IMAGE_URL:Ljava/lang/String; = "thumbnailImageUrl"

.field public static final KEY_UNREGISTERED:Ljava/lang/String; = "isUnregistered"

.field public static final KEY_UUID:Ljava/lang/String; = "uuid"

.field private static final TAG:Ljava/lang/String; = "KGKakao2Auth"

.field private static appSecret:Ljava/lang/String;

.field private static isInitialized:Z

.field private static sdkIdentifier:Lcom/kakao/sdk/common/model/SdkIdentifier;

.field private static serverHosts:Lcom/kakao/sdk/common/model/ServerHosts;


# instance fields
.field private loginType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7ikLOIx42_vtZ1hPvSdRBOmO4Us(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/idp/KGKakao2Auth;->showKakaoAuthTypeSelectDialog$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$8oINvnKU6Ec-Ti-_MRlspwXCFwc(Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/idp/KGKakao2Auth;->createSelectLoginTypeDialog$lambda$24(Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$cZMgHcN1KqPQcJM-neDRRupUhNE(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/kakaogame/idp/KGKakao2Auth;->createSelectLoginTypeDialog$lambda$23(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$mSK0bX8vv3ElzbOR5IxiFBDHzKw(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Lcom/kakaogame/idp/KGKakao2Auth$LoginCallback;Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/kakaogame/idp/KGKakao2Auth;->kakaoLoginWithType$lambda$10(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Lcom/kakaogame/idp/KGKakao2Auth$LoginCallback;Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$mg507f3kgdagz5_U-iCmcES_aGU(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/idp/KGKakao2Auth;->showKakaoAuthTypeSelectDialog$lambda$22(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x6d0e9410

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 929
    iput-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth;->loginType:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getAppSecret$cp()Ljava/lang/String;
    .locals 1

    .line 919
    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->appSecret:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getKAKAO_PHASE$cp()Lcom/kakao/sdk/partner/model/KakaoPhase;
    .locals 1

    .line 919
    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->KAKAO_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getSdkIdentifier$cp()Lcom/kakao/sdk/common/model/SdkIdentifier;
    .locals 1

    .line 919
    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->sdkIdentifier:Lcom/kakao/sdk/common/model/SdkIdentifier;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getServerHosts$cp()Lcom/kakao/sdk/common/model/ServerHosts;
    .locals 1

    .line 919
    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->serverHosts:Lcom/kakao/sdk/common/model/ServerHosts;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$isInitialized$cp()Z
    .locals 1

    .line 919
    sget-boolean v0, Lcom/kakaogame/idp/KGKakao2Auth;->isInitialized:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$kakaoLoginWithType(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 919
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/idp/KGKakao2Auth;->kakaoLoginWithType(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$loginWithTypeSync(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 919
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/idp/KGKakao2Auth;->loginWithTypeSync(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$onFirstLogin(Lcom/kakaogame/idp/KGKakao2Auth;)V
    .locals 0

    .line 919
    invoke-direct {p0}, Lcom/kakaogame/idp/KGKakao2Auth;->onFirstLogin()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$refreshAccessToken(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 919
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/idp/KGKakao2Auth;->refreshAccessToken(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setInitialized$cp(Z)V
    .locals 0

    .line 919
    sput-boolean p0, Lcom/kakaogame/idp/KGKakao2Auth;->isInitialized:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setKAKAO_PHASE$cp(Lcom/kakao/sdk/partner/model/KakaoPhase;)V
    .locals 0

    .line 919
    sput-object p0, Lcom/kakaogame/idp/KGKakao2Auth;->KAKAO_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$signOut(Lcom/kakaogame/idp/KGKakao2Auth;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 919
    invoke-direct {p0, p1}, Lcom/kakaogame/idp/KGKakao2Auth;->signOut(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final createSelectLoginTypeDialog(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListAdapter;Lkotlin/jvm/functions/Function1;)Landroid/app/Dialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/kakaogame/idp/KGKakao2Auth$Item;",
            ">;",
            "Landroid/widget/ListAdapter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 6019
    new-instance v0, Landroid/app/Dialog;

    check-cast p1, Landroid/content/Context;

    sget v1, Lcom/kakaogame/kakao/R$style;->KakaoLoginSelectDialog:I

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 6029
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 6039
    sget p1, Lcom/kakaogame/kakao/R$layout;->kakao_game_kakao_login_dialog:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 6049
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6059
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 6089
    :cond_0
    sget p1, Lcom/kakaogame/kakao/R$id;->login_list_view:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, -0x451be567

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ListView;

    .line 6099
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6109
    new-instance p3, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2, p4, v0}, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6159
    sget p1, Lcom/kakaogame/kakao/R$id;->login_close_button:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    .line 6169
    new-instance p2, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda3;

    invoke-direct {p2, p4, v0}, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final createSelectLoginTypeDialog$lambda$23(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 6119
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakaogame/idp/KGKakao2Auth$Item;

    invoke-virtual {p0}, Lcom/kakaogame/idp/KGKakao2Auth$Item;->getAuthType()Ljava/lang/String;

    move-result-object p0

    .line 6129
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6139
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final createSelectLoginTypeDialog$lambda$24(Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 6179
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6189
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final initializeKakaoSdk(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->initializeKakaoSdk(Landroid/content/Context;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final isCheckAgeAuthOnGame()Z
    .locals 1

    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->isCheckAgeAuthOnGame()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final kakaoLoginWithType(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .line 2439
    sget-object v1, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    move-object/from16 v5, p3

    invoke-static {v1, v5}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->access$getLoginCallback(Lcom/kakaogame/idp/KGKakao2Auth$Companion;Lkotlin/jvm/functions/Function1;)Lcom/kakaogame/idp/KGKakao2Auth$LoginCallback;

    move-result-object v3

    .line 2459
    sget-object v1, Lcom/kakao/sdk/auth/model/Prompt;->LOGIN:Lcom/kakao/sdk/auth/model/Prompt;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    if-eqz v0, :cond_0

    .line 2479
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0bd780

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2489
    :goto_0
    sget-object v1, Lcom/kakaogame/KGKakaoAuthType;->KakaoAllType:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {v1}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2499
    new-instance v8, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda4;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v9

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Lcom/kakaogame/idp/KGKakao2Auth$LoginCallback;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v6, v7, v8}, Lcom/kakaogame/idp/KGKakao2Auth;->showKakaoAuthTypeSelectDialog(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    .line 2649
    :cond_1
    sget-object v1, Lcom/kakaogame/KGKakaoAuthType;->KakaoWeb:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {v1}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, -0x22404d54

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0e9910

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 2659
    sget-object v0, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v0

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/16 v15, 0x3c

    const/16 v16, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v16}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 2669
    invoke-static {}, Lcom/kakaogame/KGKakaoTalk;->isKakaoTalkInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0x7d728605

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, v6, Lcom/kakaogame/idp/KGKakao2Auth;->loginType:Ljava/lang/String;

    goto :goto_2

    .line 2739
    :cond_3
    invoke-static {}, Lcom/kakaogame/KGKakaoTalk;->isKakaoTalkInstalled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2749
    sget-object v0, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v0

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/16 v14, 0x1e

    const/4 v15, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v15}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoTalk$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    const v1, 0x6d0e9410

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2779
    :cond_4
    sget-object v0, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v0

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/16 v15, 0x3c

    const/16 v16, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v16}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 2739
    :goto_1
    iput-object v1, v6, Lcom/kakaogame/idp/KGKakao2Auth;->loginType:Ljava/lang/String;

    :goto_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final kakaoLoginWithType$lambda$10(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Lcom/kakaogame/idp/KGKakao2Auth$LoginCallback;Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 10

    if-eqz p5, :cond_2

    .line 2519
    sget-object p4, Lcom/kakaogame/KGKakaoAuthType;->KakaoTalk:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {p4}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    const-string p5, "null cannot be cast to non-null type android.content.Context"

    if-eqz p4, :cond_0

    .line 2529
    sget-object p3, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {p3}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v0

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoTalk$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    const-string p1, "INSTALLED_APP"

    goto :goto_0

    .line 2559
    :cond_0
    sget-object p4, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {p4}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v0

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/16 v8, 0x3c

    const/4 v9, 0x0

    move-object v2, p3

    invoke-static/range {v0 .. v9}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 2569
    invoke-static {}, Lcom/kakaogame/KGKakaoTalk;->isKakaoTalkInstalled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "INSTALLED_WEB"

    goto :goto_0

    :cond_1
    const-string p1, "NOT_INSTALLED_WEB"

    .line 2519
    :goto_0
    iput-object p1, p0, Lcom/kakaogame/idp/KGKakao2Auth;->loginType:Ljava/lang/String;

    goto :goto_1

    .line 2609
    :cond_2
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x2329

    const-string p2, ""

    invoke-virtual {p0, p1, p2, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p0

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2629
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final loginWithTypeSync(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7869
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 7929
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 7939
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 1319
    sget-object v2, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->initializeKakaoSdk(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1329
    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfaa

    const v2, 0x7d72878d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1379
    sget-object p2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getUseKakaoAuthType()Ljava/lang/String;

    move-result-object p2

    .line 1389
    :cond_1
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 1399
    new-instance v3, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;

    invoke-direct {v3, p0, p2, v1, v2}, Lcom/kakaogame/idp/KGKakao2Auth$loginWithTypeSync$2$eventListener$1;-><init>(Lcom/kakaogame/idp/KGKakao2Auth;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object v6, v3

    check-cast v6, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    .line 1619
    sget-object v4, Lcom/kakaogame/KGAuthActivity;->Companion:Lcom/kakaogame/KGAuthActivity$Companion;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kakaogame/KGAuthActivity$Companion;->start$default(Lcom/kakaogame/KGAuthActivity$Companion;Landroid/app/Activity;Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;ILjava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 7949
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 7859
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final onFirstLogin()V
    .locals 16

    const v1, 0x336011ab

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x22578e1e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x336024cb

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5d12a9e7

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x2240484c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x543b8322

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x22578b5e

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    .line 4849
    :try_start_0
    sget-object v7, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v8, "onFirstLogin"

    invoke-virtual {v7, v1, v8}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4859
    sget-object v7, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v7}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v7

    if-nez v7, :cond_0

    .line 4879
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "infodesk is null"

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4909
    :cond_0
    sget-object v7, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSocialPushMessage()Ljava/lang/String;

    move-result-object v8

    .line 4919
    sget-object v7, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4929
    move-object v6, v8

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v14, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v14

    :goto_1
    if-eqz v6, :cond_3

    return-void

    .line 4959
    :cond_3
    sget-object v6, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v6}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSocialPushReceiverCount()I

    move-result v6

    .line 4969
    sget-object v9, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v6, :cond_4

    return-void

    .line 5009
    :cond_4
    new-instance v5, Lcom/kakaogame/idp/KGKakao2Auth$onFirstLogin$profileResult$1;

    const/4 v15, 0x0

    invoke-direct {v5, v15}, Lcom/kakaogame/idp/KGKakao2Auth$onFirstLogin$profileResult$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v14, v15}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kakaogame/KGResult;

    .line 5019
    sget-object v9, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5029
    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    const-string v9, "${nickname}"

    .line 5059
    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/kakao/sdk/talk/model/TalkProfile;

    invoke-virtual {v4}, Lcom/kakao/sdk/talk/model/TalkProfile;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5069
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5079
    sget-object v3, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->loadKakaoFriendProfiles()Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 5089
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5099
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    .line 5129
    :cond_6
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Map;

    .line 5139
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v3, Ljava/util/List;

    .line 5149
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5159
    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v0}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v15}, Lcom/kakaogame/player/PlayerService;->getListWithIdpId(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 5169
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 5199
    :cond_7
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Map;

    .line 5209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 5219
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-gt v3, v6, :cond_8

    .line 5229
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7979
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5239
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/player/Player;

    invoke-virtual {v3}, Lcom/kakaogame/player/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5269
    :cond_8
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 5279
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    :goto_3
    if-ge v7, v6, :cond_a

    .line 5309
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kakaogame/player/Player;

    invoke-virtual {v8}, Lcom/kakaogame/player/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v8

    .line 5319
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 5349
    :cond_9
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/2addr v7, v14

    goto :goto_3

    .line 5399
    :cond_a
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pushFriendIds: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5409
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v3, "contentTitle"

    .line 5419
    sget-object v5, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v5}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/kakaogame/util/AndroidManifestUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "contentText"

    .line 5429
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "playerIds"

    .line 5439
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5449
    invoke-static {v0}, Lcom/kakaogame/push/PushService;->sendByPlayerIds(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 5459
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 5479
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void

    .array-data 1
    .end array-data
.end method

.method private final refreshAccessToken(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4429
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 4439
    sget-object v2, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v2, p1}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->initializeKakaoSdk(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4449
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfaa

    const v3, 0x7d72878d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 4459
    :cond_0
    sget p1, Lcom/kakaogame/core/CoreManager;->testKakaoErrorCode:I

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    .line 4469
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    sget v2, Lcom/kakaogame/core/CoreManager;->testKakaoErrorCode:I

    const v3, 0x336027e3

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 4499
    :cond_1
    sget-object p1, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {p1}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object p1

    new-instance v2, Lcom/kakaogame/idp/KGKakao2Auth$refreshAccessToken$2$1;

    invoke-direct {v2, v1}, Lcom/kakaogame/idp/KGKakao2Auth$refreshAccessToken$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v2}, Lcom/kakao/sdk/user/UserApiClient;->accessTokenInfo(Lkotlin/jvm/functions/Function2;)V

    .line 4429
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final registerLoginListener()V
    .locals 3

    .line 4649
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x336011ab

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d729c8d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4659
    new-instance v0, Lcom/kakaogame/idp/KGKakao2Auth$registerLoginListener$stateListener$1;

    invoke-direct {v0, p0}, Lcom/kakaogame/idp/KGKakao2Auth$registerLoginListener$stateListener$1;-><init>(Lcom/kakaogame/idp/KGKakao2Auth;)V

    check-cast v0, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    .line 4799
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kakaogame/core/CoreManager;->addCoreStateListener(Lcom/kakaogame/core/CoreManager$CoreStateListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showKakaoAuthTypeSelectDialog(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 5529
    invoke-static {}, Lcom/kakaogame/KGKakaoTalk;->isKakaoTalkInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5539
    sget-object p1, Lcom/kakaogame/KGKakaoAuthType;->KakaoWeb:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {p1}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakaogame/idp/KGKakao2Auth$Item;

    .line 5579
    new-instance v1, Lcom/kakaogame/idp/KGKakao2Auth$Item;

    .line 5589
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    const v3, 0x6d0e8130

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kakaogame/core/CoreManager$Companion;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5599
    sget v3, Lcom/kakaogame/kakao/R$drawable;->login_kakao_talk_icon:I

    .line 5609
    sget-object v4, Lcom/kakaogame/KGKakaoAuthType;->KakaoTalk:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {v4}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object v4

    .line 5579
    invoke-direct {v1, v2, v3, v4}, Lcom/kakaogame/idp/KGKakao2Auth$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5619
    new-instance v1, Lcom/kakaogame/idp/KGKakao2Auth$Item;

    .line 5629
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    const v4, 0x6d0e8008

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kakaogame/core/CoreManager$Companion;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5639
    sget v4, Lcom/kakaogame/kakao/R$drawable;->login_kakao_account_icon:I

    .line 5649
    sget-object v5, Lcom/kakaogame/KGKakaoAuthType;->KakaoWeb:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {v5}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object v5

    .line 5619
    invoke-direct {v1, v3, v4, v5}, Lcom/kakaogame/idp/KGKakao2Auth$Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 5579
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5679
    new-instance v1, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;

    invoke-direct {v1, p1, v0}, Lcom/kakaogame/idp/KGKakao2Auth$showKakaoAuthTypeSelectDialog$adapter$1;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    check-cast v1, Landroid/widget/ListAdapter;

    .line 5859
    new-instance v3, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/kakaogame/idp/KGKakao2Auth;->createSelectLoginTypeDialog(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListAdapter;Lkotlin/jvm/functions/Function1;)Landroid/app/Dialog;

    move-result-object p1

    .line 5889
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5899
    new-instance v0, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/kakaogame/idp/KGKakao2Auth$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 5929
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showKakaoAuthTypeSelectDialog$lambda$21(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 5869
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5879
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private static final showKakaoAuthTypeSelectDialog$lambda$22(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 5909
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final signOut(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3679
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 3689
    sget-object v2, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v2

    new-instance v3, Lcom/kakaogame/idp/KGKakao2Auth$signOut$2$1;

    invoke-direct {v3, v1}, Lcom/kakaogame/idp/KGKakao2Auth$signOut$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v3}, Lcom/kakao/sdk/user/UserApiClient;->logout(Lkotlin/jvm/functions/Function1;)V

    .line 3679
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final updateScope(Landroid/app/Activity;Ljava/util/List;)Lcom/kakaogame/KGResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->updateScope(Landroid/app/Activity;Ljava/util/List;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public checkAuth(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/idp/IdpAccount;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;"
        }
    .end annotation

    const v0, 0x33603a13

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x543d14da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2859
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x3360fe3b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x336011ab

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2889
    :try_start_0
    sget-object v2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v4, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v2, p3, v4}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 2899
    new-instance v2, Lcom/kakaogame/idp/KGKakao2Auth$checkAuth$refreshAccessTokenResult$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/kakaogame/idp/KGKakao2Auth$checkAuth$refreshAccessTokenResult$1;-><init>(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/KGResult;

    .line 2909
    sget-object v5, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 2919
    sget-object v6, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 2929
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v7

    .line 2939
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2909
    :cond_0
    invoke-virtual {v5, p3, v6, v7, v8}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 2959
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2969
    sget-object v5, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v6, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v5, p3, v6}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 2979
    invoke-static {}, Lcom/kakaogame/kakao/KakaoManager;->loadProfile()Lcom/kakaogame/KGResult;

    move-result-object v5

    .line 2989
    sget-object v6, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 2999
    sget-object v7, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 3009
    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v8

    .line 3019
    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2989
    :cond_1
    invoke-virtual {v6, p3, v7, v8, v9}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    goto :goto_0

    .line 3059
    :cond_2
    sget-object p3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {p3, v5}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v5

    .line 3079
    :goto_0
    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 3089
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    sget-object p2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    const-string p3, "kakaocapri"

    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isZrtError(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3109
    sget-object p2, Lcom/kakaogame/kakao/KakaoCache;->INSTANCE:Lcom/kakaogame/kakao/KakaoCache;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p2, p1}, Lcom/kakaogame/kakao/KakaoCache;->loadUserProfile(Landroid/content/Context;)Lcom/kakaogame/kakao/UserProfile;

    move-result-object p1

    if-nez p1, :cond_3

    .line 3149
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3169
    :cond_3
    invoke-static {p1}, Lcom/kakaogame/kakao/KakaoManager;->setKakaoCacheMode(Lcom/kakaogame/kakao/UserProfile;)V

    .line 3179
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const p2, 0x30d40

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3449
    :goto_1
    invoke-static {v1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object p1

    .line 3209
    :cond_4
    :try_start_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfaa

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3449
    invoke-static {v1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object p1

    .line 3229
    :cond_5
    :try_start_2
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p3, "refreshAccessTokenResult: Success"

    invoke-virtual {p1, v3, p3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3239
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3249
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->offKakaoCacheMode()V

    .line 3269
    :cond_6
    sget-object p1, Lcom/kakao/sdk/auth/TokenManager;->Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/TokenManager$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/TokenManager;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    .line 3279
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p3, "accessToken"

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3289
    invoke-static {}, Lcom/kakaogame/kakao/KakaoManager;->getUserProfile()Lcom/kakaogame/kakao/UserProfile;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 3309
    invoke-virtual {p1}, Lcom/kakaogame/kakao/UserProfile;->getServiceUserId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p3, v5, v7

    if-eqz p3, :cond_7

    .line 3319
    invoke-virtual {p1}, Lcom/kakaogame/kakao/UserProfile;->getServiceUserId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v0, "serviceUserId"

    .line 3329
    invoke-virtual {p2, v0, p3}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3349
    :cond_7
    invoke-virtual {p1}, Lcom/kakaogame/kakao/UserProfile;->getUuid()Ljava/lang/String;

    move-result-object p1

    .line 3359
    move-object p3, p1

    check-cast p3, Ljava/lang/CharSequence;

    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_2
    if-eqz v4, :cond_a

    const-string/jumbo p3, "uuid"

    .line 3369
    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3399
    :cond_a
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 3419
    :try_start_3
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2, v3, p3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3429
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xfa1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3449
    move-object p2, p1

    check-cast p2, Lcom/kakaogame/KGResult;

    :goto_3
    invoke-static {p1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object p1

    :goto_4
    move-object p2, v1

    check-cast p2, Lcom/kakaogame/KGResult;

    invoke-static {v1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAccessToken(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .line 2329
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x543b9d32

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x336011ab

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 2349
    new-instance v1, Lcom/kakaogame/idp/KGKakao2Auth$getAccessToken$1$refreshResult$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/kakaogame/idp/KGKakao2Auth$getAccessToken$1$refreshResult$1;-><init>(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v3, v1, p1, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    .line 2359
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x33603cf3

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2379
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalIdpProfile()Lcom/kakaogame/KGIdpProfile;
    .locals 10

    const v0, 0x543fad32

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const v2, -0x2244c0e4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3989
    :try_start_0
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v4

    .line 3999
    invoke-static {}, Lcom/kakaogame/kakao/KakaoManager;->getUserProfile()Lcom/kakaogame/kakao/UserProfile;

    move-result-object v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 4029
    invoke-static {}, Lcom/kakaogame/kakao/KakaoManager;->getTalkProfile()Lcom/kakao/sdk/talk/model/TalkProfile;

    move-result-object v6

    .line 4039
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    const-string v8, "idpCode"

    const-string v9, "Kakao"

    .line 4049
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "idpUserId"

    .line 4059
    invoke-virtual {v4}, Lcom/kakaogame/idp/IdpAccount;->getIdpUserId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "idpAccessToken"

    .line 4069
    invoke-virtual {v4}, Lcom/kakaogame/idp/IdpAccount;->getIdpAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "uuid"

    .line 4079
    invoke-virtual {v5}, Lcom/kakaogame/kakao/UserProfile;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "serviceUserId"

    .line 4089
    invoke-virtual {v5}, Lcom/kakaogame/kakao/UserProfile;->getServiceUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4149
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isAppRegistered"

    const/4 v4, 0x1

    .line 4159
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 4179
    :try_start_1
    invoke-virtual {v5}, Lcom/kakaogame/kakao/UserProfile;->getProperties()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 4189
    invoke-virtual {v5}, Lcom/kakaogame/kakao/UserProfile;->getProperties()Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v9, "msg_blocked"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "true"

    .line 4199
    invoke-static {v9, v8, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v8, v1

    :goto_0
    :try_start_2
    const-string v9, "isAllowedMessage"

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 4249
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "remainingInviteCount"

    .line 4259
    invoke-virtual {v5}, Lcom/kakaogame/kakao/UserProfile;->getRemainingInviteCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "remainingGroupMessageCount"

    .line 4269
    invoke-virtual {v5}, Lcom/kakaogame/kakao/UserProfile;->getRemainingGroupMsgCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const v1, 0x543fac3a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_2

    .line 4289
    :try_start_3
    invoke-virtual {v6}, Lcom/kakao/sdk/talk/model/TalkProfile;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4299
    invoke-virtual {v6}, Lcom/kakao/sdk/talk/model/TalkProfile;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "profileImageUrl"

    .line 4309
    invoke-virtual {v6}, Lcom/kakao/sdk/talk/model/TalkProfile;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android"

    .line 4319
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "unknown"

    .line 4339
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4359
    :goto_2
    new-instance v0, Lcom/kakaogame/KGKakaoProfile;

    invoke-direct {v0, v7}, Lcom/kakaogame/KGKakaoProfile;-><init>(Ljava/util/Map;)V

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 4369
    :goto_3
    check-cast v0, Lcom/kakaogame/KGIdpProfile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 4389
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v4, 0x336011ab

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v3

    nop

    .array-data 1
    .end array-data
.end method

.method public idpLogin(Landroid/app/Activity;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    const v9, 0x5d1049cf

    invoke-static {v9}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v9

    const v2, -0x451bf78f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x225569de

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x543d14da

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, -0x451b2a57

    invoke-static {v6}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v10, 0x336011ab

    invoke-static {v10}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10, v5}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 1699
    :try_start_0
    sget-object v4, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v5, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v4, v8, v5}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 1709
    new-instance v4, Lcom/kakaogame/idp/KGKakao2Auth$idpLogin$idpLoginResult$1;

    move-object/from16 v5, p2

    invoke-direct {v4, v1, v0, v5, v11}, Lcom/kakaogame/idp/KGKakao2Auth$idpLogin$idpLoginResult$1;-><init>(Lcom/kakaogame/idp/KGKakao2Auth;Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x1

    invoke-static {v11, v4, v12, v11}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakaogame/KGResult;

    .line 1749
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v10, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    sget-object v3, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 1769
    sget-object v5, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 1779
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v6

    .line 1789
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1759
    :cond_0
    invoke-virtual {v3, v8, v5, v6, v7}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 1809
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1819
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object v0

    .line 1849
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/kakaogame/idp/KGKakao2Auth;->loginType:Ljava/lang/String;

    invoke-static {v0, v3, v8}, Lcom/kakaogame/kakao/KakaoManager;->requestMeAndSignup(Landroid/app/Activity;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object v13

    .line 1859
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    invoke-virtual {v13}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1879
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/idp/KGKakao2Auth;->logout()Lcom/kakaogame/KGResult;

    .line 1889
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v13, Ljava/util/Map;

    invoke-virtual {v0, v13}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2279
    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object v0

    .line 1909
    :cond_2
    :try_start_2
    sget-object v2, Lcom/kakao/sdk/auth/TokenManager;->Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/auth/TokenManager$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakao/sdk/auth/TokenManager;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, ""

    :cond_4
    move-object v14, v2

    .line 1929
    move-object v2, v14

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v15, 0x0

    if-nez v2, :cond_5

    move v2, v12

    goto :goto_0

    :cond_5
    move v2, v15

    :goto_0
    if-eqz v2, :cond_6

    .line 1939
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v2, "Kakao AccessToken is Null."

    const/16 v3, 0xfaa

    invoke-virtual {v0, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2279
    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object v0

    .line 1989
    :cond_6
    :try_start_3
    sget-object v2, Lcom/kakaogame/idp/KGKakao2Auth;->Companion:Lcom/kakaogame/idp/KGKakao2Auth$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/idp/KGKakao2Auth$Companion;->isCheckAgeAuthOnGame()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1999
    sget-object v2, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoAgeAuthManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/kakaogame/kakao/KakaoAgeAuthManager;->checkAgeAuth$default(Lcom/kakaogame/kakao/KakaoAgeAuthManager;Landroid/app/Activity;ZLjava/lang/String;ILjava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 2009
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2019
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2279
    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object v0

    .line 2039
    :cond_7
    :try_start_4
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2049
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    move v12, v15

    :cond_9
    :goto_1
    if-nez v12, :cond_a

    .line 2059
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 2089
    :cond_a
    invoke-virtual {v13}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/kakao/UserProfile;

    .line 2099
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/kakao/UserProfile;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 2109
    invoke-virtual {v2}, Lcom/kakaogame/kakao/UserProfile;->getServiceUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 2119
    sget-object v5, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    iget-object v6, v1, Lcom/kakaogame/idp/KGKakao2Auth;->loginType:Ljava/lang/String;

    invoke-virtual {v5, v3, v14, v6}, Lcom/kakaogame/idp/IdpAccount$Companion;->createKakaoAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object v3

    const-string v5, "serviceUserId"

    .line 2129
    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v4, "uuid"

    .line 2139
    invoke-virtual {v2}, Lcom/kakaogame/kakao/UserProfile;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2149
    sget-object v2, Lcom/kakaogame/kakao/KakaoManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoManager;

    invoke-virtual {v2}, Lcom/kakaogame/kakao/KakaoManager;->isSignup()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2159
    invoke-static {v0, v3, v8}, Lcom/kakaogame/kakao/KakaoManager;->checkAgreement(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 2169
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2189
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/idp/KGKakao2Auth;->logout()Lcom/kakaogame/KGResult;

    .line 2199
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2279
    invoke-static {v11}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object v0

    .line 2229
    :cond_b
    :try_start_5
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v3}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2249
    :try_start_6
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v10, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2259
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xfa1

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2279
    move-object v2, v0

    check-cast v2, Lcom/kakaogame/KGResult;

    :goto_2
    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object v0

    :goto_3
    move-object v2, v11

    check-cast v2, Lcom/kakaogame/KGResult;

    invoke-static {v11}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    throw v0

    .array-data 1
    .end array-data
.end method

.method public initialize(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x5d12b017

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x543d14da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x543b9b2a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x336011ab

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 969
    :try_start_0
    sput-boolean v1, Lcom/kakaogame/idp/KGKakao2Auth;->isInitialized:Z

    .line 989
    sget-object v2, Lcom/kakao/sdk/common/model/SdkIdentifier;->Companion:Lcom/kakao/sdk/common/model/SdkIdentifier$Companion;

    const-string v4, "game_sdk"

    const-string v5, "3.20.0"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kakao/sdk/partner/model/SdkIdentifierKt;->create(Lcom/kakao/sdk/common/model/SdkIdentifier$Companion;Ljava/util/Map;)Lcom/kakao/sdk/common/model/SdkIdentifier;

    move-result-object v2

    sput-object v2, Lcom/kakaogame/idp/KGKakao2Auth;->sdkIdentifier:Lcom/kakao/sdk/common/model/SdkIdentifier;

    .line 1019
    sget-object v2, Lcom/kakao/sdk/common/model/ServerHosts;->Companion:Lcom/kakao/sdk/common/model/ServerHosts$Companion;

    sget-object v4, Lcom/kakao/sdk/partner/model/KakaoPhase;->PRODUCTION:Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-static {v2, v4}, Lcom/kakao/sdk/partner/model/ServerHostsKt;->withPhase(Lcom/kakao/sdk/common/model/ServerHosts$Companion;Lcom/kakao/sdk/partner/model/KakaoPhase;)Lcom/kakao/sdk/common/model/ServerHosts;

    move-result-object v2

    sput-object v2, Lcom/kakaogame/idp/KGKakao2Auth;->serverHosts:Lcom/kakao/sdk/common/model/ServerHosts;

    .line 1029
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v2

    const-string v4, "serverType"

    invoke-virtual {v2, v4}, Lcom/kakaogame/config/Configuration;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1039
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sandbox"

    const/4 v4, 0x1

    .line 1059
    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->SANDBOX:Lcom/kakao/sdk/partner/model/KakaoPhase;

    goto :goto_0

    :cond_0
    const-string v0, "alpha"

    .line 1069
    invoke-static {v0, v2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->DEV:Lcom/kakao/sdk/partner/model/KakaoPhase;

    goto :goto_0

    .line 1079
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "_kakaobeta"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v0, v2, v1, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->CBT:Lcom/kakao/sdk/partner/model/KakaoPhase;

    goto :goto_0

    .line 1089
    :cond_2
    sget-object v0, Lcom/kakao/sdk/partner/model/KakaoPhase;->PRODUCTION:Lcom/kakao/sdk/partner/model/KakaoPhase;

    .line 1049
    :goto_0
    sput-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->KAKAO_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    .line 1109
    sget-object v0, Lcom/kakao/sdk/common/model/ServerHosts;->Companion:Lcom/kakao/sdk/common/model/ServerHosts$Companion;

    sget-object v2, Lcom/kakaogame/idp/KGKakao2Auth;->KAKAO_PHASE:Lcom/kakao/sdk/partner/model/KakaoPhase;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/kakao/sdk/partner/model/ServerHostsKt;->withPhase(Lcom/kakao/sdk/common/model/ServerHosts$Companion;Lcom/kakao/sdk/partner/model/KakaoPhase;)Lcom/kakao/sdk/common/model/ServerHosts;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->serverHosts:Lcom/kakao/sdk/common/model/ServerHosts;

    .line 1139
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/idp/KGKakao2Auth;->appSecret:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    .line 1149
    const-class v2, Lcom/kakaogame/KGAuthActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-class v1, Lcom/kakao/sdk/auth/AuthCodeHandlerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1159
    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/kakaogame/util/AndroidManifestUtil;->checkActivities(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1169
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1189
    :cond_3
    const-class p1, Lcom/kakaogame/KGKakaoProfile;

    .line 1219
    sget-object p1, Lcom/kakaogame/player/LocalPlayerService$Settings;->localPlayerFieldKeyList:Ljava/util/Set;

    const-string v0, "regTime"

    invoke-static {p1, v0}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 1229
    invoke-direct {p0}, Lcom/kakaogame/idp/KGKakao2Auth;->registerLoginListener()V

    .line 1239
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1259
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1269
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public logout()Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, -0x4519119f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3499
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x6d0d8e58

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x336011ab

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3529
    :try_start_0
    sget-object v4, Lcom/kakaogame/kakao/KakaoCache;->INSTANCE:Lcom/kakaogame/kakao/KakaoCache;

    sget-object v5, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v5}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kakaogame/kakao/KakaoCache;->onLogout(Landroid/content/Context;)V

    .line 3539
    new-instance v4, Lcom/kakaogame/idp/KGKakao2Auth$logout$logoutResult$1;

    invoke-direct {v4, p0, v2}, Lcom/kakaogame/idp/KGKakao2Auth$logout$logoutResult$1;-><init>(Lcom/kakaogame/idp/KGKakao2Auth;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakaogame/KGResult;

    .line 3549
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3579
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3629
    sget-object v2, Lcom/kakaogame/kakao/KakaoManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoManager;

    invoke-virtual {v2, v1}, Lcom/kakaogame/kakao/KakaoManager;->setSignup(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3599
    :try_start_1
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {v4, v3, v5, v6}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3609
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xfa1

    invoke-virtual {v3, v4, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3629
    sget-object v2, Lcom/kakaogame/kakao/KakaoManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoManager;

    invoke-virtual {v2, v1}, Lcom/kakaogame/kakao/KakaoManager;->setSignup(Z)V

    .line 3639
    move-object v1, v0

    check-cast v1, Lcom/kakaogame/KGResult;

    :goto_0
    invoke-static {v0}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object v0

    .line 3629
    :goto_1
    sget-object v3, Lcom/kakaogame/kakao/KakaoManager;->INSTANCE:Lcom/kakaogame/kakao/KakaoManager;

    invoke-virtual {v3, v1}, Lcom/kakaogame/kakao/KakaoManager;->setSignup(Z)V

    .line 3639
    move-object v1, v2

    check-cast v1, Lcom/kakaogame/KGResult;

    invoke-static {v2}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    throw v0

    .array-data 1
    .end array-data
.end method

.method public unregister()Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, -0x451bf537

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3829
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x5438ed52

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x336011ab

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3859
    :try_start_0
    new-instance v2, Lcom/kakaogame/idp/KGKakao2Auth$unregister$unlinkResult$1;

    invoke-direct {v2, v1}, Lcom/kakaogame/idp/KGKakao2Auth$unregister$unlinkResult$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/KGResult;

    .line 3869
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3899
    :try_start_1
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3909
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xfa1

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3929
    move-object v0, v2

    check-cast v0, Lcom/kakaogame/KGResult;

    :goto_0
    invoke-static {v2}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    return-object v2

    :goto_1
    move-object v2, v1

    check-cast v2, Lcom/kakaogame/KGResult;

    invoke-static {v1}, Lcom/kakaogame/kakao/KakaoUtil;->convertResultCode(Lcom/kakaogame/KGResult;)Lcom/kakaogame/KGResult;

    throw v0

    nop

    .array-data 1
    .end array-data
.end method
