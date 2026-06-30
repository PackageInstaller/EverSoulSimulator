.class public abstract Lorg/apache/commons/lang3/concurrent/LazyInitializer;
.super Ljava/lang/Object;
.source "LazyInitializer.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NO_INIT:Ljava/lang/Object;


# instance fields
.field private volatile object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 829
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->NO_INIT:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    sget-object v0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->NO_INIT:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    .line 1029
    sget-object v1, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->NO_INIT:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 1039
    monitor-enter p0

    .line 1049
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 1069
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->initialize()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/LazyInitializer;->object:Ljava/lang/Object;

    .line 1089
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected abstract initialize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation
.end method
