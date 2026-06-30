.class final Lcom/kakao/sdk/common/util/KakaoJson$json$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KakaoJson.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/common/util/KakaoJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/json/JsonBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKakaoJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson$json$1\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,58:1\n31#2,2:59\n241#2:61\n33#2:62\n*S KotlinDebug\n*F\n+ 1 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson$json$1\n*L\n41#1:59,2\n42#1:61\n41#1:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/serialization/json/JsonBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson$json$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/common/util/KakaoJson$json$1;

    invoke-direct {v0}, Lcom/kakao/sdk/common/util/KakaoJson$json$1;-><init>()V

    sput-object v0, Lcom/kakao/sdk/common/util/KakaoJson$json$1;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson$json$1;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 359
    check-cast p1, Lkotlinx/serialization/json/JsonBuilder;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/KakaoJson$json$1;->invoke(Lkotlinx/serialization/json/JsonBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonBuilder;)V
    .locals 3

    const-string v0, "$this$Json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 369
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    .line 379
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setLenient(Z)V

    .line 389
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setCoerceInputValues(Z)V

    const/4 v1, 0x0

    .line 399
    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/JsonBuilder;->setExplicitNulls(Z)V

    .line 409
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setAllowStructuredMapKeys(Z)V

    .line 599
    new-instance v0, Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;-><init>()V

    .line 429
    new-instance v1, Lcom/kakao/sdk/common/json/DateSerializer;

    invoke-direct {v1}, Lcom/kakao/sdk/common/json/DateSerializer;-><init>()V

    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 619
    const-class v2, Ljava/util/Date;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->contextual(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    .line 629
    invoke-virtual {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->build()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    .line 419
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setSerializersModule(Lkotlinx/serialization/modules/SerializersModule;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
