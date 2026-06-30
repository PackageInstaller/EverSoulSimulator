.class public final Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;
.super Ljava/lang/Object;
.source "UserRevokedServiceTerms.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$$serializer;,
        Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 $2\u00020\u0001:\u0002#$B3\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0010\u0008\u0001\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0003J%\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J!\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u00c7\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR$\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;",
        "",
        "seen1",
        "",
        "id",
        "",
        "revokedServiceTerms",
        "",
        "Lcom/kakao/sdk/user/model/RevokedServiceTerms;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(JLjava/util/List;)V",
        "getId",
        "()J",
        "getRevokedServiceTerms$annotations",
        "()V",
        "getRevokedServiceTerms",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "user_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$Companion;


# instance fields
.field private final id:J

.field private final revokedServiceTerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/user/model/RevokedServiceTerms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->Companion:Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(IJLjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p4    # Ljava/util/List;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "revoked_service_terms"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p5, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p5, :cond_0

    .line 289
    sget-object p5, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$$serializer;->INSTANCE:Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$$serializer;

    invoke-virtual {p5}, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    iput-object p4, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/user/model/RevokedServiceTerms;",
            ">;)V"
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-wide p1, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    .line 319
    iput-object p3, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;JLjava/util/List;ILjava/lang/Object;)Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->copy(JLjava/util/List;)Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getRevokedServiceTerms$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "revoked_service_terms"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 289
    iget-wide v1, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/kakao/sdk/user/model/RevokedServiceTerms$$serializer;->INSTANCE:Lcom/kakao/sdk/user/model/RevokedServiceTerms$$serializer;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/user/model/RevokedServiceTerms;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(JLjava/util/List;)Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/user/model/RevokedServiceTerms;",
            ">;)",
            "Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;"
        }
    .end annotation

    new-instance v0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;

    invoke-direct {v0, p1, p2, p3}, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;-><init>(JLjava/util/List;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;

    iget-wide v3, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    iget-wide v5, p1, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    iget-object p1, p1, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getId()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRevokedServiceTerms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/user/model/RevokedServiceTerms;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->id:J

    iget-object v2, p0, Lcom/kakao/sdk/user/model/UserRevokedServiceTerms;->revokedServiceTerms:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UserRevokedServiceTerms(id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revokedServiceTerms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
