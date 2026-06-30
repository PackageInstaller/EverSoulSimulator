.class public interface abstract Lcom/google/api/MetricDescriptorOrBuilder;
.super Ljava/lang/Object;
.source "MetricDescriptorOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDisplayNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLabels(I)Lcom/google/api/LabelDescriptor;
.end method

.method public abstract getLabelsCount()I
.end method

.method public abstract getLabelsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLaunchStage()Lcom/google/api/LaunchStage;
.end method

.method public abstract getLaunchStageValue()I
.end method

.method public abstract getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;
.end method

.method public abstract getMetricKind()Lcom/google/api/MetricDescriptor$MetricKind;
.end method

.method public abstract getMetricKindValue()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getTypeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUnit()Ljava/lang/String;
.end method

.method public abstract getUnitBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getValueType()Lcom/google/api/MetricDescriptor$ValueType;
.end method

.method public abstract getValueTypeValue()I
.end method

.method public abstract hasMetadata()Z
.end method
