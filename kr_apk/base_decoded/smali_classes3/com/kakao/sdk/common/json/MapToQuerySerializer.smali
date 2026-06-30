.class public final Lcom/kakao/sdk/common/json/MapToQuerySerializer;
.super Ljava/lang/Object;
.source "Serializer.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/kakao/sdk/common/json/MapToQuerySerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "",
        "",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor$annotations",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
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


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/common/json/MapToQuerySerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/kakao/sdk/common/json/MapToQuerySerializer;

    invoke-direct {v0}, Lcom/kakao/sdk/common/json/MapToQuerySerializer;-><init>()V

    sput-object v0, Lcom/kakao/sdk/common/json/MapToQuerySerializer;->INSTANCE:Lcom/kakao/sdk/common/json/MapToQuerySerializer;

    .line 689
    sget-object v0, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialKind;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    sget-object v2, Lcom/kakao/sdk/common/json/MapToQuerySerializer$descriptor$1;->INSTANCE:Lcom/kakao/sdk/common/json/MapToQuerySerializer$descriptor$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-string v3, "MapToQuery"

    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/json/MapToQuerySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic getDescriptor$annotations()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 659
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/json/MapToQuerySerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Decoder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    .line 749
    sget-object v0, Lcom/kakao/sdk/common/util/Utility;->INSTANCE:Lcom/kakao/sdk/common/util/Utility;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/util/Utility;->parseQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 679
    sget-object v0, Lcom/kakao/sdk/common/json/MapToQuerySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 659
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/common/json/MapToQuerySerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    sget-object v0, Lcom/kakao/sdk/common/util/Utility;->INSTANCE:Lcom/kakao/sdk/common/util/Utility;

    invoke-virtual {v0, p2}, Lcom/kakao/sdk/common/util/Utility;->buildQuery(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 799
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
