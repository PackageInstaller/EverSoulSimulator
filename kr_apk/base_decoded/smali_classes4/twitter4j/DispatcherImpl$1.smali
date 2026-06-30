.class Ltwitter4j/DispatcherImpl$1;
.super Ljava/lang/Object;
.source "DispatcherImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/DispatcherImpl;-><init>(Ltwitter4j/conf/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Ltwitter4j/DispatcherImpl;

.field final synthetic val$conf:Ltwitter4j/conf/Configuration;


# direct methods
.method constructor <init>(Ltwitter4j/DispatcherImpl;Ltwitter4j/conf/Configuration;)V
    .locals 0

    .line 369
    iput-object p1, p0, Ltwitter4j/DispatcherImpl$1;->this$0:Ltwitter4j/DispatcherImpl;

    iput-object p2, p0, Ltwitter4j/DispatcherImpl$1;->val$conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 379
    iput p1, p0, Ltwitter4j/DispatcherImpl$1;->count:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 419
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 429
    iget v1, p0, Ltwitter4j/DispatcherImpl$1;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltwitter4j/DispatcherImpl$1;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const v1, 0x225d9866

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Ltwitter4j/DispatcherImpl$1;->val$conf:Ltwitter4j/conf/Configuration;

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isDaemonEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
