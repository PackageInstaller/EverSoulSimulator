.class public final Lcom/kakao/sdk/auth/AuthApiManager;
.super Ljava/lang/Object;
.source "AuthApiManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/AuthApiManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 :2\u00020\u0001:\u0001:B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJI\u0010\u0015\u001a\u00020\u00162:\u0010\u0017\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00160\u0018H\u0000\u00a2\u0006\u0002\u0008\u001eJ\r\u0010\u001f\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008!J]\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u00192\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00192:\u0010\u0017\u001a6\u0012\u0015\u0012\u0013\u0018\u00010%\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(&\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00160\u0018H\u0000\u00a2\u0006\u0002\u0008\'J]\u0010(\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u00192\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00192:\u0010\u0017\u001a6\u0012\u0015\u0012\u0013\u0018\u00010)\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(*\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00160\u0018H\u0000\u00a2\u0006\u0002\u0008+J\u0087\u0001\u0010,\u001a\u00020\u00162\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u00192\u0010\u0008\u0002\u0010.\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/2\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u00192\u0006\u00103\u001a\u0002042:\u0010\u0017\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(5\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00160\u0018H\u0000\u00a2\u0006\u0002\u00086J\u0017\u00107\u001a\u00020%2\u0008\u0008\u0002\u00108\u001a\u00020%H\u0000\u00a2\u0006\u0002\u00089JS\u00107\u001a\u00020\u00162\u0008\u0008\u0002\u00108\u001a\u00020%2:\u0010\u0017\u001a6\u0012\u0015\u0012\u0013\u0018\u00010%\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(&\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00160\u0018H\u0001\u00a2\u0006\u0002\u00089R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006;"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/AuthApiManager;",
        "",
        "authApi",
        "Lcom/kakao/sdk/auth/AuthApi;",
        "tokenManagerProvider",
        "Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "applicationInfo",
        "Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "approvalType",
        "Lcom/kakao/sdk/common/model/ApprovalType;",
        "(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V",
        "getApplicationInfo",
        "()Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "getApprovalType",
        "()Lcom/kakao/sdk/common/model/ApprovalType;",
        "getContextInfo",
        "()Lcom/kakao/sdk/common/model/ContextInfo;",
        "getTokenManagerProvider",
        "()Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "agt",
        "",
        "callback",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "error",
        "agt$auth_release",
        "hasToken",
        "",
        "hasToken$auth_release",
        "issueAccessToken",
        "code",
        "codeVerifier",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "token",
        "issueAccessToken$auth_release",
        "issueAccessTokenWithCert",
        "Lcom/kakao/sdk/auth/model/CertTokenInfo;",
        "certTokenInfo",
        "issueAccessTokenWithCert$auth_release",
        "prepare",
        "settleId",
        "identifyItems",
        "",
        "Lcom/kakao/sdk/auth/model/IdentifyItem;",
        "signData",
        "txId",
        "certType",
        "Lcom/kakao/sdk/auth/model/CertType;",
        "kauthTxId",
        "prepare$auth_release",
        "refreshToken",
        "oldToken",
        "refreshToken$auth_release",
        "Companion",
        "auth_release"
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
.field public static final Companion:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/auth/AuthApiManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

.field private final approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

.field private final authApi:Lcom/kakao/sdk/auth/AuthApi;

.field private final contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

