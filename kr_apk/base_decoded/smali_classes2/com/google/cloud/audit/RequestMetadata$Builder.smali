.class public final Lcom/google/cloud/audit/RequestMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RequestMetadata.java"

# interfaces
.implements Lcom/google/cloud/audit/RequestMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/audit/RequestMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/cloud/audit/RequestMetadata;",
        "Lcom/google/cloud/audit/RequestMetadata$Builder;",
        ">;",
        "Lcom/google/cloud/audit/RequestMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 296
    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->access$000()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/cloud/audit/RequestMetadata$1;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/google/cloud/audit/RequestMetadata$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearCallerIp()Lcom/google/cloud/audit/RequestMetadata$Builder;
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$Builder;->copyOnWrite()V

    .line 350
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0}, Lcom/google/cloud/audit/RequestMetadata;->access$200(Lcom/google/cloud/audit/RequestMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearCallerSuppliedUserAgent()Lcom/google/cloud/audit/RequestMetadata$Builder;
    .locals 1

    .line 454
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$Builder;->copyOnWrite()V

    .line 455
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0}, Lcom/google/cloud/audit/RequestMetadata;->access$500(Lcom/google/cloud/audit/RequestMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCallerIp()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->getCallerIp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCallerIpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->getCallerIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCallerSuppliedUserAgent()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->getCallerSuppliedUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCallerSuppliedUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-virtual {v0}, Lcom/google/cloud/audit/RequestMetadata;->getCallerSuppliedUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCallerIp(Ljava/lang/String;)Lcom/google/cloud/audit/RequestMetadata$Builder;
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$Builder;->copyOnWrite()V

    .line 337
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/RequestMetadata;->access$100(Lcom/google/cloud/audit/RequestMetadata;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCallerIpBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/RequestMetadata$Builder;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$Builder;->copyOnWrite()V

    .line 365
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/RequestMetadata;->access$300(Lcom/google/cloud/audit/RequestMetadata;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCallerSuppliedUserAgent(Ljava/lang/String;)Lcom/google/cloud/audit/RequestMetadata$Builder;
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/RequestMetadata;->access$400(Lcom/google/cloud/audit/RequestMetadata;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCallerSuppliedUserAgentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/RequestMetadata$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/google/cloud/audit/RequestMetadata$Builder;->copyOnWrite()V

    .line 479
    iget-object v0, p0, Lcom/google/cloud/audit/RequestMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/RequestMetadata;->access$600(Lcom/google/cloud/audit/RequestMetadata;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
