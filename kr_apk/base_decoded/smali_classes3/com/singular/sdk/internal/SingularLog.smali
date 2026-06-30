.class public Lcom/singular/sdk/internal/SingularLog;
.super Ljava/lang/Object;
.source "SingularLog.java"


# static fields
.field static ENABLE_LOGGING:Z = false

.field static LOG_LEVEL:I = 0x6


# instance fields
.field private final TAG:Ljava/lang/String;

.field private printWriter:Ljava/io/PrintWriter;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Singular"

    .line 329
    iput-object v0, p0, Lcom/singular/sdk/internal/SingularLog;->TAG:Ljava/lang/String;

    .line 379
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularLog;->tag:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/singular/sdk/internal/SingularLog$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SingularLog;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 419
    new-instance v0, Lcom/singular/sdk/internal/SingularLog;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/SingularLog;-><init>(Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    const-string v0, "PROD"

    .line 469
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 479
    new-instance v0, Lcom/singular/sdk/internal/SingularLog$1;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularLog$1;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static getThreadInfo()Ljava/lang/String;
    .locals 3

    .line 979
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 999
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public debug(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x3

    .line 699
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Singular"

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x3

    .line 739
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Singular"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x6

    .line 859
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Singular"

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    const/4 v0, 0x6

    .line 899
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Singular"

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x6

    .line 939
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Singular"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public info(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x4

    .line 779
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Singular"

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x4

    .line 819
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularLog;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Singular"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x3

    .line 659
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->shouldLog(I)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method protected shouldLog(I)Z
    .locals 1

    .line 569
    sget-boolean v0, Lcom/singular/sdk/internal/SingularLog;->ENABLE_LOGGING:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/singular/sdk/internal/SingularLog;->LOG_LEVEL:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method text(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 619
    iget-object v2, p0, Lcom/singular/sdk/internal/SingularLog;->tag:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/singular/sdk/internal/SingularLog;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s [%s] - %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
