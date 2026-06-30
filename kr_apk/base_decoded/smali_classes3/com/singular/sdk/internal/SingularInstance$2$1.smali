.class Lcom/singular/sdk/internal/SingularInstance$2$1;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Lcom/singular/sdk/internal/BatchManager$NetworkSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance$2;->onInitDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/singular/sdk/internal/SingularInstance$2;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance$2;)V
    .locals 0

    .line 2069
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$2$1;->this$1:Lcom/singular/sdk/internal/SingularInstance$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public sendApi(Lcom/singular/sdk/internal/BaseApi;)Z
    .locals 1

    .line 2109
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$2$1;->this$1:Lcom/singular/sdk/internal/SingularInstance$2;

    iget-object v0, v0, Lcom/singular/sdk/internal/SingularInstance$2;->val$self:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/BaseApi;->makeRequest(Lcom/singular/sdk/internal/SingularInstance;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2129
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->access$200()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    nop

    .array-data 1
    .end array-data
.end method
