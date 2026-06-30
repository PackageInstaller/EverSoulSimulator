.class public final Lcom/kakao/sdk/user/UserApiClient;
.super Ljava/lang/Object;
.source "UserApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/UserApiClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserApiClient.kt\ncom/kakao/sdk/user/UserApiClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 4 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 5 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n1#1,467:1\n1#2:468\n46#3:469\n56#3:471\n53#3:476\n56#3:480\n53#3:485\n46#3:489\n46#3:491\n113#4:470\n113#4:490\n113#4:492\n28#5,3:472\n31#5:479\n28#5,3:481\n31#5:488\n1855#6:475\n1856#6:478\n1855#6:484\n1856#6:487\n211#7:477\n211#7:486\n*S KotlinDebug\n*F\n+ 1 UserApiClient.kt\ncom/kakao/sdk/user/UserApiClient\n*L\n189#1:469\n212#1:471\n212#1:476\n238#1:480\n238#1:485\n332#1:489\n349#1:491\n189#1:470\n332#1:490\n349#1:492\n212#1:472,3\n212#1:479\n238#1:481,3\n238#1:488\n212#1:475\n212#1:478\n238#1:484\n238#1:487\n212#1:477\n238#1:486\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0004\u0018\u0000 J2\u00020\u0001:\u0001JB#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007JB\u0010\u0008\u001a\u00020\t2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bJc\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0018\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000b2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010\u0019JI\u0010\u001a\u001a\u00020\t2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bH\u0000\u00a2\u0006\u0002\u0008\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u0014J\u009a\u0001\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0010\u0008\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00162\u0010\u0008\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010&\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\'\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bH\u0007J\u0086\u0001\u0010(\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010)\u001a\u00020*2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00162\u0010\u0008\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010&\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\'\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bH\u0007Jd\u0010+\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00160 2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00162:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010&\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\'\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bJ+\u0010-\u001a\u00020\t2#\u0010\n\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0.J`\u0010/\u001a\u00020\t2\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\u0008\u0008\u0002\u00101\u001a\u00020\u001d2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u000102\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(3\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bH\u0007JP\u00104\u001a\u00020\t2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00160 2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u000105\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(6\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bJP\u00107\u001a\u00020\t2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00160 2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u000109\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(:\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bJT\u0010,\u001a\u00020\t2\u0010\u0008\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u000105\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(6\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bJJ\u0010;\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0018\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bJ`\u0010%\u001a\u00020\t2\u0010\u0008\u0002\u00108\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010 2\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u00162:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010=\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(>\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bJa\u0010?\u001a\u00020\t2\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010A2\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010*2:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010C\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(D\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bH\u0007\u00a2\u0006\u0002\u0010EJJ\u0010?\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00172:\u0010\n\u001a6\u0012\u0015\u0012\u0013\u0018\u00010C\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(D\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0\u000bJC\u0010F\u001a\u00020\t2\u0016\u0008\u0002\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0016\u0018\u00010G2#\u0010\n\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0.J+\u0010H\u001a\u00020\t2#\u0010\n\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0.J?\u0010I\u001a\u00020\t2\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160G2#\u0010\n\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\t0.R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006K"
    }
    d2 = {
        "Lcom/kakao/sdk/user/UserApiClient;",
        "",
        "userApi",
        "Lcom/kakao/sdk/user/UserApi;",
        "userApiNoLog",
        "tokenManagerProvider",
        "Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;)V",
        "accessTokenInfo",
        "",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
        "Lkotlin/ParameterName;",
        "name",
        "tokenInfo",
        "",
        "error",
        "appsShippingAddress",
        "context",
        "Landroid/content/Context;",
        "path",
        "",
        "",
        "addressId",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;)V",
        "checkAccessToken",
        "checkAccessToken$user_release",
        "isKakaoTalkLoginAvailable",
        "",
        "loginWithKakaoAccount",
        "prompts",
        "",
        "Lcom/kakao/sdk/auth/model/Prompt;",
        "loginHint",
        "nonce",
        "channelPublicIds",
        "serviceTerms",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "token",
        "loginWithKakaoTalk",
        "requestCode",
        "",
        "loginWithNewScopes",
        "scopes",
        "logout",
        "Lkotlin/Function1;",
        "me",
        "properties",
        "secureResource",
        "Lcom/kakao/sdk/user/model/User;",
        "user",
        "revokeScopes",
        "Lcom/kakao/sdk/user/model/ScopeInfo;",
        "scopeInfo",
        "revokeServiceTerms",
        "tags",
        "Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;",
        "userRevokedServiceTerms",
        "selectShippingAddress",
        "result",
        "Lcom/kakao/sdk/user/model/UserServiceTerms;",
        "userServiceTerms",
        "shippingAddresses",
        "fromUpdatedAt",
        "Ljava/util/Date;",
        "pageSize",
        "Lcom/kakao/sdk/user/model/UserShippingAddresses;",
        "userShippingAddresses",
        "(Ljava/util/Date;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V",
        "signup",
        "",
        "unlink",
        "updateProfile",
        "Companion",
        "user_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/user/UserApiClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

