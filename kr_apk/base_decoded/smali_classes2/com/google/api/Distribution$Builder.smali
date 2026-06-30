.class public final Lcom/google/api/Distribution$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/DistributionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution;",
        "Lcom/google/api/Distribution$Builder;",
        ">;",
        "Lcom/google/api/DistributionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4169
    invoke-static {}, Lcom/google/api/Distribution;->access$5300()Lcom/google/api/Distribution;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0

    .line 4162
    invoke-direct {p0}, Lcom/google/api/Distribution$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllBucketCounts(Ljava/lang/Iterable;)Lcom/google/api/Distribution$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/Distribution$Builder;"
        }
    .end annotation

    .line 4622
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4623
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6800(Lcom/google/api/Distribution;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addAllExemplars(Ljava/lang/Iterable;)Lcom/google/api/Distribution$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;)",
            "Lcom/google/api/Distribution$Builder;"
        }
    .end annotation

    .line 4773
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4774
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7300(Lcom/google/api/Distribution;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addBucketCounts(J)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4595
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4596
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$6700(Lcom/google/api/Distribution;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addExemplars(ILcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4759
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4760
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4761
    invoke-virtual {p2}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Distribution$Exemplar;

    .line 4760
    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addExemplars(ILcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4733
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4734
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7200(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addExemplars(Lcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4746
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4747
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Exemplar;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addExemplars(Lcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4720
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4721
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Exemplar;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearBucketCounts()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4647
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4648
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6900(Lcom/google/api/Distribution;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearBucketOptions()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4466
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4467
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6500(Lcom/google/api/Distribution;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearCount()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4214
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4215
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5500(Lcom/google/api/Distribution;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearExemplars()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4785
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4786
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$7400(Lcom/google/api/Distribution;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMean()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4257
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4258
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5700(Lcom/google/api/Distribution;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearRange()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4389
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4390
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$6200(Lcom/google/api/Distribution;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSumOfSquaredDeviation()Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4312
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4313
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0}, Lcom/google/api/Distribution;->access$5900(Lcom/google/api/Distribution;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBucketCounts(I)J
    .locals 2

    .line 4544
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution;->getBucketCounts(I)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBucketCountsCount()I
    .locals 1

    .line 4519
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketCountsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBucketCountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4494
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4495
    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketCountsList()Ljava/util/List;

    move-result-object v0

    .line 4494
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getBucketOptions()Lcom/google/api/Distribution$BucketOptions;
    .locals 1

    .line 4416
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getBucketOptions()Lcom/google/api/Distribution$BucketOptions;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getCount()J
    .locals 2

    .line 4185
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getCount()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExemplars(I)Lcom/google/api/Distribution$Exemplar;
    .locals 1

    .line 4683
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution;->getExemplars(I)Lcom/google/api/Distribution$Exemplar;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getExemplarsCount()I
    .locals 1

    .line 4673
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getExemplarsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getExemplarsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Distribution$Exemplar;",
            ">;"
        }
    .end annotation

    .line 4661
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4662
    invoke-virtual {v0}, Lcom/google/api/Distribution;->getExemplarsList()Ljava/util/List;

    move-result-object v0

    .line 4661
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMean()D
    .locals 2

    .line 4230
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getMean()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRange()Lcom/google/api/Distribution$Range;
    .locals 1

    .line 4339
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getRange()Lcom/google/api/Distribution$Range;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSumOfSquaredDeviation()D
    .locals 2

    .line 4277
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->getSumOfSquaredDeviation()D

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasBucketOptions()Z
    .locals 1

    .line 4404
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->hasBucketOptions()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasRange()Z
    .locals 1

    .line 4327
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {v0}, Lcom/google/api/Distribution;->hasRange()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeBucketOptions(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4454
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4455
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6400(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeRange(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4377
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4378
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6100(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeExemplars(I)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4797
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4798
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$7500(Lcom/google/api/Distribution;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setBucketCounts(IJ)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4569
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4570
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2, p3}, Lcom/google/api/Distribution;->access$6600(Lcom/google/api/Distribution;IJ)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setBucketOptions(Lcom/google/api/Distribution$BucketOptions$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4441
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4442
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$BucketOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$BucketOptions;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6300(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setBucketOptions(Lcom/google/api/Distribution$BucketOptions;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4427
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4428
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6300(Lcom/google/api/Distribution;Lcom/google/api/Distribution$BucketOptions;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setCount(J)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4199
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4200
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5400(Lcom/google/api/Distribution;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExemplars(ILcom/google/api/Distribution$Exemplar$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4707
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4708
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    .line 4709
    invoke-virtual {p2}, Lcom/google/api/Distribution$Exemplar$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Distribution$Exemplar;

    .line 4708
    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7000(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setExemplars(ILcom/google/api/Distribution$Exemplar;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4694
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4695
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$7000(Lcom/google/api/Distribution;ILcom/google/api/Distribution$Exemplar;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMean(D)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4243
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4244
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5600(Lcom/google/api/Distribution;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRange(Lcom/google/api/Distribution$Range$Builder;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4364
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4365
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-virtual {p1}, Lcom/google/api/Distribution$Range$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Distribution$Range;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6000(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setRange(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4350
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4351
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1}, Lcom/google/api/Distribution;->access$6000(Lcom/google/api/Distribution;Lcom/google/api/Distribution$Range;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSumOfSquaredDeviation(D)Lcom/google/api/Distribution$Builder;
    .locals 1

    .line 4294
    invoke-virtual {p0}, Lcom/google/api/Distribution$Builder;->copyOnWrite()V

    .line 4295
    iget-object v0, p0, Lcom/google/api/Distribution$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution;->access$5800(Lcom/google/api/Distribution;D)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
