.class public Lcom/singular/sdk/internal/ConfigManagerRepoStorage;
.super Lcom/singular/sdk/internal/ConfigManagerRepo;
.source "ConfigManagerRepoStorage.java"


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConfigManagerRepoStorage"

    .line 139
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/singular/sdk/internal/ConfigManagerRepo;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->context:Landroid/content/Context;

    return-void

    .array-data 1
    .end array-data
.end method

.method static synthetic access$000(Lcom/singular/sdk/internal/ConfigManagerRepoStorage;)Landroid/content/Context;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->context:Landroid/content/Context;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic access$100()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 129
    sget-object v0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getConfig(Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
    .locals 2

    .line 219
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;

    invoke-direct {v1, p0, p1}, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$1;-><init>(Lcom/singular/sdk/internal/ConfigManagerRepoStorage;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public saveConfig(Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V
    .locals 2

    .line 499
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 509
    new-instance v1, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/singular/sdk/internal/ConfigManagerRepoStorage$2;-><init>(Lcom/singular/sdk/internal/ConfigManagerRepoStorage;Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
