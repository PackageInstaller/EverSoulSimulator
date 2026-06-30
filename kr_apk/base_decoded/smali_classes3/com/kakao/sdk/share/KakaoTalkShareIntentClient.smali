.class public final Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;
.super Ljava/lang/Object;
.source "KakaoTalkShareIntentClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKakaoTalkShareIntentClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KakaoTalkShareIntentClient.kt\ncom/kakao/sdk/share/KakaoTalkShareIntentClient\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n+ 4 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 5 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n1#1,130:1\n47#2:131\n47#2:133\n46#2:135\n56#2:140\n53#2:145\n96#3:132\n96#3:134\n113#4:136\n28#5,3:137\n28#5,3:141\n31#5:148\n31#5:149\n1855#6:144\n1856#6:147\n211#7:146\n*S KotlinDebug\n*F\n+ 1 KakaoTalkShareIntentClient.kt\ncom/kakao/sdk/share/KakaoTalkShareIntentClient\n*L\n82#1:131\n83#1:133\n112#1:135\n122#1:140\n122#1:145\n82#1:132\n83#1:134\n112#1:136\n121#1:137,3\n122#1:141,3\n122#1:148\n121#1:149\n122#1:144\n122#1:147\n122#1:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 $2\u00020\u0001:\u0001$B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J.\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0016H\u0002J&\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0016H\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJB\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010 \u001a\u00020\u0012H\u0007J\u0010\u0010!\u001a\n #*\u0004\u0018\u00010\"0\"H\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;",
        "",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "applicationInfo",
        "Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "intentResolveClient",
        "Lcom/kakao/sdk/common/util/IntentResolveClient;",
        "(Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/util/IntentResolveClient;)V",
        "getApplicationInfo",
        "()Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "getContextInfo",
        "()Lcom/kakao/sdk/common/model/ContextInfo;",
        "getIntentResolveClient",
        "()Lcom/kakao/sdk/common/util/IntentResolveClient;",
        "attachmentSize",
        "",
        "appKey",
        "",
        "response",
        "Lcom/kakao/sdk/share/model/ValidationResult;",
        "serverCallbackArgs",
        "",
        "extrasWithServerCallbacks",
        "Lkotlinx/serialization/json/JsonObject;",
        "extras",
        "isKakaoTalkSharingAvailable",
        "",
        "context",
        "Landroid/content/Context;",
        "sharingResultFromResponse",
        "Lcom/kakao/sdk/share/model/SharingResult;",
        "appVer",
        "sharingUriBuilder",
        "Landroid/net/Uri$Builder;",
        "kotlin.jvm.PlatformType",
        "Companion",
        "share_release"
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
.field public static final Companion:Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

.field private final contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

