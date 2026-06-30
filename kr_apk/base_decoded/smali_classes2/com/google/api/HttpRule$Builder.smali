.class public final Lcom/google/api/HttpRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HttpRule.java"

# interfaces
.implements Lcom/google/api/HttpRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/HttpRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/HttpRule;",
        "Lcom/google/api/HttpRule$Builder;",
        ">;",
        "Lcom/google/api/HttpRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1488
    invoke-static {}, Lcom/google/api/HttpRule;->access$000()Lcom/google/api/HttpRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/HttpRule$1;)V
    .locals 0

    .line 1481
    invoke-direct {p0}, Lcom/google/api/HttpRule$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAdditionalBindings(ILcom/google/api/HttpRule$Builder;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2321
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2322
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    .line 2323
    invoke-virtual {p2}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/HttpRule;

    .line 2322
    invoke-static {v0, p1, p2}, Lcom/google/api/HttpRule;->access$3100(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAdditionalBindings(ILcom/google/api/HttpRule;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2291
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2292
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/HttpRule;->access$3100(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAdditionalBindings(Lcom/google/api/HttpRule$Builder;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2306
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2307
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {p1}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$3000(Lcom/google/api/HttpRule;Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAdditionalBindings(Lcom/google/api/HttpRule;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2276
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2277
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$3000(Lcom/google/api/HttpRule;Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllAdditionalBindings(Ljava/lang/Iterable;)Lcom/google/api/HttpRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/HttpRule;",
            ">;)",
            "Lcom/google/api/HttpRule$Builder;"
        }
    .end annotation

    .line 2337
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2338
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$3200(Lcom/google/api/HttpRule;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAdditionalBindings()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2351
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2352
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$3300(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearBody()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2083
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2084
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$2400(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearCustom()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2013
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2014
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$2200(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDelete()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1839
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1840
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$1500(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearGet()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1631
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1632
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$600(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPatch()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1909
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$1800(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPattern()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1498
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1499
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$100(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPost()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1770
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1771
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$1200(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearPut()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1701
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1702
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$900(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearResponseBody()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2172
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2173
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$2700(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSelector()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1557
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1558
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$300(Lcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdditionalBindings(I)Lcom/google/api/HttpRule;
    .locals 1

    .line 2233
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0, p1}, Lcom/google/api/HttpRule;->getAdditionalBindings(I)Lcom/google/api/HttpRule;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdditionalBindingsCount()I
    .locals 1

    .line 2221
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getAdditionalBindingsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAdditionalBindingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation

    .line 2207
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    .line 2208
    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getAdditionalBindingsList()Ljava/util/List;

    move-result-object v0

    .line 2207
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 2032
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2049
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCustom()Lcom/google/api/CustomHttpPattern;
    .locals 1

    .line 1954
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getCustom()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDelete()Ljava/lang/String;
    .locals 1

    .line 1800
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getDelete()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDeleteBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getDeleteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGet()Ljava/lang/String;
    .locals 1

    .line 1589
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getGet()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getGetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getGetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPatch()Ljava/lang/String;
    .locals 1

    .line 1869
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPatch()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPatchBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1882
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPatchBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPatternCase()Lcom/google/api/HttpRule$PatternCase;
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPatternCase()Lcom/google/api/HttpRule$PatternCase;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPost()Ljava/lang/String;
    .locals 1

    .line 1731
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1744
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPut()Ljava/lang/String;
    .locals 1

    .line 1662
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPut()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPutBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPutBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .line 2121
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getResponseBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2138
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getResponseBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 1515
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1529
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasCustom()Z
    .locals 1

    .line 1940
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->hasCustom()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeCustom(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1998
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1999
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2100(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeAdditionalBindings(I)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2365
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2366
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$3400(Lcom/google/api/HttpRule;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAdditionalBindings(ILcom/google/api/HttpRule$Builder;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2261
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2262
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    .line 2263
    invoke-virtual {p2}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/HttpRule;

    .line 2262
    invoke-static {v0, p1, p2}, Lcom/google/api/HttpRule;->access$2900(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAdditionalBindings(ILcom/google/api/HttpRule;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2246
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2247
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/HttpRule;->access$2900(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2066
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2067
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2300(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setBodyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2102
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2103
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2500(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCustom(Lcom/google/api/CustomHttpPattern$Builder;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1983
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1984
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {p1}, Lcom/google/api/CustomHttpPattern$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2000(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCustom(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1967
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1968
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2000(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDelete(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1826
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1827
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1400(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDeleteBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1854
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1855
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1600(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGet(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1617
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1618
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$500(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setGetBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1647
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1648
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$700(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPatch(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1895
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1896
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1700(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPatchBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1923
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1924
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1900(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPost(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1757
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1758
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1100(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPostBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1785
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1786
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1300(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPut(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1688
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1689
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$800(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setPutBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1716
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1717
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1000(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2155
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2156
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2600(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setResponseBodyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2191
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2192
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2800(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1543
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1544
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$200(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1573
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1574
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$400(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
