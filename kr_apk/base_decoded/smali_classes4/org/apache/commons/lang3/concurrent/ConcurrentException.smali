.class public Lorg/apache/commons/lang3/concurrent/ConcurrentException;
.super Ljava/lang/Exception;
.source "ConcurrentException.java"


# static fields
.field private static final serialVersionUID:J = 0x5be89589f59f3c52L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 679
    invoke-static {p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 559
    invoke-static {p1}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method