.field private final intentResolveClient:Lcom/kakao/sdk/common/util/IntentResolveClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->Companion:Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion;

    .line 1279
    sget-object v0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/util/IntentResolveClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/util/IntentResolveClient;)V
    .locals 1

    const-string v0, "contextInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentResolveClient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    .line 419
    iput-object p2, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    .line 429
    iput-object p3, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->intentResolveClient:Lcom/kakao/sdk/common/util/IntentResolveClient;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/util/IntentResolveClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 409
    sget-object p1, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p1}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/model/ContextInfo;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 419
    sget-object p2, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p2}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/common/model/ApplicationInfo;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 429
    sget-object p3, Lcom/kakao/sdk/common/util/IntentResolveClient;->Companion:Lcom/kakao/sdk/common/util/IntentResolveClient$Companion;

    invoke-virtual {p3}, Lcom/kakao/sdk/common/util/IntentResolveClient$Companion;->getInstance()Lcom/kakao/sdk/common/util/IntentResolveClient;

    move-result-object p3

    .line 399
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/util/IntentResolveClient;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 399
    sget-object v0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final attachmentSize(Ljava/lang/String;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakao/sdk/share/model/ValidationResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object v0, p0

    .line 1049
    new-instance v13, Lcom/kakao/sdk/share/model/KakaoTalkSharingAttachment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1069
    invoke-virtual/range {p2 .. p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getTemplateMsg()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    const-string v4, "P"

    invoke-virtual {v1, v4}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 1079
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getTemplateMsg()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    const-string v6, "C"

    invoke-virtual {v1, v6}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 1089
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getTemplateId()J

    move-result-wide v7

    .line 1099
    invoke-virtual/range {p2 .. p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getTemplateArgs()Lkotlinx/serialization/json/JsonObject;

    move-result-object v9

    .line 1109
    iget-object v1, v0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v1}, Lcom/kakao/sdk/common/model/ContextInfo;->getExtras()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    move-object/from16 v4, p3

    invoke-direct {p0, v1, v4}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->extrasWithServerCallbacks(Lkotlinx/serialization/json/JsonObject;Ljava/util/Map;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v1, v13

    move-object v4, p1

    .line 1049
    invoke-direct/range {v1 .. v12}, Lcom/kakao/sdk/share/model/KakaoTalkSharingAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;JLkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/json/JsonObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1129
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1359
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 1369
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/kakao/sdk/share/model/KakaoTalkSharingAttachment;->Companion:Lcom/kakao/sdk/share/model/KakaoTalkSharingAttachment$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/share/model/KakaoTalkSharingAttachment$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, v13}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method private final extrasWithServerCallbacks(Lkotlinx/serialization/json/JsonObject;Ljava/util/Map;)Lkotlinx/serialization/json/JsonObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlinx/serialization/json/JsonObject;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    .line 1389
    :cond_0
    new-instance p1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {p1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 1229
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1429
    new-instance v0, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 1409
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 1449
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1409
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1459
    invoke-virtual {v3}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    .line 1469
    invoke-virtual {v3}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v3, v4, v1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 1409
    invoke-virtual {v0, v2, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 1489
    :cond_1
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p2

    .line 1409
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    const-string v0, "lcba"

    .line 1229
    invoke-virtual {p1, v0, p2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    .line 1499
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public static synthetic sharingResultFromResponse$default(Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;Landroid/content/Context;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/share/model/SharingResult;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 499
    iget-object p4, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {p4}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 509
    iget-object p4, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {p4}, Lcom/kakao/sdk/common/model/ContextInfo;->getAppVer()Ljava/lang/String;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 459
    invoke-virtual/range {v0 .. v5}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->sharingResultFromResponse(Landroid/content/Context;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/share/model/SharingResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final sharingUriBuilder()Landroid/net/Uri$Builder;
    .locals 2

    .line 979
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "kakaolink"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getApplicationInfo()Lcom/kakao/sdk/common/model/ApplicationInfo;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getContextInfo()Lcom/kakao/sdk/common/model/ContextInfo;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getIntentResolveClient()Lcom/kakao/sdk/common/util/IntentResolveClient;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->intentResolveClient:Lcom/kakao/sdk/common/util/IntentResolveClient;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isKakaoTalkSharingAvailable(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->intentResolveClient:Lcom/kakao/sdk/common/util/IntentResolveClient;

    .line 939
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->sharingUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 919
    invoke-virtual {v0, p1, v1}, Lcom/kakao/sdk/common/util/IntentResolveClient;->resolveTalkIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public final sharingResultFromResponse(Landroid/content/Context;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;)Lcom/kakao/sdk/share/model/SharingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/share/model/ValidationResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/sdk/share/model/SharingResult;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->sharingResultFromResponse$default(Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;Landroid/content/Context;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/share/model/SharingResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final sharingResultFromResponse(Landroid/content/Context;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;Ljava/lang/String;)Lcom/kakao/sdk/share/model/SharingResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/share/model/ValidationResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakao/sdk/share/model/SharingResult;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->sharingResultFromResponse$default(Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;Landroid/content/Context;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/share/model/SharingResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final sharingResultFromResponse(Landroid/content/Context;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/share/model/SharingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/share/model/ValidationResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakao/sdk/share/model/SharingResult;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-direct {p0, p4, p2, p3}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->attachmentSize(Ljava/lang/String;Lcom/kakao/sdk/share/model/ValidationResult;Ljava/util/Map;)I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->sharingUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "linkver"

    const-string v2, "4.0"

    .line 609
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "appkey"

    .line 619
    invoke-virtual {v0, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    const-string v0, "appver"

    .line 629
    invoke-virtual {p4, v0, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 639
    invoke-virtual {p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getTemplateId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    const-string v0, "template_id"

    invoke-virtual {p4, v0, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 649
    invoke-virtual {p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getTemplateArgs()Lkotlinx/serialization/json/JsonObject;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "template_args"

    invoke-virtual {p4, v0, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 659
    invoke-virtual {p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getTemplateMsg()Lkotlinx/serialization/json/JsonObject;

    move-result-object p5

    invoke-virtual {p5}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "template_json"

    invoke-virtual {p4, v0, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 689
    iget-object p5, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {p5}, Lcom/kakao/sdk/common/model/ContextInfo;->getExtras()Lkotlinx/serialization/json/JsonObject;

    move-result-object p5

    invoke-direct {p0, p5, p3}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->extrasWithServerCallbacks(Lkotlinx/serialization/json/JsonObject;Ljava/util/Map;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p3

    invoke-virtual {p3}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "extras"

    .line 669
    invoke-virtual {p4, p5, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 709
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 719
    sget-object p4, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p4, p3}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 729
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.SEND"

    invoke-direct {p4, p5, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p3, 0x14000000

    .line 739
    invoke-virtual {p4, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "Intent(Intent.ACTION_SEN\u2026.FLAG_ACTIVITY_CLEAR_TOP)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    iget-object p4, p0, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->intentResolveClient:Lcom/kakao/sdk/common/util/IntentResolveClient;

    invoke-virtual {p4, p1, p3}, Lcom/kakao/sdk/common/util/IntentResolveClient;->resolveTalkIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 799
    new-instance p1, Lcom/kakao/sdk/share/model/SharingResult;

    .line 829
    sget-object p4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getWarningMsg()Lkotlinx/serialization/json/JsonObject;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 1319
    invoke-virtual {p4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p4

    .line 1329
    invoke-virtual {p4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p4, v0, p5}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    .line 1319
    check-cast p4, Ljava/util/Map;

    .line 839
    sget-object p5, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-virtual {p2}, Lcom/kakao/sdk/share/model/ValidationResult;->getArgumentMsg()Lkotlinx/serialization/json/JsonObject;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1339
    invoke-virtual {p5}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p5

    .line 1349
    invoke-virtual {p5}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p5, v0, p2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 1339
    check-cast p2, Ljava/util/Map;

    .line 799
    invoke-direct {p1, p3, p4, p2}, Lcom/kakao/sdk/share/model/SharingResult;-><init>(Landroid/content/Intent;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1

    .line 769
    :cond_0
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p2, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string p3, "Kakaotalk not installed"

    invoke-direct {p1, p2, p3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p1

    .line 549
    :cond_1
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    .line 559
    sget-object p2, Lcom/kakao/sdk/common/model/ClientErrorCause;->BadParameter:Lcom/kakao/sdk/common/model/ClientErrorCause;

    .line 569
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "KakaoTalk Share intent size is "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " bytes. It should be less than 10240 bytes."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 549
    invoke-direct {p1, p2, p3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method
