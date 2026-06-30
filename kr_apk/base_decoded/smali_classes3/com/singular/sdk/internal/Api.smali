.class public interface abstract Lcom/singular/sdk/internal/Api;
.super Ljava/lang/Object;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/Api$OnApiCallback;
    }
.end annotation


# virtual methods
.method public abstract getOnApiCallback()Lcom/singular/sdk/internal/Api$OnApiCallback;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract makeRequest(Lcom/singular/sdk/internal/SingularInstance;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toJsonAsString()Ljava/lang/String;
.end method