.field private final tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/AuthApiManager;->Companion:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    .line 3019
    sget-object v0, Lcom/kakao/sdk/auth/AuthApiManager$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/auth/AuthApiManager$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/AuthApiManager;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kakao/sdk/auth/AuthApiManager;-><init>(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V
    .locals 1

    const-string v0, "authApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenManagerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "approvalType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->authApi:Lcom/kakao/sdk/auth/AuthApi;

    .line 489
    iput-object p2, p0, Lcom/kakao/sdk/auth/AuthApiManager;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    .line 499
    iput-object p3, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    .line 509
    iput-object p4, p0, Lcom/kakao/sdk/auth/AuthApiManager;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    .line 519
    iput-object p5, p0, Lcom/kakao/sdk/auth/AuthApiManager;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 479
    sget-object p1, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {p1}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKauth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object p1

    const-class p7, Lcom/kakao/sdk/auth/AuthApi;

    invoke-virtual {p1, p7}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p7, "ApiFactory.kauth.create(AuthApi::class.java)"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/kakao/sdk/auth/AuthApi;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 489
    sget-object p2, Lcom/kakao/sdk/auth/TokenManagerProvider;->Companion:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    invoke-virtual {p2}, Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManagerProvider;

    move-result-object p2

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 499
    sget-object p2, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p2}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/kakao/sdk/common/model/ApplicationInfo;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 509
    sget-object p2, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p2}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/kakao/sdk/common/model/ContextInfo;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 519
    sget-object p2, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p2}, Lcom/kakao/sdk/common/KakaoSdk;->getApprovalType()Lcom/kakao/sdk/common/model/ApprovalType;

    move-result-object p5

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    .line 469
    invoke-direct/range {p2 .. p7}, Lcom/kakao/sdk/auth/AuthApiManager;-><init>(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 469
    sget-object v0, Lcom/kakao/sdk/auth/AuthApiManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakao/sdk/auth/AuthApiManager;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/AuthApiManager;->Companion:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiManager;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic issueAccessToken$auth_release$default(Lcom/kakao/sdk/auth/AuthApiManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 649
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/auth/AuthApiManager;->issueAccessToken$auth_release(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic issueAccessTokenWithCert$auth_release$default(Lcom/kakao/sdk/auth/AuthApiManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1039
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/auth/AuthApiManager;->issueAccessTokenWithCert$auth_release(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic prepare$auth_release$default(Lcom/kakao/sdk/auth/AuthApiManager;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/auth/model/CertType;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, p3

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    move-object v2, p0

    move-object v7, p5

    move-object v8, p6

    .line 2459
    invoke-virtual/range {v2 .. v8}, Lcom/kakao/sdk/auth/AuthApiManager;->prepare$auth_release(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/auth/model/CertType;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic refreshToken$auth_release$default(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/model/OAuthToken;ILjava/lang/Object;)Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 2259
    iget-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/TokenManagerProvider;->getManager()Lcom/kakao/sdk/auth/TokenManageable;

    move-result-object p1

    invoke-interface {p1}, Lcom/kakao/sdk/auth/TokenManageable;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    .line 2269
    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string p2, "Refresh token not found. You must login first."

    .line 2259
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    .line 2249
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/AuthApiManager;->refreshToken$auth_release(Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic refreshToken$auth_release$default(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/model/OAuthToken;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_1

    .line 1549
    iget-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/TokenManagerProvider;->getManager()Lcom/kakao/sdk/auth/TokenManageable;

    move-result-object p1

    invoke-interface {p1}, Lcom/kakao/sdk/auth/TokenManageable;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    .line 1559
    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string p2, "Refresh token not found. You must login first."

    .line 1549
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p0

    .line 1539
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/auth/AuthApiManager;->refreshToken$auth_release(Lcom/kakao/sdk/auth/model/OAuthToken;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final agt$auth_release(Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1959
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/TokenManagerProvider;->getManager()Lcom/kakao/sdk/auth/TokenManageable;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/auth/TokenManageable;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1969
    iget-object v2, p0, Lcom/kakao/sdk/auth/AuthApiManager;->authApi:Lcom/kakao/sdk/auth/AuthApi;

    .line 1979
    iget-object v3, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v3}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 1969
    invoke-interface {v2, v3, v0}, Lcom/kakao/sdk/auth/AuthApi;->agt(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1999
    new-instance v2, Lcom/kakao/sdk/auth/AuthApiManager$agt$1$1;

    invoke-direct {v2, p1}, Lcom/kakao/sdk/auth/AuthApiManager$agt$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1959
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 2149
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    .line 2159
    sget-object v2, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v3, "Access token not found. You must login first."

    .line 2149
    invoke-direct {v0, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    .line 2129
    invoke-interface {p1, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final getApplicationInfo()Lcom/kakao/sdk/common/model/ApplicationInfo;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getApprovalType()Lcom/kakao/sdk/common/model/ApprovalType;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getContextInfo()Lcom/kakao/sdk/common/model/ContextInfo;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTokenManagerProvider()Lcom/kakao/sdk/auth/TokenManagerProvider;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final hasToken$auth_release()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/TokenManagerProvider;->getManager()Lcom/kakao/sdk/auth/TokenManageable;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/auth/TokenManageable;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final issueAccessToken$auth_release(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->authApi:Lcom/kakao/sdk/auth/AuthApi;

    .line 709
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 719
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ContextInfo;->getSigningKeyHash()Ljava/lang/String;

    move-result-object v3

    .line 739
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v5

    .line 759
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApprovalType;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v4, p1

    move-object v6, p2

    .line 699
    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/auth/AuthApi$DefaultImpls;->issueAccessToken$default(Lcom/kakao/sdk/auth/AuthApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object p1

    .line 769
    new-instance p2, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;

    invoke-direct {p2, p3, p0}, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/auth/AuthApiManager;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final issueAccessTokenWithCert$auth_release(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/CertTokenInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object v1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->authApi:Lcom/kakao/sdk/auth/AuthApi;

    .line 1099
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 1109
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ContextInfo;->getSigningKeyHash()Ljava/lang/String;

    move-result-object v3

    .line 1129
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v5

    .line 1149
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApprovalType;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v4, p1

    move-object v6, p2

    .line 1089
    invoke-static/range {v1 .. v10}, Lcom/kakao/sdk/auth/AuthApi$DefaultImpls;->issueAccessToken$default(Lcom/kakao/sdk/auth/AuthApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object p1

    .line 1159
    new-instance p2, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessTokenWithCert$1;

    invoke-direct {p2, p3, p0}, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessTokenWithCert$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/auth/AuthApiManager;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final prepare$auth_release(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/auth/model/CertType;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/IdentifyItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/auth/model/CertType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p6

    const-string v2, "certType"

    move-object/from16 v3, p5

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2539
    iget-object v2, v0, Lcom/kakao/sdk/auth/AuthApiManager;->authApi:Lcom/kakao/sdk/auth/AuthApi;

    .line 2549
    iget-object v4, v0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v4}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    .line 2569
    move-object/from16 v5, p2

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    .line 2579
    :cond_2
    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Iterable;

    const-string v5, ","

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v5, Lcom/kakao/sdk/auth/AuthApiManager$prepare$1;->INSTANCE:Lcom/kakao/sdk/auth/AuthApiManager$prepare$1;

    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/16 v13, 0x1e

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v6, v5

    .line 2609
    invoke-virtual/range {p5 .. p5}, Lcom/kakao/sdk/auth/model/CertType;->getValue()Ljava/lang/String;

    move-result-object v9

    move-object v3, v2

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 2539
    invoke-interface/range {v3 .. v9}, Lcom/kakao/sdk/auth/AuthApi;->prepare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 2619
    new-instance v3, Lcom/kakao/sdk/auth/AuthApiManager$prepare$2;

    invoke-direct {v3, v1}, Lcom/kakao/sdk/auth/AuthApiManager$prepare$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lretrofit2/Callback;

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final refreshToken$auth_release(Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 9

    const-string v0, "oldToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2309
    iget-object v1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->authApi:Lcom/kakao/sdk/auth/AuthApi;

    .line 2319
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 2329
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ContextInfo;->getSigningKeyHash()Ljava/lang/String;

    move-result-object v3

    .line 2339
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 2349
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApprovalType;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 2309
    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/auth/AuthApi$DefaultImpls;->refreshToken$default(Lcom/kakao/sdk/auth/AuthApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v0

    .line 2359
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 2379
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/auth/model/AccessTokenResponse;

    if-eqz v1, :cond_0

    .line 2389
    sget-object v2, Lcom/kakao/sdk/auth/model/OAuthToken;->Companion:Lcom/kakao/sdk/auth/model/OAuthToken$Companion;

    invoke-virtual {v2, v1, p1}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;->fromResponse(Lcom/kakao/sdk/auth/model/AccessTokenResponse;Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/TokenManagerProvider;->getManager()Lcom/kakao/sdk/auth/TokenManageable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kakao/sdk/auth/TokenManageable;->setToken(Lcom/kakao/sdk/auth/model/OAuthToken;)V

    return-object p1

    .line 2399
    :cond_0
    sget-object p1, Lcom/kakao/sdk/auth/AuthApiManager;->Companion:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    new-instance v1, Lretrofit2/HttpException;

    invoke-direct {v1, v0}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p1, v1}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;->translateError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final refreshToken$auth_release(Lcom/kakao/sdk/auth/model/OAuthToken;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1599
    iget-object v1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->authApi:Lcom/kakao/sdk/auth/AuthApi;

    .line 1609
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 1619
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ContextInfo;->getSigningKeyHash()Ljava/lang/String;

    move-result-object v3

    .line 1629
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 1639
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApprovalType;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 1599
    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/auth/AuthApi$DefaultImpls;->refreshToken$default(Lcom/kakao/sdk/auth/AuthApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v0

    .line 1649
    new-instance v1, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;

    invoke-direct {v1, p2, p1, p0}, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/auth/model/OAuthToken;Lcom/kakao/sdk/auth/AuthApiManager;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final refreshToken$auth_release(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/kakao/sdk/auth/AuthApiManager;->refreshToken$auth_release$default(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/model/OAuthToken;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
