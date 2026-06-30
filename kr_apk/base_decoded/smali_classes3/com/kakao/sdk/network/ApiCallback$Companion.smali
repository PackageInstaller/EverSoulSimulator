.class public final Lcom/kakao/sdk/network/ApiCallback$Companion;
.super Ljava/lang/Object;
.source "ApiCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/network/ApiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiCallback.kt\ncom/kakao/sdk/network/ApiCallback$Companion\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,67:1\n47#2:68\n47#2:70\n96#3:69\n96#3:71\n*S KotlinDebug\n*F\n+ 1 ApiCallback.kt\ncom/kakao/sdk/network/ApiCallback$Companion\n*L\n56#1:68\n57#1:70\n56#1:69\n57#1:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakao/sdk/network/ApiCallback$Companion;",
        "",
        "()V",
        "translateError",
        "",
        "t",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakao/sdk/network/ApiCallback$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final translateError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 4

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    :try_start_0
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_2

    .line 559
    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 569
    :goto_0
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 689
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 699
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/kakao/sdk/common/model/ApiErrorResponse;->Companion:Lcom/kakao/sdk/common/model/ApiErrorResponse$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/common/model/ApiErrorResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 569
    check-cast v0, Lcom/kakao/sdk/common/model/ApiErrorResponse;

    .line 579
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApiErrorResponse;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 709
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v3, Lcom/kakao/sdk/common/model/ApiErrorCause;->Companion:Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;

    invoke-virtual {v3}, Lcom/kakao/sdk/common/model/ApiErrorCause$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 579
    check-cast v1, Lcom/kakao/sdk/common/model/ApiErrorCause;

    if-nez v1, :cond_1

    sget-object v1, Lcom/kakao/sdk/common/model/ApiErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ApiErrorCause;

    .line 589
    :cond_1
    new-instance v2, Lcom/kakao/sdk/common/model/ApiError;

    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    invoke-direct {v2, p1, v1, v0}, Lcom/kakao/sdk/common/model/ApiError;-><init>(ILcom/kakao/sdk/common/model/ApiErrorCause;Lcom/kakao/sdk/common/model/ApiErrorResponse;)V

    check-cast v2, Ljava/lang/Throwable;

    return-object v2

    .line 609
    :cond_2
    invoke-static {p1}, Lcom/kakao/sdk/network/ExceptionWrapperKt;->getOrigin(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1

    .array-data 1
    .end array-data
.end method
