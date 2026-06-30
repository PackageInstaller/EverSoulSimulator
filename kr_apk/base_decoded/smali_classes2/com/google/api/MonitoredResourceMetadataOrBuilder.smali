.class public interface abstract Lcom/google/api/MonitoredResourceMetadataOrBuilder;
.super Ljava/lang/Object;
.source "MonitoredResourceMetadataOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract containsUserLabels(Ljava/lang/String;)Z
.end method

.method public abstract getSystemLabels()Lcom/google/protobuf/Struct;
.end method

.method public abstract getUserLabels()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUserLabelsCount()I
.end method

.method public abstract getUserLabelsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUserLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasSystemLabels()Z
.end method
