.class public Lorg/apache/commons/lang3/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;
    }
.end annotation


# static fields
.field public static final ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2709
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;-><init>(Lorg/apache/commons/lang3/ThreadUtils$1;)V

    sput-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 2369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static findThreadById(J)Ljava/lang/Thread;
    .locals 1

    .line 2229
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;-><init>(J)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p0

    .line 2239
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Thread;

    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static findThreadById(JLjava/lang/String;)Ljava/lang/Thread;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, -0x4510c44f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 769
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 779
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadById(J)Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 789
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static findThreadById(JLjava/lang/ThreadGroup;)Ljava/lang/Thread;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, 0x6d05b970

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 539
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadById(J)Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 559
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static findThreadGroups(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "Z",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const v3, 0x225cac16

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 4239
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const v3, 0x5d198ff7

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 4249
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4269
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v2

    .line 4299
    :goto_2
    div-int/lit8 v3, v2, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    new-array v3, v2, [Ljava/lang/ThreadGroup;

    .line 4309
    invoke-virtual {p0, v3, p1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 4349
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, v4, :cond_3

    .line 4369
    aget-object p1, v3, v1

    invoke-interface {p2, p1}, Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;->test(Ljava/lang/ThreadGroup;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4379
    aget-object p1, v3, v1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4409
    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_4
    move v2, v4

    goto :goto_2

    .array-data 1
    .end array-data
.end method

.method public static findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 3769
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->getSystemThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static findThreadGroupsByName(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 1479
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "Z",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const v3, 0x225cac16

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 3919
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const v3, 0x5d198ff7

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 3929
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3949
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v2

    .line 3979
    :goto_2
    div-int/lit8 v3, v2, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    new-array v3, v2, [Ljava/lang/Thread;

    .line 3989
    invoke-virtual {p0, v3, p1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 4029
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, v4, :cond_3

    .line 4049
    aget-object p1, v3, v1

    invoke-interface {p2, p1}, Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;->test(Ljava/lang/Thread;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4059
    aget-object p1, v3, v1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4089
    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_4
    move v2, v4

    goto :goto_2

    .array-data 1
    .end array-data
.end method

.method public static findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 3619
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->getSystemThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static findThreadsByName(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 2069
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static findThreadsByName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const v3, -0x4510c887

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 1179
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const v2, -0x4510c44f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 1189
    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object p1

    .line 1229
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1269
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    new-instance v2, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v2, p0}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    .line 1289
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ThreadGroup;

    .line 1299
    invoke-static {p1, v1, v2}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1319
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static findThreadsByName(Ljava/lang/String;Ljava/lang/ThreadGroup;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadGroup;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 999
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, p0, v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getAllThreadGroups()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 1619
    sget-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getAllThreads()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 1909
    sget-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getSystemThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    .line 1729
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 1739
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1749
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method
