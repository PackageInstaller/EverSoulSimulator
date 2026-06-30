.class Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer$1;
.super Ljava/lang/Object;
.source "SLSamsungReferrer.java"

# interfaces
.implements Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;->fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;

.field final synthetic val$completionHandler:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer$1;->this$0:Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;

    iput-object p2, p0, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer$1;->val$completionHandler:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onInstallReferrerReceived(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer$1;->val$completionHandler:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "samsung_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer$1;->val$completionHandler:Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;

    invoke-interface {p1, v0}, Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;->onInstallReferrerReceived(Ljava/util/Map;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
