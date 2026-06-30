.class public abstract Lcom/facebook/unity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final ACTIVITY_PARAMS:Ljava/lang/String; = "activity_params"


# instance fields
.field protected mCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    invoke-static {p1}, Lcom/liapp/y;->ڱڱحֱح(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/facebook/unity/BaseActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 44
    invoke-virtual {p0}, Lcom/facebook/unity/BaseActivity;->finish()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/unity/BaseActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/liapp/y;->׳׭جֱح(Landroid/content/Context;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/liapp/y;->֭ݮײڮܪ(Landroid/content/Context;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    if-nez p1, :cond_0

    .line 51
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
