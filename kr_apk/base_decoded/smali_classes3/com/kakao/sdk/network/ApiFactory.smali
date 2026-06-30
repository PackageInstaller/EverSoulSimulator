.class public final Lcom/kakao/sdk/network/ApiFactory;
.super Ljava/lang/Object;
.source "ApiFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010!R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0008\u001a\u0004\u0008\u0014\u0010\u0011R\u001b\u0010\u0016\u001a\u00020\u00178FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0008\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\""
    }
    d2 = {
        "Lcom/kakao/sdk/network/ApiFactory;",
        "",
        "()V",
        "appKeyInterceptor",
        "Lcom/kakao/sdk/network/AppKeyInterceptor;",
        "getAppKeyInterceptor",
        "()Lcom/kakao/sdk/network/AppKeyInterceptor;",
        "appKeyInterceptor$delegate",
        "Lkotlin/Lazy;",
        "kakaoAgentInterceptor",
        "Lcom/kakao/sdk/network/KakaoAgentInterceptor;",
        "getKakaoAgentInterceptor",
        "()Lcom/kakao/sdk/network/KakaoAgentInterceptor;",
        "kakaoAgentInterceptor$delegate",
        "kapi",
        "Lretrofit2/Retrofit;",
        "getKapi",
        "()Lretrofit2/Retrofit;",
        "kapi$delegate",
        "kapiNoLog",
        "getKapiNoLog",
        "kapiNoLog$delegate",
        "loggingInterceptor",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "getLoggingInterceptor",
        "()Lokhttp3/logging/HttpLoggingInterceptor;",
        "loggingInterceptor$delegate",
        "withClientAndAdapter",
        "url",
        "",
        "clientBuilder",
        "Lokhttp3/OkHttpClient$Builder;",
        "factory",
        "Lretrofit2/CallAdapter$Factory;",
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


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

.field private static final appKeyInterceptor$delegate:Lkotlin/Lazy;

.field private static final kakaoAgentInterceptor$delegate:Lkotlin/Lazy;

.field private static final kapi$delegate:Lkotlin/Lazy;

.field private static final kapiNoLog$delegate:Lkotlin/Lazy;

.field private static final loggingInterceptor$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/network/ApiFactory;

    invoke-direct {v0}, Lcom/kakao/sdk/network/ApiFactory;-><init>()V

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    .line 359
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->kakaoAgentInterceptor$delegate:Lkotlin/Lazy;

    .line 369
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$appKeyInterceptor$2;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory$appKeyInterceptor$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->appKeyInterceptor$delegate:Lkotlin/Lazy;

    .line 549
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$loggingInterceptor$2;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory$loggingInterceptor$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->loggingInterceptor$delegate:Lkotlin/Lazy;

    .line 649
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$kapi$2;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory$kapi$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->kapi$delegate:Lkotlin/Lazy;

    .line 779
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory$kapiNoLog$2;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory$kapiNoLog$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory;->kapiNoLog$delegate:Lkotlin/Lazy;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic withClientAndAdapter$default(Lcom/kakao/sdk/network/ApiFactory;Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;Lretrofit2/CallAdapter$Factory;ILjava/lang/Object;)Lretrofit2/Retrofit;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 399
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/network/ApiFactory;->withClientAndAdapter(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAppKeyInterceptor()Lcom/kakao/sdk/network/AppKeyInterceptor;
    .locals 1

    .line 369
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory;->appKeyInterceptor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/network/AppKeyInterceptor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKakaoAgentInterceptor()Lcom/kakao/sdk/network/KakaoAgentInterceptor;
    .locals 1

    .line 359
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory;->kakaoAgentInterceptor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/network/KakaoAgentInterceptor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKapi()Lretrofit2/Retrofit;
    .locals 1

    .line 649
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory;->kapi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKapiNoLog()Lretrofit2/Retrofit;
    .locals 1

    .line 779
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory;->kapiNoLog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 549
    sget-object v0, Lcom/kakao/sdk/network/ApiFactory;->loggingInterceptor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final withClientAndAdapter(Ljava/lang/String;Lokhttp3/OkHttpClient$Builder;Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit;
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 459
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json; charset=UTF8"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/KotlinSerializationConverterFactory;->create(Lkotlinx/serialization/StringFormat;Lokhttp3/MediaType;)Lretrofit2/Converter$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 469
    invoke-virtual {p2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 489
    invoke-virtual {p1, p3}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 509
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
