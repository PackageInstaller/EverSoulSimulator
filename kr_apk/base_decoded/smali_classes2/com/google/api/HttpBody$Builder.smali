.class public final Lcom/google/api/HttpBody$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HttpBody.java"

# interfaces
.implements Lcom/google/api/HttpBodyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/HttpBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/HttpBody;",
        "Lcom/google/api/HttpBody$Builder;",
        ">;",
        "Lcom/google/api/HttpBodyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 429
    invoke-static {}, Lcom/google/api/HttpBody;->access$000()Lcom/google/api/HttpBody;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/HttpBody$1;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/google/api/HttpBody$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllExtensions(Ljava/lang/Iterable;)Lcom/google/api/HttpBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/api/HttpBody$Builder;"
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$900(Lcom/google/api/HttpBody;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addExtensions(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    .line 660
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 659
    invoke-static {v0, p1, p2}, Lcom/google/api/HttpBody;->access$800(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addExtensions(ILcom/google/protobuf/Any;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1, p2}, Lcom/google/api/HttpBody;->access$800(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addExtensions(Lcom/google/protobuf/Any$Builder;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 645
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$700(Lcom/google/api/HttpBody;Lcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addExtensions(Lcom/google/protobuf/Any;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 617
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$700(Lcom/google/api/HttpBody;Lcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearContentType()Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0}, Lcom/google/api/HttpBody;->access$200(Lcom/google/api/HttpBody;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearData()Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0}, Lcom/google/api/HttpBody;->access$500(Lcom/google/api/HttpBody;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearExtensions()Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 686
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0}, Lcom/google/api/HttpBody;->access$1000(Lcom/google/api/HttpBody;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExtensions(I)Lcom/google/protobuf/Any;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0, p1}, Lcom/google/api/HttpBody;->getExtensions(I)Lcom/google/protobuf/Any;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getExtensionsCount()I
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getExtensionsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    .line 553
    invoke-virtual {v0}, Lcom/google/api/HttpBody;->getExtensionsList()Ljava/util/List;

    move-result-object v0

    .line 552
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeExtensions(I)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 699
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 700
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$1100(Lcom/google/api/HttpBody;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$100(Lcom/google/api/HttpBody;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setContentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 498
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$300(Lcom/google/api/HttpBody;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 525
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1}, Lcom/google/api/HttpBody;->access$400(Lcom/google/api/HttpBody;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExtensions(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 602
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    .line 604
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 603
    invoke-static {v0, p1, p2}, Lcom/google/api/HttpBody;->access$600(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExtensions(ILcom/google/protobuf/Any;)Lcom/google/api/HttpBody$Builder;
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/google/api/HttpBody$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/api/HttpBody$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpBody;

    invoke-static {v0, p1, p2}, Lcom/google/api/HttpBody;->access$600(Lcom/google/api/HttpBody;ILcom/google/protobuf/Any;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
