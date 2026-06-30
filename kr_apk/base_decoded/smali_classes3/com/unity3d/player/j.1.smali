.class final Lcom/unity3d/player/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/j;->b:Landroid/os/Looper;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/j;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/unity3d/player/i;

    iget-object v2, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/unity3d/player/i;-><init>(Lcom/unity3d/player/IAssetPackManagerMobileDataConfirmationCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method
