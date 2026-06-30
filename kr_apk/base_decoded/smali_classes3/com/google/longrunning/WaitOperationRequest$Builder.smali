.class public final Lcom/google/longrunning/WaitOperationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WaitOperationRequest.java"

# interfaces
.implements Lcom/google/longrunning/WaitOperationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/WaitOperationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/WaitOperationRequest;",
        "Lcom/google/longrunning/WaitOperationRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/WaitOperationRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 259
    invoke-static {}, Lcom/google/longrunning/WaitOperationRequest;->access$000()Lcom/google/longrunning/WaitOperationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/WaitOperationRequest$1;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearName()Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 313
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0}, Lcom/google/longrunning/WaitOperationRequest;->access$200(Lcom/google/longrunning/WaitOperationRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearTimeout()Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0}, Lcom/google/longrunning/WaitOperationRequest;->access$600(Lcom/google/longrunning/WaitOperationRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasTimeout()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/WaitOperationRequest;->hasTimeout()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeTimeout(Lcom/google/protobuf/Duration;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 398
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$500(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 300
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$100(Lcom/google/longrunning/WaitOperationRequest;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 328
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$300(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTimeout(Lcom/google/protobuf/Duration$Builder;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 384
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Duration;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$400(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTimeout(Lcom/google/protobuf/Duration;)Lcom/google/longrunning/WaitOperationRequest$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/longrunning/WaitOperationRequest$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/longrunning/WaitOperationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/WaitOperationRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/WaitOperationRequest;->access$400(Lcom/google/longrunning/WaitOperationRequest;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
