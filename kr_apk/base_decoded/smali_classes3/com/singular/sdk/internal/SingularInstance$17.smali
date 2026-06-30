.class Lcom/singular/sdk/internal/SingularInstance$17;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->handleDeviceAttributionData(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$deviceAttributionData:Ljava/util/Map;

.field final synthetic val$handler:Lcom/singular/sdk/SingularDeviceAttributionHandler;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/SingularDeviceAttributionHandler;Ljava/util/Map;)V
    .locals 0

    .line 7999
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$17;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$17;->val$handler:Lcom/singular/sdk/SingularDeviceAttributionHandler;

    iput-object p3, p0, Lcom/singular/sdk/internal/SingularInstance$17;->val$deviceAttributionData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8029
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$17;->val$handler:Lcom/singular/sdk/SingularDeviceAttributionHandler;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$17;->val$deviceAttributionData:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/singular/sdk/SingularDeviceAttributionHandler;->onDeviceAttributionInfoReceived(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method
