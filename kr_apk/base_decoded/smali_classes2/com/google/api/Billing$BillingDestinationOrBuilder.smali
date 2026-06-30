.class public interface abstract Lcom/google/api/Billing$BillingDestinationOrBuilder;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BillingDestinationOrBuilder"
.end annotation


# virtual methods
.method public abstract getMetrics(I)Ljava/lang/String;
.end method

.method public abstract getMetricsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMetricsCount()I
.end method

.method public abstract getMetricsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonitoredResource()Ljava/lang/String;
.end method

.method public abstract getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
.end method
