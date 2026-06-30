.class Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;
.super Ljava/lang/Object;
.source "ExternalAIFAHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ExternalAIFAHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleAdvertisingServiceConnection"
.end annotation


# instance fields
.field private final _binderQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field _consumed:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 759
    iput-boolean v0, p0, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;->_consumed:Z

    .line 769
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/singular/sdk/internal/ExternalAIFAHelper$1;)V
    .locals 0

    .line 749
    invoke-direct {p0}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 899
    iget-boolean v0, p0, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;->_consumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 909
    iput-boolean v0, p0, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;->_consumed:Z

    .line 919
    iget-object v0, p0, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 819
    :try_start_0
    iget-object p1, p0, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;->_binderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
