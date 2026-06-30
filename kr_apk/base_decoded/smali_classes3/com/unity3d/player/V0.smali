.class abstract Lcom/unity3d/player/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method private constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/V0;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/V0-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/V0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/V0;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/V0;->a()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
