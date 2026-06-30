.class public interface abstract Lcom/google/api/MonitoringOrBuilder;
.super Ljava/lang/Object;
.source "MonitoringOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getConsumerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
.end method

.method public abstract getConsumerDestinationsCount()I
.end method

.method public abstract getConsumerDestinationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProducerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
.end method

.method public abstract getProducerDestinationsCount()I
.end method

.method public abstract getProducerDestinationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation
.end method
