.class public final Lcom/google/longrunning/ListOperationsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListOperationsRequest.java"

# interfaces
.implements Lcom/google/longrunning/ListOperationsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/ListOperationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/ListOperationsRequest;",
        "Lcom/google/longrunning/ListOperationsRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/ListOperationsRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 357
    invoke-static {}, Lcom/google/longrunning/ListOperationsRequest;->access$000()Lcom/google/longrunning/ListOperationsRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/ListOperationsRequest$1;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearFilter()Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 480
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsRequest;->access$500(Lcom/google/longrunning/ListOperationsRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsRequest;->access$200(Lcom/google/longrunning/ListOperationsRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPageSize()Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsRequest;->access$800(Lcom/google/longrunning/ListOperationsRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPageToken()Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsRequest;->access$1000(Lcom/google/longrunning/ListOperationsRequest;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getFilterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getFilterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPageSize()I
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getPageSize()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsRequest;->getPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setFilter(Ljava/lang/String;)Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 466
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 467
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsRequest;->access$400(Lcom/google/longrunning/ListOperationsRequest;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setFilterBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 495
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsRequest;->access$600(Lcom/google/longrunning/ListOperationsRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 398
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsRequest;->access$100(Lcom/google/longrunning/ListOperationsRequest;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 426
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsRequest;->access$300(Lcom/google/longrunning/ListOperationsRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPageSize(I)Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 522
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsRequest;->access$700(Lcom/google/longrunning/ListOperationsRequest;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 575
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsRequest;->access$900(Lcom/google/longrunning/ListOperationsRequest;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/ListOperationsRequest$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsRequest$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsRequest;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsRequest;->access$1100(Lcom/google/longrunning/ListOperationsRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
