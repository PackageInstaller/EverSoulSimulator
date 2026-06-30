.class public interface abstract Lcom/google/api/LogDescriptorOrBuilder;
.super Ljava/lang/Object;
.source "LogDescriptorOrBuilder.java"

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

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method
