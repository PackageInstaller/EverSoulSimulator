.class Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;
.super Ljava/lang/Object;
.source "ApiStartSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->performLicenseCheck(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$singular:Lcom/singular/sdk/internal/SingularInstance;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;)V
    .locals 0

    .line 1489
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iput-object p2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$singular:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p3, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1519
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->this$0:Lcom/singular/sdk/internal/ApiStartSession;

    invoke-static {v0}, Lcom/singular/sdk/internal/ApiStartSession;->access$108(Lcom/singular/sdk/internal/ApiStartSession;)I

    .line 1529
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;

    invoke-direct {v1, p0}, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;-><init>(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;)V

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/LicenseApiHelper;->checkLicense(Landroid/content/Context;Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;)V

    return-void

    .array-data 1
    .end array-data
.end method
