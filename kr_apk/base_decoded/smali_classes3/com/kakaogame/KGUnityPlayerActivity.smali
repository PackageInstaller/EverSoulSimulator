.class public Lcom/kakaogame/KGUnityPlayerActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "KGUnityPlayerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/kakaogame/KGUnityPlayerActivity;->setIntent(Landroid/content/Intent;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onStop()V
    .locals 0

    .line 249
    :try_start_0
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
