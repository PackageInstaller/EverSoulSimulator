.class Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;
.super Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;
.source "ApiStartSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    invoke-direct {p0}, Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public handle(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1559
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1$1;-><init>(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1829
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .array-data 1
    .end array-data
.end method
