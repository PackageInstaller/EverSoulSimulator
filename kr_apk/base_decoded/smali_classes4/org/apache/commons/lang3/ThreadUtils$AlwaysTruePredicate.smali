.class final Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlwaysTruePredicate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/ThreadUtils$1;)V
    .locals 0

    .line 2759
    invoke-direct {p0}, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public test(Ljava/lang/Thread;)Z
    .locals 0

    const/4 p1, 0x1

    return p1

    .array-data 1
    .end array-data
.end method

.method public test(Ljava/lang/ThreadGroup;)Z
    .locals 0

    const/4 p1, 0x1

    return p1

    .array-data 1
    .end array-data
.end method
