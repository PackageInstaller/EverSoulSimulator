.class public interface abstract Lcom/google/api/MetricDescriptor$MetricDescriptorMetadataOrBuilder;
.super Ljava/lang/Object;
.source "MetricDescriptor.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetricDescriptorMetadataOrBuilder"
.end annotation


# virtual methods
.method public abstract getIngestDelay()Lcom/google/protobuf/Duration;
.end method

.method public abstract getLaunchStage()Lcom/google/api/LaunchStage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLaunchStageValue()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSamplePeriod()Lcom/google/protobuf/Duration;
.end method

.method public abstract hasIngestDelay()Z
.end method

.method public abstract hasSamplePeriod()Z
.end method
