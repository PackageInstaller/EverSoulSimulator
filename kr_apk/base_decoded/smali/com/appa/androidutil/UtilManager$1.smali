.class Lcom/appa/androidutil/UtilManager$1;
.super Ljava/lang/Object;
.source "UtilManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appa/androidutil/UtilManager;->ToastMessage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appa/androidutil/UtilManager;

.field private final synthetic val$duration:I

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appa/androidutil/UtilManager;Ljava/lang/String;I)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/appa/androidutil/UtilManager$1;->this$0:Lcom/appa/androidutil/UtilManager;

    iput-object p2, p0, Lcom/appa/androidutil/UtilManager$1;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/appa/androidutil/UtilManager$1;->val$duration:I

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 469
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appa/androidutil/UtilManager$1;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/appa/androidutil/UtilManager$1;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {}, Lcom/liapp/y;->ڱڱحֱح()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
