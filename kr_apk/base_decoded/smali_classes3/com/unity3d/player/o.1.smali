.class final Lcom/unity3d/player/o;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/unity3d/player/p;

.field private final b:Landroid/media/AudioManager;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/media/AudioManager;Lcom/unity3d/player/p;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/unity3d/player/o;->b:Landroid/media/AudioManager;

    const/4 p1, 0x3

    iput p1, p0, Lcom/unity3d/player/o;->c:I

    iput-object p3, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/p;

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/unity3d/player/o;->d:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/o;->b:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/p;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/unity3d/player/o;->c:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget p2, p0, Lcom/unity3d/player/o;->d:I

    if-eq p1, p2, :cond_0

    iput p1, p0, Lcom/unity3d/player/o;->d:I

    iget-object p2, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/p;

    invoke-interface {p2, p1}, Lcom/unity3d/player/p;->onAudioVolumeChanged(I)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
