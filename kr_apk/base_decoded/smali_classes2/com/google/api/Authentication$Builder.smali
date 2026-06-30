.class public final Lcom/google/api/Authentication$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Authentication.java"

# interfaces
.implements Lcom/google/api/AuthenticationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Authentication;",
        "Lcom/google/api/Authentication$Builder;",
        ">;",
        "Lcom/google/api/AuthenticationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 426
    invoke-static {}, Lcom/google/api/Authentication;->access$000()Lcom/google/api/Authentication;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Authentication$1;)V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/google/api/Authentication$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllProviders(Ljava/lang/Iterable;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthProvider;",
            ">;)",
            "Lcom/google/api/Authentication$Builder;"
        }
    .end annotation

    .line 713
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$1000(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Authentication$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthenticationRule;",
            ">;)",
            "Lcom/google/api/Authentication$Builder;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 562
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$400(Lcom/google/api/Authentication;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProviders(ILcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 699
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 700
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 701
    invoke-virtual {p2}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthProvider;

    .line 700
    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$900(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProviders(ILcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$900(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProviders(Lcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 686
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {p1}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthProvider;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$800(Lcom/google/api/Authentication;Lcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addProviders(Lcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$800(Lcom/google/api/Authentication;Lcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(ILcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 546
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 547
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 548
    invoke-virtual {p2}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthenticationRule;

    .line 547
    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$300(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(ILcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$300(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(Lcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {p1}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$200(Lcom/google/api/Authentication;Lcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(Lcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$200(Lcom/google/api/Authentication;Lcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearProviders()Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0}, Lcom/google/api/Authentication;->access$1100(Lcom/google/api/Authentication;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRules()Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 575
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0}, Lcom/google/api/Authentication;->access$500(Lcom/google/api/Authentication;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProviders(I)Lcom/google/api/AuthProvider;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0, p1}, Lcom/google/api/Authentication;->getProviders(I)Lcom/google/api/AuthProvider;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getProvidersCount()I
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->getProvidersCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getProvidersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 602
    invoke-virtual {v0}, Lcom/google/api/Authentication;->getProvidersList()Ljava/util/List;

    move-result-object v0

    .line 601
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRules(I)Lcom/google/api/AuthenticationRule;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0, p1}, Lcom/google/api/Authentication;->getRules(I)Lcom/google/api/AuthenticationRule;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesCount()I
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-virtual {v0}, Lcom/google/api/Authentication;->getRulesCount()I

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
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 441
    invoke-virtual {v0}, Lcom/google/api/Authentication;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 440
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeProviders(I)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 737
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 738
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$1200(Lcom/google/api/Authentication;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeRules(I)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1}, Lcom/google/api/Authentication;->access$600(Lcom/google/api/Authentication;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProviders(ILcom/google/api/AuthProvider$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 647
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 648
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 649
    invoke-virtual {p2}, Lcom/google/api/AuthProvider$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthProvider;

    .line 648
    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$700(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setProviders(ILcom/google/api/AuthProvider;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$700(Lcom/google/api/Authentication;ILcom/google/api/AuthProvider;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRules(ILcom/google/api/AuthenticationRule$Builder;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 490
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 491
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    .line 492
    invoke-virtual {p2}, Lcom/google/api/AuthenticationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthenticationRule;

    .line 491
    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$100(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRules(ILcom/google/api/AuthenticationRule;)Lcom/google/api/Authentication$Builder;
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/google/api/Authentication$Builder;->copyOnWrite()V

    .line 477
    iget-object v0, p0, Lcom/google/api/Authentication$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Authentication;

    invoke-static {v0, p1, p2}, Lcom/google/api/Authentication;->access$100(Lcom/google/api/Authentication;ILcom/google/api/AuthenticationRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
