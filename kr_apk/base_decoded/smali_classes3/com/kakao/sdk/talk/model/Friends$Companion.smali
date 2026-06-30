.class public final Lcom/kakao/sdk/talk/model/Friends$Companion;
.super Ljava/lang/Object;
.source "Friends.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/talk/model/Friends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFriends.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Friends.kt\ncom/kakao/sdk/talk/model/Friends$Companion\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,156:1\n47#2:157\n96#3:158\n*S KotlinDebug\n*F\n+ 1 Friends.kt\ncom/kakao/sdk/talk/model/Friends$Companion\n*L\n48#1:157\n48#1:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0006\u0008\u0001\u0010\u0005\u0018\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0008J)\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u00040\t\"\u0004\u0008\u0001\u0010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\n0\tH\u00c6\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/talk/model/Friends$Companion;",
        "",
        "()V",
        "fromJson",
        "Lcom/kakao/sdk/talk/model/Friends;",
        "T",
        "string",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "T0",
        "typeSerial0",
        "talk_release"
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

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakao/sdk/talk/model/Friends$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final synthetic get$cachedDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 469
    invoke-static {}, Lcom/kakao/sdk/talk/model/Friends;->access$get$cachedDescriptor$cp()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final synthetic fromJson(Ljava/lang/String;)Lcom/kakao/sdk/talk/model/Friends;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1579
    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 1589
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    sget-object v2, Lcom/kakao/sdk/talk/model/Friends;->Companion:Lcom/kakao/sdk/talk/model/Friends$Companion;

    const/4 v3, 0x6

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v3, "kotlinx.serialization.serializer.withModule"

    invoke-static {v3}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kakao/sdk/talk/model/Friends$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1579
    check-cast p1, Lcom/kakao/sdk/talk/model/Friends;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT0;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/kakao/sdk/talk/model/Friends<",
            "TT0;>;>;"
        }
    .end annotation

    const-string/jumbo v0, "typeSerial0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    new-instance v0, Lcom/kakao/sdk/talk/model/Friends$$serializer;

    invoke-direct {v0, p1}, Lcom/kakao/sdk/talk/model/Friends$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0

    .array-data 1
    .end array-data
.end method
