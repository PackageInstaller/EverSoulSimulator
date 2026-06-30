.class final Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConstantFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3439
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 3619
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 3709
    iget-object p1, p0, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;->value:Ljava/lang/Object;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0

    .array-data 1
    .end array-data
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method
