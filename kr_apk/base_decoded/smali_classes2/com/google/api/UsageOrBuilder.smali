.class public interface abstract Lcom/google/api/UsageOrBuilder;
.super Ljava/lang/Object;
.source "UsageOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getProducerNotificationChannel()Ljava/lang/String;
.end method

.method public abstract getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRequirements(I)Ljava/lang/String;
.end method

.method public abstract getRequirementsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRequirementsCount()I
.end method

.method public abstract getRequirementsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRules(I)Lcom/google/api/UsageRule;
.end method

.method public abstract getRulesCount()I
.end method

.method public abstract getRulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation
.end method
