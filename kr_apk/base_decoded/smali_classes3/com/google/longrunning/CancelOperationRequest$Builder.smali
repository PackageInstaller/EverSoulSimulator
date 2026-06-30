.class public final Lcom/google/longrunning/CancelOperationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CancelOperationRequest.java"

# interfaces
.implements Lcom/google/longrunning/CancelOperationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/CancelOperationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/CancelOperationRequest;",
        "Lcom/google/longrunning/CancelOperationRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/CancelOperationRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 183
    invoke-static {}, Lcom/google/longrunning/CancelOperationRequest;->access$000()Lcom/google/longrunning/CancelOperationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/CancelOperationRequest$1;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/longrunning/CancelOperationRequest$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearName()Lcom/google/longrunning/CancelOperationRequest$Builder;
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/google/longrunning/CancelOperationRequest$Builder;->copyOnWrite()V

    .line 237
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0}, Lcom/google/longrunning/CancelOperationRequest;->access$200(Lcom/google/longrunning/CancelOperationRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/CancelOperationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/CancelOperationRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/longrunning/CancelOperationRequest$Builder;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/google/longrunning/CancelOperationRequest$Builder;->copyOnWrite()V

    .line 224
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/CancelOperationRequest;->access$100(Lcom/google/longrunning/CancelOperationRequest;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/CancelOperationRequest$Builder;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/google/longrunning/CancelOperationRequest$Builder;->copyOnWrite()V

    .line 252
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/CancelOperationRequest;->access$300(Lcom/google/longrunning/CancelOperationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
