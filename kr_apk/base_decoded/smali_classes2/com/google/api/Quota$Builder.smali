.class public final Lcom/google/api/Quota$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Quota.java"

# interfaces
.implements Lcom/google/api/QuotaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Quota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Quota;",
        "Lcom/google/api/Quota$Builder;",
        ">;",
        "Lcom/google/api/QuotaOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 482
    invoke-static {}, Lcom/google/api/Quota;->access$000()Lcom/google/api/Quota;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Quota$1;)V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/google/api/Quota$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllLimits(Ljava/lang/Iterable;)Lcom/google/api/Quota$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/QuotaLimit;",
            ">;)",
            "Lcom/google/api/Quota$Builder;"
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 608
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$400(Lcom/google/api/Quota;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllMetricRules(Ljava/lang/Iterable;)Lcom/google/api/Quota$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricRule;",
            ">;)",
            "Lcom/google/api/Quota$Builder;"
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$1000(Lcom/google/api/Quota;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLimits(ILcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 595
    invoke-virtual {p2}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/QuotaLimit;

    .line 594
    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$300(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLimits(ILcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 568
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$300(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLimits(Lcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 581
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {p1}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/QuotaLimit;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$200(Lcom/google/api/Quota;Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLimits(Lcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$200(Lcom/google/api/Quota;Lcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMetricRules(ILcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 752
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 753
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 754
    invoke-virtual {p2}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/MetricRule;

    .line 753
    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$900(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMetricRules(ILcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 725
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$900(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMetricRules(Lcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {p1}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricRule;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$800(Lcom/google/api/Quota;Lcom/google/api/MetricRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addMetricRules(Lcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 710
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 711
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$800(Lcom/google/api/Quota;Lcom/google/api/MetricRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLimits()Lcom/google/api/Quota$Builder;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 620
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0}, Lcom/google/api/Quota;->access$500(Lcom/google/api/Quota;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMetricRules()Lcom/google/api/Quota$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 781
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0}, Lcom/google/api/Quota;->access$1100(Lcom/google/api/Quota;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLimits(I)Lcom/google/api/QuotaLimit;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0, p1}, Lcom/google/api/Quota;->getLimits(I)Lcom/google/api/QuotaLimit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLimitsCount()I
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0}, Lcom/google/api/Quota;->getLimitsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLimitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/QuotaLimit;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 496
    invoke-virtual {v0}, Lcom/google/api/Quota;->getLimitsList()Ljava/util/List;

    move-result-object v0

    .line 495
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricRules(I)Lcom/google/api/MetricRule;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0, p1}, Lcom/google/api/Quota;->getMetricRules(I)Lcom/google/api/MetricRule;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricRulesCount()I
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-virtual {v0}, Lcom/google/api/Quota;->getMetricRulesCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricRule;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 647
    invoke-virtual {v0}, Lcom/google/api/Quota;->getMetricRulesList()Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeLimits(I)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 632
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$600(Lcom/google/api/Quota;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeMetricRules(I)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 793
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1}, Lcom/google/api/Quota;->access$1200(Lcom/google/api/Quota;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLimits(ILcom/google/api/QuotaLimit$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 542
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 543
    invoke-virtual {p2}, Lcom/google/api/QuotaLimit$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/QuotaLimit;

    .line 542
    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$100(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLimits(ILcom/google/api/QuotaLimit;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$100(Lcom/google/api/Quota;ILcom/google/api/QuotaLimit;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetricRules(ILcom/google/api/MetricRule$Builder;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    .line 698
    invoke-virtual {p2}, Lcom/google/api/MetricRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/MetricRule;

    .line 697
    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$700(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetricRules(ILcom/google/api/MetricRule;)Lcom/google/api/Quota$Builder;
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/google/api/Quota$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Lcom/google/api/Quota$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Quota;

    invoke-static {v0, p1, p2}, Lcom/google/api/Quota;->access$700(Lcom/google/api/Quota;ILcom/google/api/MetricRule;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
