.class final Lcom/unity3d/player/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/media/AudioManager;

.field private c:Lcom/unity3d/player/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/q;->a:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/unity3d/player/q;->b:Landroid/media/AudioManager;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/q;->c:Lcom/unity3d/player/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/q;->c:Lcom/unity3d/player/o;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/q;->c:Lcom/unity3d/player/o;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Lcom/unity3d/player/p;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/unity3d/player/o;

    iget-object v2, p0, Lcom/unity3d/player/q;->b:Landroid/media/AudioManager;

    invoke-direct {v1, v0, v2, p1}, Lcom/unity3d/player/o;-><init>(Landroid/os/Handler;Landroid/media/AudioManager;Lcom/unity3d/player/p;)V

    iput-object v1, p0, Lcom/unity3d/player/q;->c:Lcom/unity3d/player/o;

    iget-object p1, p0, Lcom/unity3d/player/q;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/unity3d/player/q;->c:Lcom/unity3d/player/o;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
