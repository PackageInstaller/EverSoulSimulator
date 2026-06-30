.class public final Lcom/kakao/sdk/common/model/AppsError$Companion;
.super Ljava/lang/Object;
.source "KakaoAppsError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/common/model/AppsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKakaoAppsError.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KakaoAppsError.kt\ncom/kakao/sdk/common/model/AppsError$Companion\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,183:1\n47#2:184\n96#3:185\n*S KotlinDebug\n*F\n+ 1 KakaoAppsError.kt\ncom/kakao/sdk/common/model/AppsError$Companion\n*L\n47#1:184\n47#1:185\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000bH\u00c6\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/AppsError$Companion;",
        "",
        "()V",
        "create",
        "Lcom/kakao/sdk/common/model/AppsError;",
        "statusCode",
        "",
        "code",
        "",
        "message",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "common_release"
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

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakao/sdk/common/model/AppsError$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final create(ILjava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/model/AppsError;
    .locals 3

    const-string/jumbo v0, "unknown"

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    if-nez p3, :cond_1

    move-object p3, v0

    .line 469
    :cond_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/kakao/sdk/common/model/AppsError$Companion;

    .line 479
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1849
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 1859
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/kakao/sdk/common/model/AppsErrorCause;->Companion:Lcom/kakao/sdk/common/model/AppsErrorCause$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/AppsErrorCause$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1849
    check-cast v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 469
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 489
    :goto_0
    sget-object v1, Lcom/kakao/sdk/common/model/AppsErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AppsErrorCause;

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/kakao/sdk/common/model/AppsErrorCause;

    .line 509
    new-instance v1, Lcom/kakao/sdk/common/model/AppsError;

    new-instance v2, Lcom/kakao/sdk/common/model/AppsErrorResponse;

    invoke-direct {v2, p2, p3}, Lcom/kakao/sdk/common/model/AppsErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/kakao/sdk/common/model/AppsError;-><init>(ILcom/kakao/sdk/common/model/AppsErrorCause;Lcom/kakao/sdk/common/model/AppsErrorResponse;)V

    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/kakao/sdk/common/model/AppsError;",
            ">;"
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/kakao/sdk/common/model/AppsError$$serializer;->INSTANCE:Lcom/kakao/sdk/common/model/AppsError$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
