.class public final Lcom/google/rpc/ErrorInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ErrorInfo.java"

# interfaces
.implements Lcom/google/rpc/ErrorInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/ErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/ErrorInfo;",
        "Lcom/google/rpc/ErrorInfo$Builder;",
        ">;",
        "Lcom/google/rpc/ErrorInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 465
    invoke-static {}, Lcom/google/rpc/ErrorInfo;->access$000()Lcom/google/rpc/ErrorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/ErrorInfo$1;)V
    .locals 0

    .line 458
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDomain()Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 619
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$500(Lcom/google/rpc/ErrorInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMetadata()Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearReason()Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$200(Lcom/google/rpc/ErrorInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public containsMetadata(Ljava/lang/String;)Z
    .locals 1

    .line 664
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDomainBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 700
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadataCount()I
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    .line 718
    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    .line 717
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 738
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    .line 740
    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    .line 741
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 760
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    .line 762
    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    .line 763
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 764
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public putAllMetadata(Ljava/util/Map;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/ErrorInfo$Builder;"
        }
    .end annotation

    .line 805
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public putMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 784
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 785
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeMetadata(Ljava/lang/String;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 689
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 691
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0}, Lcom/google/rpc/ErrorInfo;->access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ErrorInfo;->access$400(Lcom/google/rpc/ErrorInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDomainBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 638
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ErrorInfo;->access$600(Lcom/google/rpc/ErrorInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setReason(Ljava/lang/String;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ErrorInfo;->access$100(Lcom/google/rpc/ErrorInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ErrorInfo;->access$300(Lcom/google/rpc/ErrorInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
