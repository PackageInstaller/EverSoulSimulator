.class public interface abstract Lcom/google/api/AuthProviderOrBuilder;
.super Ljava/lang/Object;
.source "AuthProviderOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getAudiences()Ljava/lang/String;
.end method

.method public abstract getAudiencesBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAuthorizationUrl()Ljava/lang/String;
.end method

.method public abstract getAuthorizationUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getIssuer()Ljava/lang/String;
.end method

.method public abstract getIssuerBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getJwksUri()Ljava/lang/String;
.end method

.method public abstract getJwksUriBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getJwtLocations(I)Lcom/google/api/JwtLocation;
.end method

.method public abstract getJwtLocationsCount()I
.end method

.method public abstract getJwtLocationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/JwtLocation;",
            ">;"
        }
    .end annotation
.end method
