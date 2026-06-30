.class public final Lcom/google/longrunning/ListOperationsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListOperationsResponse.java"

# interfaces
.implements Lcom/google/longrunning/ListOperationsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/ListOperationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/ListOperationsResponse;",
        "Lcom/google/longrunning/ListOperationsResponse$Builder;",
        ">;",
        "Lcom/google/longrunning/ListOperationsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 322
    invoke-static {}, Lcom/google/longrunning/ListOperationsResponse;->access$000()Lcom/google/longrunning/ListOperationsResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/ListOperationsResponse$1;)V
    .locals 0

    .line 315
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllOperations(Ljava/lang/Iterable;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/longrunning/Operation;",
            ">;)",
            "Lcom/google/longrunning/ListOperationsResponse$Builder;"
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 448
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$400(Lcom/google/longrunning/ListOperationsResponse;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOperations(ILcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 434
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 435
    invoke-virtual {p2}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/longrunning/Operation;

    .line 434
    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$300(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOperations(ILcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$300(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOperations(Lcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 421
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {p1}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$200(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addOperations(Lcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 394
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 395
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$200(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearNextPageToken()Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsResponse;->access$800(Lcom/google/longrunning/ListOperationsResponse;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOperations()Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsResponse;->access$500(Lcom/google/longrunning/ListOperationsResponse;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getNextPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOperations(I)Lcom/google/longrunning/Operation;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->getOperations(I)Lcom/google/longrunning/Operation;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getOperationsCount()I
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getOperationsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOperationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 336
    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getOperationsList()Ljava/util/List;

    move-result-object v0

    .line 335
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeOperations(I)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 472
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$600(Lcom/google/longrunning/ListOperationsResponse;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$700(Lcom/google/longrunning/ListOperationsResponse;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 541
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$900(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOperations(ILcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 383
    invoke-virtual {p2}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/longrunning/Operation;

    .line 382
    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$100(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOperations(ILcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$100(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
