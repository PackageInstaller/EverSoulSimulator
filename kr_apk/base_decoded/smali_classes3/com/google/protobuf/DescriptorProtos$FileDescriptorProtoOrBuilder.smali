.class public interface abstract Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileDescriptorProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getDependency(I)Ljava/lang/String;
.end method

.method public abstract getDependencyBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDependencyCount()I
.end method

.method public abstract getDependencyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
.end method

.method public abstract getEnumTypeCount()I
.end method

.method public abstract getEnumTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;
.end method

.method public abstract getExtensionCount()I
.end method

.method public abstract getExtensionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
.end method

.method public abstract getMessageTypeCount()I
.end method

.method public abstract getMessageTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;
.end method

.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getPackageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPublicDependency(I)I
.end method

.method public abstract getPublicDependencyCount()I
.end method

.method public abstract getPublicDependencyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
.end method

.method public abstract getServiceCount()I
.end method

.method public abstract getServiceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;
.end method

.method public abstract getSyntax()Ljava/lang/String;
.end method

.method public abstract getSyntaxBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWeakDependency(I)I
.end method

.method public abstract getWeakDependencyCount()I
.end method

.method public abstract getWeakDependencyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasOptions()Z
.end method

.method public abstract hasPackage()Z
.end method

.method public abstract hasSourceCodeInfo()Z
.end method

.method public abstract hasSyntax()Z
.end method
