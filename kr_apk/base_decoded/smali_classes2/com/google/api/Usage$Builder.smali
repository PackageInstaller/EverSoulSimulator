.class public final Lcom/google/api/Usage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Usage.java"

# interfaces
.implements Lcom/google/api/UsageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Usage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Usage;",
        "Lcom/google/api/Usage$Builder;",
        ">;",
        "Lcom/google/api/UsageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 511
    invoke-static {}, Lcom/google/api/Usage;->access$000()Lcom/google/api/Usage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Usage$1;)V
    .locals 0

    .line 504
    invoke-direct {p0}, Lcom/google/api/Usage$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllRequirements(Ljava/lang/Iterable;)Lcom/google/api/Usage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Usage$Builder;"
        }
    .end annotation

    .line 624
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$300(Lcom/google/api/Usage;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Usage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/UsageRule;",
            ">;)",
            "Lcom/google/api/Usage$Builder;"
        }
    .end annotation

    .line 792
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$900(Lcom/google/api/Usage;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRequirements(Ljava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 608
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$200(Lcom/google/api/Usage;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRequirementsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$500(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(ILcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 779
    invoke-virtual {p2}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/UsageRule;

    .line 778
    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(ILcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(Lcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 763
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {p1}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/UsageRule;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(Lcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearProducerNotificationChannel()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 896
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 897
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$1300(Lcom/google/api/Usage;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRequirements()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$400(Lcom/google/api/Usage;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRules()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$1000(Lcom/google/api/Usage;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerNotificationChannel()Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequirements(I)Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRequirements(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequirementsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRequirementsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequirementsCount()I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getRequirementsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequirementsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 529
    invoke-virtual {v0}, Lcom/google/api/Usage;->getRequirementsList()Ljava/util/List;

    move-result-object v0

    .line 528
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRules(I)Lcom/google/api/UsageRule;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRules(I)Lcom/google/api/UsageRule;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesCount()I
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getRulesCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 672
    invoke-virtual {v0}, Lcom/google/api/Usage;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 671
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeRules(I)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 818
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 819
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1100(Lcom/google/api/Usage;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProducerNotificationChannel(Ljava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1200(Lcom/google/api/Usage;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProducerNotificationChannelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1400(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRequirements(ILjava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 591
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$100(Lcom/google/api/Usage;ILjava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRules(ILcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 721
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 723
    invoke-virtual {p2}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/UsageRule;

    .line 722
    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRules(ILcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 707
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 708
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
