.class public interface abstract Lcom/google/api/AuthenticationOrBuilder;
.super Ljava/lang/Object;
.source "AuthenticationOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getProviders(I)Lcom/google/api/AuthProvider;
.end method

.method public abstract getProvidersCount()I
.end method

.method public abstract getProvidersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRules(I)Lcom/google/api/AuthenticationRule;
.end method

.method public abstract getRulesCount()I
.end method

.method public abstract getRulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthenticationRule;",
            ">;"
        }
    .end annotation
.end method
