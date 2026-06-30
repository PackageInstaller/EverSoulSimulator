.class Lcom/singular/sdk/internal/SingularInstance$9;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->fetchDTInstallReferrer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 0

    .line 4159
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$9;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onInstallReferrerReceived(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "dt_referrer"

    .line 4189
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4199
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$9;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/singular/sdk/internal/SingularInstance;->dtInstallReferrer:Ljava/lang/String;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
