.class public final Lcom/google/longrunning/GetOperationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GetOperationRequest.java"

# interfaces
.implements Lcom/google/longrunning/GetOperationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/GetOperationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/GetOperationRequest;",
        "Lcom/google/longrunning/GetOperationRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/GetOperationRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 183
    invoke-static {}, Lcom/google/longrunning/GetOperationRequest;->access$000()Lcom/google/longrunning/GetOperationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/GetOperationRequest$1;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/longrunning/GetOperationRequest$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearName()Lcom/google/longrunning/GetOperationRequest$Builder;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/google/longrunning/GetOperationRequest$Builder;->copyOnWrite()V

    .line 237
    iget-object v0, p0, Lcom/google/longrunning/GetOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/GetOperationRequest;

    invoke-static {v0}, Lcom/google/longrunning/GetOperationRequest;->access$200(Lcom/google/longrunning/GetOperationRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/longrunning/GetOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/GetOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/GetOperationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/longrunning/GetOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/GetOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/GetOperationRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/longrunning/GetOperationRequest$Builder;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/google/longrunning/GetOperationRequest$Builder;->copyOnWrite()V

    .line 224
    iget-object v0, p0, Lcom/google/longrunning/GetOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/GetOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/GetOperationRequest;->access$100(Lcom/google/longrunning/GetOperationRequest;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/GetOperationRequest$Builder;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/google/longrunning/GetOperationRequest$Builder;->copyOnWrite()V

    .line 252
    iget-object v0, p0, Lcom/google/longrunning/GetOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/GetOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/GetOperationRequest;->access$300(Lcom/google/longrunning/GetOperationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
