.class public final Lcom/google/api/AuthenticationRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuthenticationRule.java"

# interfaces
.implements Lcom/google/api/AuthenticationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/AuthenticationRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/AuthenticationRule;",
        "Lcom/google/api/AuthenticationRule$Builder;",
        ">;",
        "Lcom/google/api/AuthenticationRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 443
    invoke-static {}, Lcom/google/api/AuthenticationRule;->access$000()Lcom/google/api/AuthenticationRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/AuthenticationRule$1;)V
    .locals 0

    .line 436
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllRequirements(Ljava/lang/Iterable;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthRequirement;",
            ">;)",
            "Lcom/google/api/AuthenticationRule$Builder;"
        }
    .end annotation

    .line 753
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 754
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$1200(Lcom/google/api/AuthenticationRule;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRequirements(ILcom/google/api/AuthRequirement$Builder;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 739
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 740
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    .line 741
    invoke-virtual {p2}, Lcom/google/api/AuthRequirement$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthRequirement;

    .line 740
    invoke-static {v0, p1, p2}, Lcom/google/api/AuthenticationRule;->access$1100(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRequirements(ILcom/google/api/AuthRequirement;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 713
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/AuthenticationRule;->access$1100(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRequirements(Lcom/google/api/AuthRequirement$Builder;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 726
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 727
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {p1}, Lcom/google/api/AuthRequirement$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthRequirement;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$1000(Lcom/google/api/AuthenticationRule;Lcom/google/api/AuthRequirement;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRequirements(Lcom/google/api/AuthRequirement;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$1000(Lcom/google/api/AuthenticationRule;Lcom/google/api/AuthRequirement;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearAllowWithoutCredential()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0}, Lcom/google/api/AuthenticationRule;->access$800(Lcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearOauth()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0}, Lcom/google/api/AuthenticationRule;->access$600(Lcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRequirements()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 766
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0}, Lcom/google/api/AuthenticationRule;->access$1300(Lcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSelector()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0}, Lcom/google/api/AuthenticationRule;->access$200(Lcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getAllowWithoutCredential()Z
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getAllowWithoutCredential()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getOauth()Lcom/google/api/OAuthRequirements;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getOauth()Lcom/google/api/OAuthRequirements;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequirements(I)Lcom/google/api/AuthRequirement;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0, p1}, Lcom/google/api/AuthenticationRule;->getRequirements(I)Lcom/google/api/AuthRequirement;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRequirementsCount()I
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getRequirementsCount()I

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
            "Lcom/google/api/AuthRequirement;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    .line 642
    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getRequirementsList()Ljava/util/List;

    move-result-object v0

    .line 641
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasOauth()Z
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->hasOauth()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeOauth(Lcom/google/api/OAuthRequirements;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$500(Lcom/google/api/AuthenticationRule;Lcom/google/api/OAuthRequirements;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeRequirements(I)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$1400(Lcom/google/api/AuthenticationRule;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setAllowWithoutCredential(Z)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$700(Lcom/google/api/AuthenticationRule;Z)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOauth(Lcom/google/api/OAuthRequirements$Builder;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 565
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {p1}, Lcom/google/api/OAuthRequirements$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$400(Lcom/google/api/AuthenticationRule;Lcom/google/api/OAuthRequirements;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setOauth(Lcom/google/api/OAuthRequirements;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 552
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$400(Lcom/google/api/AuthenticationRule;Lcom/google/api/OAuthRequirements;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRequirements(ILcom/google/api/AuthRequirement$Builder;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 688
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    .line 689
    invoke-virtual {p2}, Lcom/google/api/AuthRequirement$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthRequirement;

    .line 688
    invoke-static {v0, p1, p2}, Lcom/google/api/AuthenticationRule;->access$900(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRequirements(ILcom/google/api/AuthRequirement;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/AuthenticationRule;->access$900(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 487
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$100(Lcom/google/api/AuthenticationRule;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$300(Lcom/google/api/AuthenticationRule;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
