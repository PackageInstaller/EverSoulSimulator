.class public abstract Lcom/singular/sdk/internal/ConfigManagerRepo;
.super Ljava/lang/Object;
.source "ConfigManagerRepo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public abstract getConfig(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
.end method

.method public abstract saveConfig(Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
.end method
