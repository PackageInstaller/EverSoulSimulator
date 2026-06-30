.class public interface abstract Lcom/google/firebase/perf/v1/ApplicationInfoOrBuilder;
.super Ljava/lang/Object;
.source "ApplicationInfoOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract containsCustomAttributes(Ljava/lang/String;)Z
.end method

.method public abstract getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
.end method

.method public abstract getAppInstanceId()Ljava/lang/String;
.end method

.method public abstract getAppInstanceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getApplicationProcessState()Lcom/google/firebase/perf/v1/ApplicationProcessState;
.end method

.method public abstract getCustomAttributes()Ljava/util/Map;
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

.method public abstract getCustomAttributesCount()I
.end method

.method public abstract getCustomAttributesMap()Ljava/util/Map;
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

.method public abstract getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getGoogleAppId()Ljava/lang/String;
.end method

.method public abstract getGoogleAppIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAndroidAppInfo()Z
.end method

.method public abstract hasAppInstanceId()Z
.end method

.method public abstract hasApplicationProcessState()Z
.end method

.method public abstract hasGoogleAppId()Z
.end method
