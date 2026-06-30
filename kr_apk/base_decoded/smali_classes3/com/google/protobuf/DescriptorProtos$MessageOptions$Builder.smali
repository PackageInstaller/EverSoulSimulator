.class public final Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$MessageOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$MessageOptions;",
        "Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$MessageOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18757
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$30900()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 18750
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;"
        }
    .end annotation

    .line 19234
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19235
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$32100(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19220
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19221
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    .line 19222
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 19221
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$32000(Lcom/google/protobuf/DescriptorProtos$MessageOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19194
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19195
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$32000(Lcom/google/protobuf/DescriptorProtos$MessageOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19207
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19208
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31900(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19181
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19182
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31900(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 18988
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 18989
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31500(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMapEntry()Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19108
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19109
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31700(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMessageSetWireFormat()Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 18864
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 18865
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31100(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearNoStandardDescriptorAccessor()Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 18924
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 18925
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31300(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19246
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19247
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$32200(Lcom/google/protobuf/DescriptorProtos$MessageOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDeprecated()Z
    .locals 1

    .line 18957
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getDeprecated()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMapEntry()Z
    .locals 1

    .line 19049
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMapEntry()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMessageSetWireFormat()Z
    .locals 1

    .line 18811
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNoStandardDescriptorAccessor()Z
    .locals 1

    .line 18895
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getNoStandardDescriptorAccessor()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 19144
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 19134
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionCount()I

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

    .line 19122
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    .line 19123
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 19122
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasDeprecated()Z
    .locals 1

    .line 18942
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->hasDeprecated()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasMapEntry()Z
    .locals 1

    .line 19020
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->hasMapEntry()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasMessageSetWireFormat()Z
    .locals 1

    .line 18785
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->hasMessageSetWireFormat()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasNoStandardDescriptorAccessor()Z
    .locals 1

    .line 18881
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->hasNoStandardDescriptorAccessor()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19258
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19259
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$32300(Lcom/google/protobuf/DescriptorProtos$MessageOptions;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 18972
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 18973
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31400(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMapEntry(Z)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19078
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19079
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31600(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMessageSetWireFormat(Z)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 18837
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 18838
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31000(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNoStandardDescriptorAccessor(Z)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 18909
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 18910
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31200(Lcom/google/protobuf/DescriptorProtos$MessageOptions;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19168
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19169
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    .line 19170
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 19169
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31800(Lcom/google/protobuf/DescriptorProtos$MessageOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;
    .locals 1

    .line 19155
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->copyOnWrite()V

    .line 19156
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$MessageOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->access$31800(Lcom/google/protobuf/DescriptorProtos$MessageOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
