.class public Lbolts/ExecutorException;
.super Ljava/lang/RuntimeException;
.source "ExecutorException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const v0, -0x451c49bf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
