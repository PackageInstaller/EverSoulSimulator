.class public final Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions;",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24357
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$38500()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 24350
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;"
        }
    .end annotation

    .line 24582
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24583
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39300(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24568
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24569
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 24570
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 24569
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39200(Lcom/google/protobuf/DescriptorProtos$MethodOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24542
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24543
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39200(Lcom/google/protobuf/DescriptorProtos$MethodOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24555
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24556
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39100(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24529
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24530
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39100(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24420
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24421
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$38700(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearIdempotencyLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24456
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24457
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$38900(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24594
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24595
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39400(Lcom/google/protobuf/DescriptorProtos$MethodOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDeprecated()Z
    .locals 1

    .line 24389
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDeprecated()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIdempotencyLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .locals 1

    .line 24439
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getIdempotencyLevel()Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 24492
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 24482
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 24470
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 24471
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 24470
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasDeprecated()Z
    .locals 1

    .line 24374
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasDeprecated()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasIdempotencyLevel()Z
    .locals 1

    .line 24431
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->hasIdempotencyLevel()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24606
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24607
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39500(Lcom/google/protobuf/DescriptorProtos$MethodOptions;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24404
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24405
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$38600(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setIdempotencyLevel(Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24447
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24448
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$38800(Lcom/google/protobuf/DescriptorProtos$MethodOptions;Lcom/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24516
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24517
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    .line 24518
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 24517
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39000(Lcom/google/protobuf/DescriptorProtos$MethodOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 24503
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 24504
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->access$39000(Lcom/google/protobuf/DescriptorProtos$MethodOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
