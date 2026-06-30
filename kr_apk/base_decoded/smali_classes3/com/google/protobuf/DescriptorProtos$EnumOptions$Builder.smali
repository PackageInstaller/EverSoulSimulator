.class public final Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$EnumOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/protobuf/DescriptorProtos$EnumOptions;",
        "Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$EnumOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22165
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35300()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 22158
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;"
        }
    .end annotation

    .line 22410
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22411
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$36100(Lcom/google/protobuf/DescriptorProtos$EnumOptions;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22396
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22397
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 22398
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 22397
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$36000(Lcom/google/protobuf/DescriptorProtos$EnumOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22370
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22371
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$36000(Lcom/google/protobuf/DescriptorProtos$EnumOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22383
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22384
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35900(Lcom/google/protobuf/DescriptorProtos$EnumOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addUninterpretedOption(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22357
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22358
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35900(Lcom/google/protobuf/DescriptorProtos$EnumOptions;Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAllowAlias()Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22220
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22221
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35500(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDeprecated()Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22284
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22285
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35700(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUninterpretedOption()Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22422
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22423
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$36200(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowAlias()Z
    .locals 1

    .line 22193
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getAllowAlias()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDeprecated()Z
    .locals 1

    .line 22253
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDeprecated()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 22320
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 22310
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionCount()I

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

    .line 22298
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 22299
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 22298
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasAllowAlias()Z
    .locals 1

    .line 22180
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->hasAllowAlias()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasDeprecated()Z
    .locals 1

    .line 22238
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->hasDeprecated()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22434
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22435
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$36300(Lcom/google/protobuf/DescriptorProtos$EnumOptions;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAllowAlias(Z)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22206
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22207
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35400(Lcom/google/protobuf/DescriptorProtos$EnumOptions;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDeprecated(Z)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22268
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22269
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35600(Lcom/google/protobuf/DescriptorProtos$EnumOptions;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22344
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22345
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 22346
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 22345
    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35800(Lcom/google/protobuf/DescriptorProtos$EnumOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUninterpretedOption(ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;
    .locals 1

    .line 22331
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->copyOnWrite()V

    .line 22332
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->access$35800(Lcom/google/protobuf/DescriptorProtos$EnumOptions;ILcom/google/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
