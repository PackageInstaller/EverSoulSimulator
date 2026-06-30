.class public interface abstract Lcom/google/api/HttpRuleOrBuilder;
.super Ljava/lang/Object;
.source "HttpRuleOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getAdditionalBindings(I)Lcom/google/api/HttpRule;
.end method

.method public abstract getAdditionalBindingsCount()I
.end method

.method public abstract getAdditionalBindingsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getBodyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCustom()Lcom/google/api/CustomHttpPattern;
.end method

.method public abstract getDelete()Ljava/lang/String;
.end method

.method public abstract getDeleteBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getGet()Ljava/lang/String;
.end method

.method public abstract getGetBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPatch()Ljava/lang/String;
.end method

.method public abstract getPatchBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPatternCase()Lcom/google/api/HttpRule$PatternCase;
.end method

.method public abstract getPost()Ljava/lang/String;
.end method

.method public abstract getPostBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPut()Ljava/lang/String;
.end method

.method public abstract getPutBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getResponseBody()Ljava/lang/String;
.end method

.method public abstract getResponseBodyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSelector()Ljava/lang/String;
.end method

.method public abstract getSelectorBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasCustom()Z
.end method
