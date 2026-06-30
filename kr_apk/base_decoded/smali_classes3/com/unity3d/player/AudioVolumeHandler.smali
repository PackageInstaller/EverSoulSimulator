.class public Lcom/unity3d/player/AudioVolumeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/p;


# instance fields
.field private a:Lcom/unity3d/player/q;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unity3d/player/q;

    invoke-direct {v0, p1}, Lcom/unity3d/player/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/q;

    invoke-virtual {v0, p0}, Lcom/unity3d/player/q;->a(Lcom/unity3d/player/p;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/q;

    invoke-virtual {v0}, Lcom/unity3d/player/q;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/q;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final native onAudioVolumeChanged(I)V
.end method
