.class Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$2;
.super Ljava/lang/Object;
.source "ApiStartSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->handleDDL(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

.field final synthetic val$ddlHandler:Lcom/singular/sdk/SingularConfig$DDLHandler;

.field final synthetic val$ddlUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;Lcom/singular/sdk/SingularConfig$DDLHandler;Ljava/lang/String;)V
    .locals 0

    .line 2239
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$2;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iput-object p2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$2;->val$ddlHandler:Lcom/singular/sdk/SingularConfig$DDLHandler;

    iput-object p3, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$2;->val$ddlUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2269
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$2;->val$ddlHandler:Lcom/singular/sdk/SingularConfig$DDLHandler;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig$DDLHandler;->handler:Lcom/singular/sdk/DeferredDeepLinkHandler;

    iget-object v1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$2;->val$ddlUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/singular/sdk/DeferredDeepLinkHandler;->handleLink(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
