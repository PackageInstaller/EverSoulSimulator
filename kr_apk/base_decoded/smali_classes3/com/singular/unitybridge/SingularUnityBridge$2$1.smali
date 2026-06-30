.class Lcom/singular/unitybridge/SingularUnityBridge$2$1;
.super Ljava/lang/Object;
.source "SingularUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/unitybridge/SingularUnityBridge$2;->handleLink(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/unitybridge/SingularUnityBridge$2;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/singular/unitybridge/SingularUnityBridge$2;Ljava/lang/String;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/singular/unitybridge/SingularUnityBridge$2$1;->this$0:Lcom/singular/unitybridge/SingularUnityBridge$2;

    iput-object p2, p0, Lcom/singular/unitybridge/SingularUnityBridge$2$1;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/singular/unitybridge/SingularUnityBridge$2$1;->val$link:Ljava/lang/String;

    const v1, 0x7d792755

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7920cd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v0, ""

    .line 949
    invoke-static {v2, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :cond_0
    invoke-static {v2, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
