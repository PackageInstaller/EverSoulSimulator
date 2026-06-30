.class public final Lcom/google/longrunning/Operation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Operation.java"

# interfaces
.implements Lcom/google/longrunning/OperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/Operation;",
        "Lcom/google/longrunning/Operation$Builder;",
        ">;",
        "Lcom/google/longrunning/OperationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 538
    invoke-static {}, Lcom/google/longrunning/Operation;->access$000()Lcom/google/longrunning/Operation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/Operation$1;)V
    .locals 0

    .line 531
    invoke-direct {p0}, Lcom/google/longrunning/Operation$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDone()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 763
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$900(Lcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearError()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 835
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 836
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$1200(Lcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMetadata()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$700(Lcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 611
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 612
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$300(Lcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearResponse()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 949
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 950
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$1500(Lcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearResult()Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0}, Lcom/google/longrunning/Operation;->access$100(Lcom/google/longrunning/Operation;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDone()Z
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getDone()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getError()Lcom/google/rpc/Status;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getError()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadata()Lcom/google/protobuf/Any;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getMetadata()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponse()Lcom/google/protobuf/Any;
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getResponse()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResultCase()Lcom/google/longrunning/Operation$ResultCase;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->getResultCase()Lcom/google/longrunning/Operation$ResultCase;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasError()Z
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->hasError()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasMetadata()Z
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->hasMetadata()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasResponse()Z
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {v0}, Lcom/google/longrunning/Operation;->hasResponse()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeError(Lcom/google/rpc/Status;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 823
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 824
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1100(Lcom/google/longrunning/Operation;Lcom/google/rpc/Status;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeMetadata(Lcom/google/protobuf/Any;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$600(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeResponse(Lcom/google/protobuf/Any;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 930
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 931
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1400(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDone(Z)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 749
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$800(Lcom/google/longrunning/Operation;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setError(Lcom/google/rpc/Status$Builder;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 811
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 812
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {p1}, Lcom/google/rpc/Status$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1000(Lcom/google/longrunning/Operation;Lcom/google/rpc/Status;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setError(Lcom/google/rpc/Status;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 799
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1000(Lcom/google/longrunning/Operation;Lcom/google/rpc/Status;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetadata(Lcom/google/protobuf/Any$Builder;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 688
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 689
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$500(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetadata(Lcom/google/protobuf/Any;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$500(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 596
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 597
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$200(Lcom/google/longrunning/Operation;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$400(Lcom/google/longrunning/Operation;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponse(Lcom/google/protobuf/Any$Builder;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 911
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1300(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponse(Lcom/google/protobuf/Any;)Lcom/google/longrunning/Operation$Builder;
    .locals 1

    .line 891
    invoke-virtual {p0}, Lcom/google/longrunning/Operation$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lcom/google/longrunning/Operation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/Operation;->access$1300(Lcom/google/longrunning/Operation;Lcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
