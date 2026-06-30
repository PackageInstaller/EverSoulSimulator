.class Lcom/singular/unitybridge/SingularUnityBridge$3;
.super Ljava/lang/Object;
.source "SingularUnityBridge.java"

# interfaces
.implements Lcom/singular/sdk/SingularLinkHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/unitybridge/SingularUnityBridge;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onResolved(Lcom/singular/sdk/SingularLinkParams;)V
    .locals 2

    .line 1139
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/singular/unitybridge/SingularUnityBridge$3$1;

    invoke-direct {v1, p0, p1}, Lcom/singular/unitybridge/SingularUnityBridge$3$1;-><init>(Lcom/singular/unitybridge/SingularUnityBridge$3;Lcom/singular/sdk/SingularLinkParams;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
