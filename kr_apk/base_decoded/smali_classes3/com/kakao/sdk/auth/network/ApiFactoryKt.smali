.class public final Lcom/kakao/sdk/auth/network/ApiFactoryKt;
.super Ljava/lang/Object;
.source "ApiFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u001f\u0010\u0007\u001a\u00020\u0008*\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\t\u0010\n\"\u001f\u0010\u000c\u001a\u00020\u0008*\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0006\u001a\u0004\u0008\r\u0010\n\"\u001f\u0010\u000f\u001a\u00020\u0008*\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0006\u001a\u0004\u0008\u0010\u0010\n\"\u001f\u0010\u0012\u001a\u00020\u0013*\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "accessTokenInterceptor",
        "Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;",
        "Lcom/kakao/sdk/network/ApiFactory;",
        "getAccessTokenInterceptor",
        "(Lcom/kakao/sdk/network/ApiFactory;)Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;",
        "accessTokenInterceptor$delegate",
        "Lkotlin/Lazy;",
        "kapiWithOAuth",
        "Lretrofit2/Retrofit;",
        "getKapiWithOAuth",
        "(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;",
        "kapiWithOAuth$delegate",
        "kapiWithOAuthNoLog",
        "getKapiWithOAuthNoLog",
        "kapiWithOAuthNoLog$delegate",
        "kauth",
        "getKauth",
        "kauth$delegate",
        "requiredScopesInterceptor",
        "Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;",
        "getRequiredScopesInterceptor",
        "(Lcom/kakao/sdk/network/ApiFactory;)Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;",
        "requiredScopesInterceptor$delegate",
        "auth_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final accessTokenInterceptor$delegate:Lkotlin/Lazy;

.field private static final kapiWithOAuth$delegate:Lkotlin/Lazy;

.field private static final kapiWithOAuthNoLog$delegate:Lkotlin/Lazy;

.field private static final kauth$delegate:Lkotlin/Lazy;

.field private static final requiredScopesInterceptor$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 289
    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuth$2;->INSTANCE:Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuth$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kapiWithOAuth$delegate:Lkotlin/Lazy;

    .line 449
    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$kauth$2;->INSTANCE:Lcom/kakao/sdk/auth/network/ApiFactoryKt$kauth$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kauth$delegate:Lkotlin/Lazy;

    .line 569
    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuthNoLog$2;->INSTANCE:Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuthNoLog$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kapiWithOAuthNoLog$delegate:Lkotlin/Lazy;

    .line 699
    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$accessTokenInterceptor$2;->INSTANCE:Lcom/kakao/sdk/auth/network/ApiFactoryKt$accessTokenInterceptor$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->accessTokenInterceptor$delegate:Lkotlin/Lazy;

    .line 749
    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$requiredScopesInterceptor$2;->INSTANCE:Lcom/kakao/sdk/auth/network/ApiFactoryKt$requiredScopesInterceptor$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->requiredScopesInterceptor$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getAccessTokenInterceptor(Lcom/kakao/sdk/network/ApiFactory;)Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    sget-object p0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->accessTokenInterceptor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final getKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget-object p0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kapiWithOAuth$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    sget-object p0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kapiWithOAuthNoLog$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final getKauth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    sget-object p0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->kauth$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final getRequiredScopesInterceptor(Lcom/kakao/sdk/network/ApiFactory;)Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    sget-object p0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->requiredScopesInterceptor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;

    return-object p0

    .array-data 1
    .end array-data
.end method
