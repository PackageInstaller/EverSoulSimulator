.class public final Lcom/kakao/sdk/partner/user/model/AgeAuthError;
.super Ljava/lang/RuntimeException;
.source "AgeAuthError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/partner/user/model/AgeAuthError$$serializer;,
        Lcom/kakao/sdk/partner/user/model/AgeAuthError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \"2\u00060\u0001j\u0002`\u0002:\u0002!\"B-\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0008H\u00c6\u0003J\u001d\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0008H\u00d6\u0001J!\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u00c7\u0001R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006#"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/user/model/AgeAuthError;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "seen1",
        "",
        "reason",
        "Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;",
        "msg",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;)V",
        "getMsg",
        "()Ljava/lang/String;",
        "getReason",
        "()Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "partner-user_release"
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
.field public static final Companion:Lcom/kakao/sdk/partner/user/model/AgeAuthError$Companion;


# instance fields
.field private final msg:Ljava/lang/String;

.field private final reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/partner/user/model/AgeAuthError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->Companion:Lcom/kakao/sdk/partner/user/model/AgeAuthError$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 299
    sget-object p4, Lcom/kakao/sdk/partner/user/model/AgeAuthError$$serializer;->INSTANCE:Lcom/kakao/sdk/partner/user/model/AgeAuthError$$serializer;

    invoke-virtual {p4}, Lcom/kakao/sdk/partner/user/model/AgeAuthError$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    iput-object p3, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 319
    iput-object p1, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    .line 329
    iput-object p2, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/partner/user/model/AgeAuthError;Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/partner/user/model/AgeAuthError;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->copy(Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;)Lcom/kakao/sdk/partner/user/model/AgeAuthError;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/partner/user/model/AgeAuthError;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCauseSerializer;->INSTANCE:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCauseSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;)Lcom/kakao/sdk/partner/user/model/AgeAuthError;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;

    invoke-direct {v0, p1, p2}, Lcom/kakao/sdk/partner/user/model/AgeAuthError;-><init>(Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/partner/user/model/AgeAuthError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/partner/user/model/AgeAuthError;

    iget-object v1, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    iget-object v3, p1, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

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

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getReason()Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    invoke-virtual {v0}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->reason:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    iget-object v1, p0, Lcom/kakao/sdk/partner/user/model/AgeAuthError;->msg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AgeAuthError(reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
