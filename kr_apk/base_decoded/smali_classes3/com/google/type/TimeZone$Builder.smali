.class public final Lcom/google/type/TimeZone$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TimeZone.java"

# interfaces
.implements Lcom/google/type/TimeZoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/TimeZone;",
        "Lcom/google/type/TimeZone$Builder;",
        ">;",
        "Lcom/google/type/TimeZoneOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 253
    invoke-static {}, Lcom/google/type/TimeZone;->access$000()Lcom/google/type/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/type/TimeZone$1;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Lcom/google/type/TimeZone$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearId()Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 307
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0}, Lcom/google/type/TimeZone;->access$200(Lcom/google/type/TimeZone;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearVersion()Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 376
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0}, Lcom/google/type/TimeZone;->access$500(Lcom/google/type/TimeZone;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setId(Ljava/lang/String;)Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 294
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0, p1}, Lcom/google/type/TimeZone;->access$100(Lcom/google/type/TimeZone;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 322
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0, p1}, Lcom/google/type/TimeZone;->access$300(Lcom/google/type/TimeZone;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 363
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0, p1}, Lcom/google/type/TimeZone;->access$400(Lcom/google/type/TimeZone;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/google/type/TimeZone$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/google/type/TimeZone$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/TimeZone;

    invoke-static {v0, p1}, Lcom/google/type/TimeZone;->access$600(Lcom/google/type/TimeZone;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
