.class final Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TalkApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/talk/TalkApiClient;->followChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTalkApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TalkApiClient.kt\ncom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 6 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,465:1\n50#2,7:466\n47#2:480\n28#3,3:473\n31#3:479\n1855#4:476\n1856#4:478\n211#5:477\n96#6:481\n*S KotlinDebug\n*F\n+ 1 TalkApiClient.kt\ncom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1\n*L\n439#1:466,7\n439#1:480\n439#1:473,3\n439#1:479\n439#1:476\n439#1:478\n439#1:477\n439#1:481\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
        "uri",
        "Landroid/net/Uri;",
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
.field public static final INSTANCE:Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;

    invoke-direct {v0}, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;-><init>()V

    sput-object v0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;->INSTANCE:Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;

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
.method public final invoke(Landroid/net/Uri;)Lcom/kakao/sdk/talk/model/FollowChannelResult;
    .locals 6

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4399
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 4409
    sget-object v1, Lcom/kakao/sdk/common/util/Utility;->INSTANCE:Lcom/kakao/sdk/common/util/Utility;

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/kakao/sdk/common/util/Utility;->parseQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 4749
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 4729
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 4769
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4729
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 4699
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 4779
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, v2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    .line 4729
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 4799
    :cond_0
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    .line 4669
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4809
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 4819
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v1, Lcom/kakao/sdk/talk/model/FollowChannelResponse;->Companion:Lcom/kakao/sdk/talk/model/FollowChannelResponse$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/talk/model/FollowChannelResponse$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 4399
    check-cast p1, Lcom/kakao/sdk/talk/model/FollowChannelResponse;

    .line 4429
    sget-object v0, Lcom/kakao/sdk/talk/model/FollowChannelResult;->Companion:Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/talk/model/FollowChannelResult$Companion;->fromResponse(Lcom/kakao/sdk/talk/model/FollowChannelResponse;)Lcom/kakao/sdk/talk/model/FollowChannelResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4359
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$resultReceiver$1;->invoke(Landroid/net/Uri;)Lcom/kakao/sdk/talk/model/FollowChannelResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
