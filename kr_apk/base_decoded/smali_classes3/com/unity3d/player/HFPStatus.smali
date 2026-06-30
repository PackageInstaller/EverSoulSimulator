.class public Lcom/unity3d/player/HFPStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Z

.field private d:Landroid/media/AudioManager;

.field private e:Z

.field private f:I


# direct methods
.method static bridge synthetic -$$Nest$fgetc(Lcom/unity3d/player/HFPStatus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unity3d/player/HFPStatus;->c:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fgetd(Lcom/unity3d/player/HFPStatus;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$fputf(Lcom/unity3d/player/HFPStatus;I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/HFPStatus;->f:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/unity3d/player/HFPStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/HFPStatus;->a()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/player/HFPStatus;->c:Z

    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    iput-boolean v1, p0, Lcom/unity3d/player/HFPStatus;->e:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/unity3d/player/HFPStatus;->f:I

    iput-object p1, p0, Lcom/unity3d/player/HFPStatus;->a:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/unity3d/player/HFPStatus;->initHFPStatusJni()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/HFPStatus;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/HFPStatus;->e:Z

    iget-object v0, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final native deinitHFPStatusJni()V
.end method

.method private final native initHFPStatusJni()V
.end method


# virtual methods
.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/unity3d/player/HFPStatus;->clearHFPStat()V

    invoke-direct {p0}, Lcom/unity3d/player/HFPStatus;->deinitHFPStatusJni()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected clearHFPStat()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/player/HFPStatus;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/unity3d/player/HFPStatus;->f:I

    invoke-direct {p0}, Lcom/unity3d/player/HFPStatus;->a()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected getHFPStat()Z
    .locals 2

    iget v0, p0, Lcom/unity3d/player/HFPStatus;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected requestHFPStat()V
    .locals 4

    invoke-virtual {p0}, Lcom/unity3d/player/HFPStatus;->clearHFPStat()V

    new-instance v0, Lcom/unity3d/player/HFPStatus$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/HFPStatus$1;-><init>(Lcom/unity3d/player/HFPStatus;)V

    iput-object v0, p0, Lcom/unity3d/player/HFPStatus;->b:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/unity3d/player/HFPStatus;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/unity3d/player/HFPStatus;->e:Z

    iget-object v0, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x5

    const-string v1, "startBluetoothSco() failed. no bluetooth device connected."

    invoke-static {v0, v1}, Lcom/unity3d/player/z;->Log(ILjava/lang/String;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected setHFPRecordingStat(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unity3d/player/HFPStatus;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unity3d/player/HFPStatus;->d:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
