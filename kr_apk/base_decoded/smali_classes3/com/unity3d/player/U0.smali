.class final Lcom/unity3d/player/U0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Landroid/os/Handler;

.field b:Z

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field final synthetic i:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method static bridge synthetic -$$Nest$ma(Lcom/unity3d/player/U0;Lcom/unity3d/player/S0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/U0;->a(Lcom/unity3d/player/S0;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 1

    iput-object p1, p0, Lcom/unity3d/player/U0;->i:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/player/U0;->b:Z

    iput-boolean p1, p0, Lcom/unity3d/player/U0;->c:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/unity3d/player/U0;->d:I

    iput p1, p0, Lcom/unity3d/player/U0;->e:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/unity3d/player/U0;->h:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/U0-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/U0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private a(Lcom/unity3d/player/S0;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/U0;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x8dd

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "UnityMain"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/T0;

    invoke-direct {v2, p0}, Lcom/unity3d/player/T0;-><init>(Lcom/unity3d/player/U0;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unity3d/player/U0;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    .array-data 1
    .end array-data
.end method
