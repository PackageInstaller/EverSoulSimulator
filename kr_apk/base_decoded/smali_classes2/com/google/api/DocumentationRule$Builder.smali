.class public final Lcom/google/api/DocumentationRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentationRule.java"

# interfaces
.implements Lcom/google/api/DocumentationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/DocumentationRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/DocumentationRule;",
        "Lcom/google/api/DocumentationRule$Builder;",
        ">;",
        "Lcom/google/api/DocumentationRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 349
    invoke-static {}, Lcom/google/api/DocumentationRule;->access$000()Lcom/google/api/DocumentationRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/DocumentationRule$1;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/google/api/DocumentationRule$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDeprecationDescription()Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 570
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0}, Lcom/google/api/DocumentationRule;->access$800(Lcom/google/api/DocumentationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDescription()Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 497
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0}, Lcom/google/api/DocumentationRule;->access$500(Lcom/google/api/DocumentationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSelector()Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 423
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0}, Lcom/google/api/DocumentationRule;->access$200(Lcom/google/api/DocumentationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDeprecationDescription()Ljava/lang/String;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDeprecationDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDeprecationDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDeprecationDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDeprecationDescription(Ljava/lang/String;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 556
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$700(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDeprecationDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$900(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 484
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$400(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 512
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$600(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 404
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 405
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$100(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/google/api/DocumentationRule$Builder;->copyOnWrite()V

    .line 443
    iget-object v0, p0, Lcom/google/api/DocumentationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/DocumentationRule;->access$300(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
