.class public interface abstract Lcom/google/api/ServiceOrBuilder;
.super Ljava/lang/Object;
.source "ServiceOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getApis(I)Lcom/google/protobuf/Api;
.end method

.method public abstract getApisCount()I
.end method

.method public abstract getApisList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthentication()Lcom/google/api/Authentication;
.end method

.method public abstract getBackend()Lcom/google/api/Backend;
.end method

.method public abstract getBilling()Lcom/google/api/Billing;
.end method

.method public abstract getConfigVersion()Lcom/google/protobuf/UInt32Value;
.end method

.method public abstract getContext()Lcom/google/api/Context;
.end method

.method public abstract getControl()Lcom/google/api/Control;
.end method

.method public abstract getDocumentation()Lcom/google/api/Documentation;
.end method

.method public abstract getEndpoints(I)Lcom/google/api/Endpoint;
.end method

.method public abstract getEndpointsCount()I
.end method

.method public abstract getEndpointsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnums(I)Lcom/google/protobuf/Enum;
.end method

.method public abstract getEnumsCount()I
.end method

.method public abstract getEnumsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttp()Lcom/google/api/Http;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLogging()Lcom/google/api/Logging;
.end method

.method public abstract getLogs(I)Lcom/google/api/LogDescriptor;
.end method

.method public abstract getLogsCount()I
.end method

.method public abstract getLogsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetrics(I)Lcom/google/api/MetricDescriptor;
.end method

.method public abstract getMetricsCount()I
.end method

.method public abstract getMetricsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;
.end method

.method public abstract getMonitoredResourcesCount()I
.end method

.method public abstract getMonitoredResourcesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonitoring()Lcom/google/api/Monitoring;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getProducerProjectId()Ljava/lang/String;
.end method

.method public abstract getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getQuota()Lcom/google/api/Quota;
.end method

.method public abstract getSourceInfo()Lcom/google/api/SourceInfo;
.end method

.method public abstract getSystemParameters()Lcom/google/api/SystemParameters;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTypes(I)Lcom/google/protobuf/Type;
.end method

.method public abstract getTypesCount()I
.end method

.method public abstract getTypesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsage()Lcom/google/api/Usage;
.end method

.method public abstract hasAuthentication()Z
.end method

.method public abstract hasBackend()Z
.end method

.method public abstract hasBilling()Z
.end method

.method public abstract hasConfigVersion()Z
.end method

.method public abstract hasContext()Z
.end method

.method public abstract hasControl()Z
.end method

.method public abstract hasDocumentation()Z
.end method

.method public abstract hasHttp()Z
.end method

.method public abstract hasLogging()Z
.end method

.method public abstract hasMonitoring()Z
.end method

.method public abstract hasQuota()Z
.end method

.method public abstract hasSourceInfo()Z
.end method

.method public abstract hasSystemParameters()Z
.end method

.method public abstract hasUsage()Z
.end method
