.class public interface abstract Lcom/google/cloud/audit/AuditLogOrBuilder;
.super Ljava/lang/Object;
.source "AuditLogOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;
.end method

.method public abstract getAuthorizationInfo(I)Lcom/google/cloud/audit/AuthorizationInfo;
.end method

.method public abstract getAuthorizationInfoCount()I
.end method

.method public abstract getAuthorizationInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodName()Ljava/lang/String;
.end method

.method public abstract getMethodNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNumResponseItems()J
.end method

.method public abstract getRequest()Lcom/google/protobuf/Struct;
.end method

.method public abstract getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;
.end method

.method public abstract getResourceName()Ljava/lang/String;
.end method

.method public abstract getResourceNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getResponse()Lcom/google/protobuf/Struct;
.end method

.method public abstract getServiceData()Lcom/google/protobuf/Any;
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public abstract getServiceNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStatus()Lcom/google/rpc/Status;
.end method

.method public abstract hasAuthenticationInfo()Z
.end method

.method public abstract hasRequest()Z
.end method

.method public abstract hasRequestMetadata()Z
.end method

.method public abstract hasResponse()Z
.end method

.method public abstract hasServiceData()Z
.end method

.method public abstract hasStatus()Z
.end method
