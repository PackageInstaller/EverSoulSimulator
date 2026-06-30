.class public interface abstract Lcom/google/rpc/context/AttributeContext$AuthOrBuilder;
.super Ljava/lang/Object;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccessLevels(I)Ljava/lang/String;
.end method

.method public abstract getAccessLevelsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAccessLevelsCount()I
.end method

.method public abstract getAccessLevelsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAudiences(I)Ljava/lang/String;
.end method

.method public abstract getAudiencesBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAudiencesCount()I
.end method

.method public abstract getAudiencesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClaims()Lcom/google/protobuf/Struct;
.end method

.method public abstract getPresenter()Ljava/lang/String;
.end method

.method public abstract getPresenterBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPrincipal()Ljava/lang/String;
.end method

.method public abstract getPrincipalBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasClaims()Z
.end method
