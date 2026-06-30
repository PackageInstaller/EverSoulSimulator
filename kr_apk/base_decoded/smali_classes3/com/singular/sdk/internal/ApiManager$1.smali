.class Lcom/singular/sdk/internal/ApiManager$1;
.super Ljava/util/HashMap;
.source "ApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ApiManager;->enrichRequestFromSingularInstance(Lcom/singular/sdk/internal/BaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ApiManager;

.field final synthetic val$limitDataSharing:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ApiManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiManager$1;->this$0:Lcom/singular/sdk/internal/ApiManager;

    iput-object p2, p0, Lcom/singular/sdk/internal/ApiManager$1;->val$limitDataSharing:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 999
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "limit_data_sharing"

    invoke-virtual {p0, p2, p1}, Lcom/singular/sdk/internal/ApiManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
