.class public final Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetricDescriptor.java"

# interfaces
.implements Lcom/google/api/MetricDescriptor$MetricDescriptorMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;",
        "Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;",
        ">;",
        "Lcom/google/api/MetricDescriptor$MetricDescriptorMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 783
    invoke-static {}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$000()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/api/MetricDescriptor$1;)V
    .locals 0

    .line 776
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearIngestDelay()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1

    .line 1025
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 1026
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$900(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearLaunchStage()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$300(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearSamplePeriod()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1

    .line 942
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 943
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$600(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getIngestDelay()Lcom/google/protobuf/Duration;
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->getIngestDelay()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLaunchStage()Lcom/google/api/LaunchStage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->getLaunchStage()Lcom/google/api/LaunchStage;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLaunchStageValue()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->getLaunchStageValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSamplePeriod()Lcom/google/protobuf/Duration;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->getSamplePeriod()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasIngestDelay()Z
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->hasIngestDelay()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hasSamplePeriod()Z
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->hasSamplePeriod()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeIngestDelay(Lcom/google/protobuf/Duration;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1

    .line 1012
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 1013
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$800(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public mergeSamplePeriod(Lcom/google/protobuf/Duration;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1

    .line 928
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 929
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$500(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setIngestDelay(Lcom/google/protobuf/Duration$Builder;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1

    .line 998
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 999
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Duration;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$700(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setIngestDelay(Lcom/google/protobuf/Duration;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1

    .line 983
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 984
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$700(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLaunchStage(Lcom/google/api/LaunchStage;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$200(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;Lcom/google/api/LaunchStage;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLaunchStageValue(I)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 811
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 812
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$100(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;I)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSamplePeriod(Lcom/google/protobuf/Duration$Builder;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1

    .line 913
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 914
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-virtual {p1}, Lcom/google/protobuf/Duration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Duration;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$400(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setSamplePeriod(Lcom/google/protobuf/Duration;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->copyOnWrite()V

    .line 898
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->access$400(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;Lcom/google/protobuf/Duration;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
