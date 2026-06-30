.class final Lcom/unity3d/player/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unity3d/player/U0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/U0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0x8dd

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/player/S0;

    sget-object v0, Lcom/unity3d/player/S0;->h:Lcom/unity3d/player/S0;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget v1, p1, Lcom/unity3d/player/U0;->e:I

    sub-int/2addr v1, v3

    iput v1, p1, Lcom/unity3d/player/U0;->e:I

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->executeGLThreadJobs()V

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-boolean v1, p1, Lcom/unity3d/player/U0;->b:Z

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mgetHaveAndroidWindowSupport(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-boolean p1, p1, Lcom/unity3d/player/U0;->c:Z

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget v1, p1, Lcom/unity3d/player/U0;->h:I

    if-ltz v1, :cond_5

    if-nez v1, :cond_4

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mgetSplashEnabled(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mDisableStaticSplashScreen(Lcom/unity3d/player/UnityPlayer;)V

    :cond_3
    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmActivity(Lcom/unity3d/player/UnityPlayer;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mgetAutoReportFullyDrawnEnabled(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmActivity(Lcom/unity3d/player/UnityPlayer;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->reportFullyDrawn()V

    :cond_4
    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget v1, p1, Lcom/unity3d/player/U0;->h:I

    sub-int/2addr v1, v3

    iput v1, p1, Lcom/unity3d/player/U0;->h:I

    :cond_5
    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeRender(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mfinish(Lcom/unity3d/player/UnityPlayer;)V

    goto/16 :goto_1

    :cond_6
    sget-object v4, Lcom/unity3d/player/S0;->c:Lcom/unity3d/player/S0;

    if-ne p1, v4, :cond_7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    :cond_7
    sget-object v4, Lcom/unity3d/player/S0;->b:Lcom/unity3d/player/S0;

    if-ne p1, v4, :cond_8

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iput-boolean v3, p1, Lcom/unity3d/player/U0;->b:Z

    goto/16 :goto_1

    :cond_8
    sget-object v4, Lcom/unity3d/player/S0;->a:Lcom/unity3d/player/S0;

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iput-boolean v1, p1, Lcom/unity3d/player/U0;->b:Z

    goto :goto_1

    :cond_9
    sget-object v4, Lcom/unity3d/player/S0;->d:Lcom/unity3d/player/S0;

    if-ne p1, v4, :cond_a

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iput-boolean v1, p1, Lcom/unity3d/player/U0;->c:Z

    goto :goto_1

    :cond_a
    sget-object v4, Lcom/unity3d/player/S0;->e:Lcom/unity3d/player/S0;

    const/4 v5, 0x3

    if-ne p1, v4, :cond_b

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iput-boolean v3, p1, Lcom/unity3d/player/U0;->c:Z

    iget v1, p1, Lcom/unity3d/player/U0;->d:I

    if-ne v1, v5, :cond_10

    goto :goto_0

    :cond_b
    sget-object v4, Lcom/unity3d/player/S0;->f:Lcom/unity3d/player/S0;

    if-ne p1, v4, :cond_d

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget v4, p1, Lcom/unity3d/player/U0;->d:I

    if-ne v4, v3, :cond_c

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1, v1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeFocusChanged(Lcom/unity3d/player/UnityPlayer;Z)V

    :cond_c
    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    const/4 v1, 0x2

    iput v1, p1, Lcom/unity3d/player/U0;->d:I

    goto :goto_1

    :cond_d
    sget-object v1, Lcom/unity3d/player/S0;->g:Lcom/unity3d/player/S0;

    if-ne p1, v1, :cond_e

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iput v5, p1, Lcom/unity3d/player/U0;->d:I

    iget-boolean v1, p1, Lcom/unity3d/player/U0;->c:Z

    if-eqz v1, :cond_10

    :goto_0
    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1, v3}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeFocusChanged(Lcom/unity3d/player/UnityPlayer;Z)V

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iput v3, p1, Lcom/unity3d/player/U0;->d:I

    goto :goto_1

    :cond_e
    sget-object v1, Lcom/unity3d/player/S0;->i:Lcom/unity3d/player/S0;

    if-ne p1, v1, :cond_f

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-object p1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getLaunchURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeSetLaunchURL(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    sget-object v1, Lcom/unity3d/player/S0;->j:Lcom/unity3d/player/S0;

    if-ne p1, v1, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-object v1, p1, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    iget v4, p1, Lcom/unity3d/player/U0;->f:I

    iget p1, p1, Lcom/unity3d/player/U0;->g:I

    invoke-static {v1, v4, p1}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$mnativeOrientationChanged(Lcom/unity3d/player/UnityPlayer;II)V

    :cond_10
    :goto_1
    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget-boolean v1, p1, Lcom/unity3d/player/U0;->b:Z

    if-eqz v1, :cond_11

    iget v1, p1, Lcom/unity3d/player/U0;->e:I

    if-gtz v1, :cond_11

    iget-object p1, p1, Lcom/unity3d/player/U0;->a:Landroid/os/Handler;

    invoke-static {p1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/unity3d/player/T0;->a:Lcom/unity3d/player/U0;

    iget v0, p1, Lcom/unity3d/player/U0;->e:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/unity3d/player/U0;->e:I

    :cond_11
    return v3

    nop

    .array-data 1
    .end array-data
.end method
