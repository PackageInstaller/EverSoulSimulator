.class public final Lcom/google/longrunning/OperationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OperationInfo.java"

# interfaces
.implements Lcom/google/longrunning/OperationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/OperationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/OperationInfo;",
        "Lcom/google/longrunning/OperationInfo$Builder;",
        ">;",
        "Lcom/google/longrunning/OperationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 312
    invoke-static {}, Lcom/google/longrunning/OperationInfo;->access$000()Lcom/google/longrunning/OperationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/OperationInfo$1;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/google/longrunning/OperationInfo$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearMetadataType()Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 475
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 476
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0}, Lcom/google/longrunning/OperationInfo;->access$500(Lcom/google/longrunning/OperationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearResponseType()Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0}, Lcom/google/longrunning/OperationInfo;->access$200(Lcom/google/longrunning/OperationInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadataType()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getMetadataType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadataTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getMetadataTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getResponseType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-virtual {v0}, Lcom/google/longrunning/OperationInfo;->getResponseTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetadataType(Ljava/lang/String;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 459
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p1}, Lcom/google/longrunning/OperationInfo;->access$400(Lcom/google/longrunning/OperationInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetadataTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 495
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p1}, Lcom/google/longrunning/OperationInfo;->access$600(Lcom/google/longrunning/OperationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponseType(Ljava/lang/String;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 368
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p1}, Lcom/google/longrunning/OperationInfo;->access$100(Lcom/google/longrunning/OperationInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponseTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/OperationInfo$Builder;
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/google/longrunning/OperationInfo$Builder;->copyOnWrite()V

    .line 406
    iget-object v0, p0, Lcom/google/longrunning/OperationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/OperationInfo;

    invoke-static {v0, p1}, Lcom/google/longrunning/OperationInfo;->access$300(Lcom/google/longrunning/OperationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
