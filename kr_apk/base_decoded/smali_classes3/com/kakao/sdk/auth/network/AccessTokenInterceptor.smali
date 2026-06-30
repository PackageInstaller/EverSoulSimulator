.class public final Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;
.super Ljava/lang/Object;
.source "AccessTokenInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccessTokenInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccessTokenInterceptor.kt\ncom/kakao/sdk/auth/network/AccessTokenInterceptor\n+ 2 Utility.kt\ncom/kakao/sdk/network/UtilityKt\n+ 3 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 4 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,92:1\n52#2:93\n34#2,22:94\n57#2,9:118\n47#3:116\n96#4:117\n*S KotlinDebug\n*F\n+ 1 AccessTokenInterceptor.kt\ncom/kakao/sdk/auth/network/AccessTokenInterceptor\n*L\n47#1:93\n47#1:94,22\n47#1:118,9\n47#1:116\n47#1:117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;",
        "Lokhttp3/Interceptor;",
        "tokenManagerProvider",
        "Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "manager",
        "Lcom/kakao/sdk/auth/AuthApiManager;",
        "(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;)V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
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


# instance fields
.field private final manager:Lcom/kakao/sdk/auth/AuthApiManager;

.field private final tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;-><init>(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;)V
    .locals 1

    const-string/jumbo v0, "tokenManagerProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    .line 389
    iput-object p2, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->manager:Lcom/kakao/sdk/auth/AuthApiManager;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 379
    sget-object p1, Lcom/kakao/sdk/auth/TokenManagerProvider;->Companion:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManagerProvider;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 389
    sget-object p2, Lcom/kakao/sdk/auth/AuthApiManager;->Companion:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    invoke-virtual {p2}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiManager;

    move-result-object p2

    .line 369
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;-><init>(Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/auth/AuthApiManager;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/TokenManagerProvider;->getManager()Lcom/kakao/sdk/auth/TokenManageable;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/sdk/auth/TokenManageable;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_b

    .line 449
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptorKt;->withAccessToken(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 949
    invoke-interface {p1, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v4

    .line 959
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 969
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    .line 1009
    :goto_1
    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    if-eqz v6, :cond_2

    sget-object v7, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lokhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    invoke-virtual {v4, v7}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    if-eqz v6, :cond_3

    .line 1029
    sget-object v7, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Lokhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    .line 1139
    :cond_3
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v6, :cond_4

    .line 1159
    sget-object v5, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1169
    invoke-virtual {v5}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v5

    .line 1179
    invoke-virtual {v5}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v7, Lcom/kakao/sdk/common/model/ApiErrorResponse;->Companion:Lcom/kakao/sdk/common/model/ApiErrorResponse$Companion;

    invoke-virtual {v7}, Lcom/kakao/sdk/common/model/ApiErrorResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v5, v7, v6}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1169
    check-cast v5, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_5

    .line 1199
    sget-object v6, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {v5}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1169
    invoke-virtual {v6}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v6

    .line 1179
    invoke-virtual {v6}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v8, Lcom/kakao/sdk/common/model/ApiErrorCause;->Companion:Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;

    invoke-virtual {v8}, Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v6, v8, v7}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1169
    check-cast v6, Lcom/kakao/sdk/common/model/ApiErrorCause;

    goto :goto_4

    :cond_5
    move-object v6, v1

    :goto_4
    if-eqz v6, :cond_a

    .line 1239
    new-instance v7, Lcom/kakao/sdk/common/model/ApiError;

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v8

    invoke-direct {v7, v8, v6, v5}, Lcom/kakao/sdk/common/model/ApiError;-><init>(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V

    .line 509
    invoke-virtual {v7}, Lcom/kakao/sdk/common/model/ApiError;->getReason()Lcom/kakao/sdk/common/model/ApiErrorCause;

    move-result-object v5

    sget-object v6, Lcom/kakao/sdk/common/model/ApiErrorCause;->InvalidToken:Lcom/kakao/sdk/common/model/ApiErrorCause;

    if-eq v5, v6, :cond_6

    return-object v4

    .line 559
    :cond_6
    monitor-enter p0

    .line 579
    :try_start_0
    iget-object v5, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->tokenManagerProvider:Lcom/kakao/sdk/auth/TokenManagerProvider;

    invoke-virtual {v5}, Lcom/kakao/sdk/auth/TokenManagerProvider;->getManager()Lcom/kakao/sdk/auth/TokenManageable;

    move-result-object v5

    invoke-interface {v5}, Lcom/kakao/sdk/auth/TokenManageable;->getToken()Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_6

    .line 599
    :cond_7
    invoke-virtual {v5}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 629
    invoke-virtual {v5}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_5

    .line 669
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/kakao/sdk/auth/network/AccessTokenInterceptor;->manager:Lcom/kakao/sdk/auth/AuthApiManager;

    invoke-virtual {v0, v5}, Lcom/kakao/sdk/auth/AuthApiManager;->refreshToken$auth_release(Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :goto_5
    :try_start_2
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v5

    .line 739
    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "/v1/user/check_access_token"

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 799
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 559
    monitor-exit p0

    return-object v4

    .line 799
    :cond_9
    :try_start_3
    invoke-static {v3, v0}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptorKt;->withAccessToken(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 689
    :try_start_4
    new-instance v0, Lcom/kakao/sdk/network/ExceptionWrapper;

    invoke-direct {v0, p1}, Lcom/kakao/sdk/network/ExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 559
    monitor-exit p0

    throw p1

    :cond_a
    return-object v4

    .line 459
    :cond_b
    new-instance p1, Lcom/kakao/sdk/network/ExceptionWrapper;

    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v3, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Lcom/kakao/sdk/network/ExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .array-data 1
    .end array-data
.end method
