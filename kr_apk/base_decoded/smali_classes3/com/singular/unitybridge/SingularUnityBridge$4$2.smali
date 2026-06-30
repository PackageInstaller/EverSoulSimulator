.class Lcom/singular/unitybridge/SingularUnityBridge$4$2;
.super Ljava/lang/Object;
.source "SingularUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/unitybridge/SingularUnityBridge$4;->sdidReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/unitybridge/SingularUnityBridge$4;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/singular/unitybridge/SingularUnityBridge$4;Ljava/lang/String;)V
    .locals 0

    .line 2259
    iput-object p1, p0, Lcom/singular/unitybridge/SingularUnityBridge$4$2;->this$0:Lcom/singular/unitybridge/SingularUnityBridge$4;

    iput-object p2, p0, Lcom/singular/unitybridge/SingularUnityBridge$4$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    const v0, 0x7d793cdd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 2279
    iget-object v1, p0, Lcom/singular/unitybridge/SingularUnityBridge$4$2;->val$result:Ljava/lang/String;

    const v2, 0x7d7920cd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
