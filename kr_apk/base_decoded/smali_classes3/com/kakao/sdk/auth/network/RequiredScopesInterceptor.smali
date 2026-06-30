.class public final Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;
.super Ljava/lang/Object;
.source "RequiredScopesInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequiredScopesInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequiredScopesInterceptor.kt\ncom/kakao/sdk/auth/network/RequiredScopesInterceptor\n+ 2 Utility.kt\ncom/kakao/sdk/network/UtilityKt\n+ 3 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 4 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,100:1\n52#2:101\n34#2,22:102\n57#2,9:126\n47#3:124\n96#4:125\n*S KotlinDebug\n*F\n+ 1 RequiredScopesInterceptor.kt\ncom/kakao/sdk/auth/network/RequiredScopesInterceptor\n*L\n42#1:101\n42#1:102,22\n42#1:126,9\n42#1:124\n42#1:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;",
        "Lokhttp3/Interceptor;",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ApplicationContextInfo;",
        "(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V",
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
.field private final contextInfo:Lcom/kakao/sdk/common/model/ApplicationContextInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;-><init>(Lcom/kakao/sdk/common/model/ApplicationContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V
    .locals 1

    const-string v0, "contextInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;->contextInfo:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/model/ApplicationContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 389
    sget-object p1, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p1}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p1

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;-><init>(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getContextInfo$p(Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;)Lcom/kakao/sdk/common/model/ApplicationContextInfo;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;->contextInfo:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 1029
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1049
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 1089
    :goto_0
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    if-eqz v3, :cond_1

    sget-object v4, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lokhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    if-eqz v3, :cond_2

    .line 1109
    sget-object v4, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lokhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    .line 1219
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v3, :cond_3

    .line 1239
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1249
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 1259
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lcom/kakao/sdk/common/model/ApiErrorResponse;->Companion:Lcom/kakao/sdk/common/model/ApiErrorResponse$Companion;

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApiErrorResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v1, v4, v3}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1249
    check-cast v1, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 1279
    sget-object v2, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1249
    invoke-virtual {v2}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    .line 1259
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lcom/kakao/sdk/common/model/ApiErrorCause;->Companion:Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v2, v4, v3}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1249
    check-cast v2, Lcom/kakao/sdk/common/model/ApiErrorCause;

    :cond_4
    if-eqz v2, :cond_a

    .line 1319
    new-instance v3, Lcom/kakao/sdk/common/model/ApiError;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-direct {v3, v4, v2, v1}, Lcom/kakao/sdk/common/model/ApiError;-><init>(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V

    .line 439
    invoke-virtual {v3}, Lcom/kakao/sdk/common/model/ApiError;->getResponse()Lcom/kakao/sdk/common/model/ApiErrorResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->getRequiredScopes()Ljava/util/List;

    move-result-object v8

    .line 459
    invoke-virtual {v3}, Lcom/kakao/sdk/common/model/ApiError;->getReason()Lcom/kakao/sdk/common/model/ApiErrorCause;

    move-result-object v1

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->InsufficientScope:Lcom/kakao/sdk/common/model/ApiErrorCause;

    if-eq v1, v2, :cond_5

    return-object v0

    .line 509
    :cond_5
    move-object v1, v8

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v2

    :goto_4
    if-nez v1, :cond_9

    .line 639
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 649
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 669
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 679
    sget-object v2, Lcom/kakao/sdk/auth/AuthApiClient;->Companion:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/auth/AuthApiClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiClient;

    move-result-object v2

    new-instance v11, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;

    move-object v4, v11

    move-object v5, v3

    move-object v6, v10

    move-object v7, p0

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v11}, Lcom/kakao/sdk/auth/AuthApiClient;->agt(Lkotlin/jvm/functions/Function2;)V

    .line 929
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 949
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/kakao/sdk/auth/model/OAuthToken;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/model/OAuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 959
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kakao/sdk/auth/network/AccessTokenInterceptorKt;->withAccessToken(Lokhttp3/Request;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_8

    return-object p1

    .line 969
    :cond_8
    new-instance p1, Lcom/kakao/sdk/network/ExceptionWrapper;

    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Lcom/kakao/sdk/network/ExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 519
    :cond_9
    new-instance p1, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    .line 529
    sget-object v0, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorCause;->getErrorCode()I

    move-result v5

    const-string v6, "requiredScopes not exist"

    const/4 v7, 0x0

    .line 549
    invoke-virtual {v3}, Lcom/kakao/sdk/common/model/ApiError;->getResponse()Lcom/kakao/sdk/common/model/ApiErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->getRequiredScopes()Ljava/util/List;

    move-result-object v8

    .line 559
    invoke-virtual {v3}, Lcom/kakao/sdk/common/model/ApiError;->getResponse()Lcom/kakao/sdk/common/model/ApiErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->getAllowedScopes()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v4, p1

    .line 519
    invoke-direct/range {v4 .. v11}, Lcom/kakao/sdk/common/model/ApiErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 579
    new-instance v0, Lcom/kakao/sdk/common/model/ApiError;

    invoke-virtual {v3}, Lcom/kakao/sdk/common/model/ApiError;->getStatusCode()I

    move-result v1

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    invoke-direct {v0, v1, v2, p1}, Lcom/kakao/sdk/common/model/ApiError;-><init>(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V

    .line 599
    new-instance p1, Lcom/kakao/sdk/network/ExceptionWrapper;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Lcom/kakao/sdk/network/ExceptionWrapper;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_a
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
