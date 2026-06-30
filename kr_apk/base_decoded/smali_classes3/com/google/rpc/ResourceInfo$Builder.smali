.class public final Lcom/google/rpc/ResourceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ResourceInfo.java"

# interfaces
.implements Lcom/google/rpc/ResourceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/ResourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/ResourceInfo;",
        "Lcom/google/rpc/ResourceInfo$Builder;",
        ">;",
        "Lcom/google/rpc/ResourceInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 427
    invoke-static {}, Lcom/google/rpc/ResourceInfo;->access$000()Lcom/google/rpc/ResourceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/rpc/ResourceInfo$1;)V
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/google/rpc/ResourceInfo$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDescription()Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0}, Lcom/google/rpc/ResourceInfo;->access$1100(Lcom/google/rpc/ResourceInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOwner()Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 647
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0}, Lcom/google/rpc/ResourceInfo;->access$800(Lcom/google/rpc/ResourceInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearResourceName()Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 568
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0}, Lcom/google/rpc/ResourceInfo;->access$500(Lcom/google/rpc/ResourceInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearResourceType()Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0}, Lcom/google/rpc/ResourceInfo;->access$200(Lcom/google/rpc/ResourceInfo;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ResourceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ResourceInfo;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ResourceInfo;->getOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOwnerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ResourceInfo;->getOwnerBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ResourceInfo;->getResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResourceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ResourceInfo;->getResourceNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResourceType()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ResourceInfo;->getResourceType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResourceTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ResourceInfo;->getResourceTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 711
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ResourceInfo;->access$1000(Lcom/google/rpc/ResourceInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 742
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 743
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ResourceInfo;->access$1200(Lcom/google/rpc/ResourceInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOwner(Ljava/lang/String;)Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 632
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ResourceInfo;->access$700(Lcom/google/rpc/ResourceInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOwnerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 664
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ResourceInfo;->access$900(Lcom/google/rpc/ResourceInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResourceName(Ljava/lang/String;)Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ResourceInfo;->access$400(Lcom/google/rpc/ResourceInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResourceNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 585
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ResourceInfo;->access$600(Lcom/google/rpc/ResourceInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResourceType(Ljava/lang/String;)Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 474
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ResourceInfo;->access$100(Lcom/google/rpc/ResourceInfo;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResourceTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ResourceInfo$Builder;
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/google/rpc/ResourceInfo$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Lcom/google/rpc/ResourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/ResourceInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/ResourceInfo;->access$300(Lcom/google/rpc/ResourceInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
