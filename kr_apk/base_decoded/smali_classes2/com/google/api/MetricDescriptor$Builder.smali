.class public final Lcom/google/api/MetricDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetricDescriptor.java"

# interfaces
.implements Lcom/google/api/MetricDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MetricDescriptor;",
        "Lcom/google/api/MetricDescriptor$Builder;",
        ">;",
        "Lcom/google/api/MetricDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2444
    invoke-static {}, Lcom/google/api/MetricDescriptor;->access$1100()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/MetricDescriptor$1;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public addAllLabels(Ljava/lang/Iterable;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)",
            "Lcom/google/api/MetricDescriptor$Builder;"
        }
    .end annotation

    .line 2787
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2788
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2100(Lcom/google/api/MetricDescriptor;Ljava/lang/Iterable;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2768
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2769
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    .line 2770
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 2769
    invoke-static {v0, p1, p2}, Lcom/google/api/MetricDescriptor;->access$2000(Lcom/google/api/MetricDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2732
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2733
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MetricDescriptor;->access$2000(Lcom/google/api/MetricDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2750
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2751
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {p1}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1900(Lcom/google/api/MetricDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2714
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2715
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1900(Lcom/google/api/MetricDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDescription()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3491
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3492
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$3400(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearDisplayName()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3572
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3573
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$3700(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLabels()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2804
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2805
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$2200(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLaunchStage()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3727
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3728
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$4400(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMetadata()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3661
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3662
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$4100(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearMetricKind()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2892
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2893
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$2600(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearName()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2497
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2498
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$1300(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearType()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2590
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2591
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$1600(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearUnit()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3341
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3342
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$3100(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearValueType()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2963
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2964
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$2900(Lcom/google/api/MetricDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 3452
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3465
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 3524
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3540
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1

    .line 2662
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/MetricDescriptor;->getLabels(I)Lcom/google/api/LabelDescriptor;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsCount()I
    .locals 1

    .line 2647
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getLabelsCount()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 2630
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    .line 2631
    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v0

    .line 2630
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLaunchStage()Lcom/google/api/LaunchStage;
    .locals 1

    .line 3702
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getLaunchStage()Lcom/google/api/LaunchStage;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLaunchStageValue()I
    .locals 1

    .line 3676
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getLaunchStageValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;
    .locals 1

    .line 3615
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricKind()Lcom/google/api/MetricDescriptor$MetricKind;
    .locals 1

    .line 2865
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getMetricKind()Lcom/google/api/MetricDescriptor$MetricKind;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMetricKindValue()I
    .locals 1

    .line 2837
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getMetricKindValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2458
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2471
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 2533
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2552
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 3059
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getUnit()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUnitBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3153
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getUnitBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValueType()Lcom/google/api/MetricDescriptor$ValueType;
    .locals 1

    .line 2936
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getValueType()Lcom/google/api/MetricDescriptor$ValueType;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValueTypeValue()I
    .locals 1

    .line 2908
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getValueTypeValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasMetadata()Z
    .locals 1

    .line 3604
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->hasMetadata()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeMetadata(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3650
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3651
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$4000(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public removeLabels(I)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2821
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2822
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2300(Lcom/google/api/MetricDescriptor;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3478
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3479
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3300(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3506
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3507
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3500(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3556
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3557
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3600(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3590
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3591
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3800(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2696
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2697
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    .line 2698
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 2697
    invoke-static {v0, p1, p2}, Lcom/google/api/MetricDescriptor;->access$1800(Lcom/google/api/MetricDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2678
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2679
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MetricDescriptor;->access$1800(Lcom/google/api/MetricDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLaunchStage(Lcom/google/api/LaunchStage;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3714
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3715
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$4300(Lcom/google/api/MetricDescriptor;Lcom/google/api/LaunchStage;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLaunchStageValue(I)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3688
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3689
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$4200(Lcom/google/api/MetricDescriptor;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetadata(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3638
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3639
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3900(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetadata(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3625
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3626
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3900(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetricKind(Lcom/google/api/MetricDescriptor$MetricKind;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2878
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2879
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2500(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricKind;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setMetricKindValue(I)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2850
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2851
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2400(Lcom/google/api/MetricDescriptor;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2484
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2485
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1200(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2512
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2513
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1400(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2571
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2572
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1500(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2611
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2612
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1700(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUnit(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3247
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3248
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3000(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setUnitBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3437
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3438
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3200(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setValueType(Lcom/google/api/MetricDescriptor$ValueType;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2949
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2950
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2800(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$ValueType;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setValueTypeValue(I)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2921
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2922
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2700(Lcom/google/api/MetricDescriptor;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
