.class public final Lcom/google/api/SystemParameters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SystemParameters.java"

# interfaces
.implements Lcom/google/api/SystemParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SystemParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SystemParameters;",
        "Lcom/google/api/SystemParameters$Builder;",
        ">;",
        "Lcom/google/api/SystemParametersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 493
    invoke-static {}, Lcom/google/api/SystemParameters;->access$000()Lcom/google/api/SystemParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/SystemParameters$1;)V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/google/api/SystemParameters$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/SystemParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/SystemParameterRule;",
            ">;)",
            "Lcom/google/api/SystemParameters$Builder;"
        }
    .end annotation

    .line 828
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$400(Lcom/google/api/SystemParameters;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(ILcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 793
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 795
    invoke-virtual {p2}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/SystemParameterRule;

    .line 794
    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$300(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(ILcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$300(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(Lcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 760
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {p1}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$200(Lcom/google/api/SystemParameters;Lcom/google/api/SystemParameterRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addRules(Lcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$200(Lcom/google/api/SystemParameters;Lcom/google/api/SystemParameterRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRules()Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 861
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 862
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0}, Lcom/google/api/SystemParameters;->access$500(Lcom/google/api/SystemParameters;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRules(I)Lcom/google/api/SystemParameterRule;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {v0, p1}, Lcom/google/api/SystemParameters;->getRules(I)Lcom/google/api/SystemParameterRule;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getRulesCount()I
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->getRulesCount()I

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
            "Lcom/google/api/SystemParameterRule;",
            ">;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 528
    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 527
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeRules(I)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$600(Lcom/google/api/SystemParameters;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRules(ILcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 658
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 659
    invoke-virtual {p2}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/SystemParameterRule;

    .line 658
    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$100(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRules(ILcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 623
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 624
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$100(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