.field private final userApi:Lcom/kakao/sdk/user/UserApi;

.field private final userApiNoLog:Lcom/kakao/sdk/user/UserApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/user/UserApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/UserApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    .line 4649
    sget-object v0, Lcom/kakao/sdk/user/UserApiClient$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/user/UserApiClient$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/UserApiClient;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kakao/sdk/user/UserApiClient;-><init>(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;)V
    .locals 1

    const-string/jumbo v0, "userApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userApiNoLog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenManagerProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    .line 509
    iput-object p2, p0, Lcom/kakao/sdk/user/UserApiClient;->userApiNoLog:Lcom/kakao/sdk/user/UserApi;

    .line 519
    iput-object p3, p0, Lcom/kakao/sdk/user/UserApiClient;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const-string v0, "ApiFactory.kapiWithOAuth\u2026eate(UserApi::class.java)"

    if-eqz p5, :cond_0

    .line 499
    sget-object p1, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p1}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object p1

    const-class p5, Lcom/kakao/sdk/user/UserApi;

    invoke-virtual {p1, p5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/kakao/sdk/user/UserApi;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 509
    sget-object p2, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p2}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object p2

    const-class p5, Lcom/kakao/sdk/user/UserApi;

    invoke-virtual {p2, p5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/kakao/sdk/user/UserApi;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 519
    sget-object p3, Lcom/kakao/sdk/auth/TokenManagerProvider;->Companion:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    invoke-virtual {p3}, Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManagerProvider;

    move-result-object p3

    .line 489
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/kakao/sdk/user/UserApiClient;-><init>(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 489
    sget-object v0, Lcom/kakao/sdk/user/UserApiClient;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTokenManagerProvider$p(Lcom/kakao/sdk/user/UserApiClient;)Lcom/kakao/sdk/auth/TokenManagerProvider;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/kakao/sdk/user/UserApiClient;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic appsShippingAddress$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 3959
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/user/UserApiClient;->appsShippingAddress(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakao/sdk/user/UserApiClient;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/user/UserApiClient;->Companion:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/user/UserApiClient$Companion;->getInstance()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, p5

    :goto_3
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_4

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v9, p7

    .line 1089
    invoke-virtual/range {v2 .. v9}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic loginWithKakaoTalk$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/16 p2, 0x271c

    :cond_0
    move v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    move-object v3, p8

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move-object v4, p8

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    move-object v5, p8

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    .line 699
    invoke-virtual/range {v0 .. v6}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoTalk(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic loginWithNewScopes$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 1449
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/user/UserApiClient;->loginWithNewScopes(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic me$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 1849
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/user/UserApiClient;->me(Ljava/util/List;ZLkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic scopes$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 3289
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/user/UserApiClient;->scopes(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic serviceTerms$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 3629
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/user/UserApiClient;->serviceTerms(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic shippingAddresses$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/Date;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 2909
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/user/UserApiClient;->shippingAddresses(Ljava/util/Date;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic signup$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 2089
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/user/UserApiClient;->signup(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final accessTokenInfo(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2249
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    invoke-interface {v0}, Lcom/kakao/sdk/user/UserApi;->accessTokenInfo()Lretrofit2/Call;

    move-result-object v0

    .line 2259
    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$accessTokenInfo$1;

    invoke-direct {v1, p1}, Lcom/kakao/sdk/user/UserApiClient$accessTokenInfo$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final appsShippingAddress(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4019
    sget-object v0, Lcom/kakao/sdk/auth/AuthApiClient;->Companion:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthApiClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthApiClient;->hasToken()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4039
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    .line 4049
    sget-object p2, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string p4, "Token not found. You must login first."

    .line 4039
    invoke-direct {p1, p2, p4}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    .line 4029
    invoke-interface {p3, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4119
    :cond_0
    sget-object v0, Lcom/kakao/sdk/auth/AuthApiClient;->Companion:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthApiClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiClient;

    move-result-object v0

    new-instance v2, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1;

    invoke-direct {v2, p3, p2, p4, p1}, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v0, v1, v2, p1, v1}, Lcom/kakao/sdk/auth/AuthApiClient;->refreshToken$default(Lcom/kakao/sdk/auth/AuthApiClient;Lcom/kakao/sdk/auth/model/OAuthToken;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final checkAccessToken$user_release(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4519
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApiNoLog:Lcom/kakao/sdk/user/UserApi;

    invoke-interface {v0}, Lcom/kakao/sdk/user/UserApi;->checkAccessToken()Lretrofit2/Call;

    move-result-object v0

    .line 4529
    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$checkAccessToken$1;

    invoke-direct {v1, p1}, Lcom/kakao/sdk/user/UserApiClient$checkAccessToken$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final isKakaoTalkLoginAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    sget-object v0, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthCodeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/auth/AuthCodeClient;->isKakaoTalkLoginAvailable(Landroid/content/Context;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p7

    const-string v1, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->codeVerifier()Ljava/lang/String;

    move-result-object v11

    .line 1189
    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthCodeClient;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoAccount$1;

    invoke-direct {v1, v0, v11}, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoAccount$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/16 v14, 0x214

    const/4 v15, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p3

    invoke-static/range {v2 .. v15}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoAccount(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoAccount$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoTalk(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p6

    const-string v1, "context"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->codeVerifier()Ljava/lang/String;

    move-result-object v9

    .line 789
    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthCodeClient;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v10, 0x0

    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;

    invoke-direct {v1, v0, v9}, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/16 v12, 0x80

    const/4 v13, 0x0

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v13}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoTalk(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoTalk$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoTalk(Landroid/content/Context;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoTalk$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoTalk(Landroid/content/Context;ILkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoTalk$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loginWithKakaoTalk(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/user/UserApiClient;->loginWithKakaoTalk$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final loginWithNewScopes(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1509
    sget-object v0, Lcom/kakao/sdk/auth/AuthApiClient;->Companion:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthApiClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiClient;

    move-result-object v0

    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1;

    invoke-direct {v1, p4, p1, p2, p3}, Lcom/kakao/sdk/user/UserApiClient$loginWithNewScopes$1;-><init>(Lkotlin/jvm/functions/Function2;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/auth/AuthApiClient;->agt(Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final logout(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    invoke-interface {v0}, Lcom/kakao/sdk/user/UserApi;->logout()Lretrofit2/Call;

    move-result-object v0

    .line 2519
    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$logout$1;

    invoke-direct {v1, p0, p1}, Lcom/kakao/sdk/user/UserApiClient$logout$1;-><init>(Lcom/kakao/sdk/user/UserApiClient;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final me(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/User;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/user/UserApiClient;->me$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final me(Ljava/util/List;ZLkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/User;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1899
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4699
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 4709
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1919
    :goto_0
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    invoke-interface {v0, p2, p1}, Lcom/kakao/sdk/user/UserApi;->me(ZLjava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 1929
    new-instance p2, Lcom/kakao/sdk/user/UserApiClient$me$1;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/user/UserApiClient$me$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final me(Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/User;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/user/UserApiClient;->me$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/List;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final revokeScopes(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/ScopeInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scopes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3499
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4919
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 4929
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3499
    invoke-interface {v0, p1}, Lcom/kakao/sdk/user/UserApi;->revokeScopes(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kakao/sdk/user/UserApiClient$revokeScopes$1;

    invoke-direct {v0, p2}, Lcom/kakao/sdk/user/UserApiClient$revokeScopes$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final revokeServiceTerms(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3849
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string p1, ","

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/kakao/sdk/user/UserApi;->revokeServiceTerms(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 3859
    new-instance v0, Lcom/kakao/sdk/user/UserApiClient$revokeServiceTerms$1;

    invoke-direct {v0, p2}, Lcom/kakao/sdk/user/UserApiClient$revokeServiceTerms$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final scopes(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/ScopeInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3329
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4899
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 4909
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3329
    :goto_0
    invoke-interface {v0, p1}, Lcom/kakao/sdk/user/UserApi;->scopes(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 3339
    new-instance v0, Lcom/kakao/sdk/user/UserApiClient$scopes$1;

    invoke-direct {v0, p2}, Lcom/kakao/sdk/user/UserApiClient$scopes$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final selectShippingAddress(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "/user/address"

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 2819
    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/user/UserApiClient;->appsShippingAddress$default(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final serviceTerms(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/UserServiceTerms;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3679
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const-string p1, ","

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/kakao/sdk/user/UserApi;->serviceTerms(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 3689
    new-instance p2, Lcom/kakao/sdk/user/UserApiClient$serviceTerms$1;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/user/UserApiClient$serviceTerms$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final shippingAddresses(JLkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/UserShippingAddresses;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3159
    iget-object v1, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/user/UserApi$DefaultImpls;->shippingAddresses$default(Lcom/kakao/sdk/user/UserApi;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object p1

    .line 3169
    new-instance p2, Lcom/kakao/sdk/user/UserApiClient$shippingAddresses$3;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/user/UserApiClient$shippingAddresses$3;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final shippingAddresses(Ljava/util/Date;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/UserShippingAddresses;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2959
    iget-object v1, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2969
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/16 p1, 0x3e8

    int-to-long v5, p1

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v4, p2

    .line 2959
    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/user/UserApi$DefaultImpls;->shippingAddresses$default(Lcom/kakao/sdk/user/UserApi;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object p1

    .line 2999
    new-instance p2, Lcom/kakao/sdk/user/UserApiClient$shippingAddresses$2;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/user/UserApiClient$shippingAddresses$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final shippingAddresses(Ljava/util/Date;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/UserShippingAddresses;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/user/UserApiClient;->shippingAddresses$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/Date;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final shippingAddresses(Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/UserShippingAddresses;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/user/UserApiClient;->shippingAddresses$default(Lcom/kakao/sdk/user/UserApiClient;Ljava/util/Date;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final signup(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2129
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4739
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 4719
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 4759
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4719
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4769
    invoke-virtual {v3}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    .line 4779
    invoke-virtual {v3}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v3, v4, v1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 4719
    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 4799
    :cond_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2139
    :goto_1
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    invoke-interface {v0, p1}, Lcom/kakao/sdk/user/UserApi;->signup(Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/kakao/sdk/user/UserApiClient$signup$1;

    invoke-direct {v0, p2}, Lcom/kakao/sdk/user/UserApiClient$signup$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final unlink(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2639
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    invoke-interface {v0}, Lcom/kakao/sdk/user/UserApi;->unlink()Lretrofit2/Call;

    move-result-object v0

    .line 2649
    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$unlink$1;

    invoke-direct {v1, p0, p1}, Lcom/kakao/sdk/user/UserApiClient$unlink$1;-><init>(Lcom/kakao/sdk/user/UserApiClient;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final updateProfile(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2389
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient;->userApi:Lcom/kakao/sdk/user/UserApi;

    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4829
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 4809
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 4849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4809
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 4859
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 4869
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, v2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    .line 4809
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 4889
    :cond_0
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 2389
    invoke-interface {v0, p1}, Lcom/kakao/sdk/user/UserApi;->updateProfile(Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p1

    .line 2399
    new-instance v0, Lcom/kakao/sdk/user/UserApiClient$updateProfile$1;

    invoke-direct {v0, p2}, Lcom/kakao/sdk/user/UserApiClient$updateProfile$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
