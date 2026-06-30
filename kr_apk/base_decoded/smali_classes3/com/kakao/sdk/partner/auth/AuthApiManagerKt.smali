.class public final Lcom/kakao/sdk/partner/auth/AuthApiManagerKt;
.super Ljava/lang/Object;
.source "AuthApiManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u001aP\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082:\u0010\t\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00050\nH\u0000\"\u0014\u0010\u0000\u001a\u00020\u00018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0011"
    }
    d2 = {
        "authApi",
        "Lcom/kakao/sdk/partner/auth/PartnerAuthApi;",
        "getAuthApi",
        "()Lcom/kakao/sdk/partner/auth/PartnerAuthApi;",
        "issueAccessToken",
        "",
        "Lcom/kakao/sdk/auth/AuthApiManager;",
        "groupRefreshToken",
        "",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "Lkotlin/ParameterName;",
        "name",
        "token",
        "",
        "error",
        "partner-auth_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final getAuthApi()Lcom/kakao/sdk/partner/auth/PartnerAuthApi;
    .locals 2

    .line 319
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {v0}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKauth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/kakao/sdk/partner/auth/PartnerAuthApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ApiFactory.kauth.create(\u2026rtnerAuthApi::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/kakao/sdk/partner/auth/PartnerAuthApi;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final issueAccessToken(Lcom/kakao/sdk/auth/AuthApiManager;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/auth/AuthApiManager;",
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

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupRefreshToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/kakao/sdk/partner/auth/AuthApiManagerKt;->getAuthApi()Lcom/kakao/sdk/partner/auth/PartnerAuthApi;

    move-result-object v1

    .line 429
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/AuthApiManager;->getApplicationInfo()Lcom/kakao/sdk/common/model/ApplicationInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/AuthApiManager;->getContextInfo()Lcom/kakao/sdk/common/model/ContextInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ContextInfo;->getSigningKeyHash()Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/AuthApiManager;->getApprovalType()Lcom/kakao/sdk/common/model/ApprovalType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApprovalType;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v2, p1

    .line 409
    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/partner/auth/PartnerAuthApi$DefaultImpls;->issueAccessToken$default(Lcom/kakao/sdk/partner/auth/PartnerAuthApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;

    move-result-object p1

    .line 469
    new-instance v0, Lcom/kakao/sdk/partner/auth/AuthApiManagerKt$issueAccessToken$1;

    invoke-direct {v0, p2, p0}, Lcom/kakao/sdk/partner/auth/AuthApiManagerKt$issueAccessToken$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/auth/AuthApiManager;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
