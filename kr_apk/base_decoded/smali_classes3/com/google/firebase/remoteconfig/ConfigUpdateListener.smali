.class public interface abstract Lcom/google/firebase/remoteconfig/ConfigUpdateListener;
.super Ljava/lang/Object;
.source "ConfigUpdateListener.java"


# virtual methods
.method public abstract onError(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .param p1    # Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onUpdate(Lcom/google/firebase/remoteconfig/ConfigUpdate;)V
.end method
