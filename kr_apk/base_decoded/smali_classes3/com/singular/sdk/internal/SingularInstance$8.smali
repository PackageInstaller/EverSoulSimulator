.class Lcom/singular/sdk/internal/SingularInstance$8;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->fetchMetaInstallReferrer()V
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

    .line 4059
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$8;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onInstallReferrerReceived(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4089
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$8;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p1, v0, Lcom/singular/sdk/internal/SingularInstance;->metaInstallReferrer:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
