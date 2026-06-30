.class public final Lcom/kakaogame/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/Logger$LoggingEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logger.kt\ncom/kakaogame/Logger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,249:1\n1#2:250\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001%B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005J\u0006\u0010\u0012\u001a\u00020\u0005J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0018\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\u0018\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\"\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0018\u0010\u001c\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\"\u0010\u001c\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0018\u0010\u001d\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\"\u0010\u001d\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0018\u0010\u001e\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\"\u0010\u001e\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0018\u0010\u001f\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\"\u0010\u001f\u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0018\u0010 \u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0017J\"\u0010 \u001a\u00020\u00102\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ,\u0010!\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u000e\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u000eJ\u000e\u0010$\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kakaogame/Logger;",
        "",
        "<init>",
        "()V",
        "VERBOSE",
        "",
        "DEBUG",
        "INFO",
        "WARN",
        "ERROR",
        "ASSERT",
        "loggingLevel",
        "loggingEventListenerList",
        "",
        "Lcom/kakaogame/Logger$LoggingEventListener;",
        "setLoggingLevel",
        "",
        "level",
        "getLoggingLevel",
        "isSdkLoggable",
        "",
        "he",
        "tag",
        "",
        "msg",
        "v",
        "tr",
        "",
        "d",
        "i",
        "w",
        "e",
        "a",
        "notifyLoggingEvent",
        "addLoggingEventListener",
        "loggingEventListener",
        "removeLoggingEventListener",
        "LoggingEventListener",
        "common-kakaogames_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final INSTANCE:Lcom/kakaogame/Logger;

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static final loggingEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/Logger$LoggingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private static loggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/Logger;

    invoke-direct {v0}, Lcom/kakaogame/Logger;-><init>()V

    sput-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const/4 v0, 0x4

    .line 359
    sput v0, Lcom/kakaogame/Logger;->loggingLevel:I

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/kakaogame/Logger;->loggingEventListenerList:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final isSdkLoggable(I)Z
    .locals 1

    .line 479
    sget v0, Lcom/kakaogame/Logger;->loggingLevel:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method private final notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 2249
    sget-object v0, Lcom/kakaogame/Logger;->loggingEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2259
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/Logger$LoggingEventListener;

    .line 2269
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/kakaogame/Logger$LoggingEventListener;->onLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2289
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 2109
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2119
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 2139
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 2179
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2189
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2209
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final addLoggingEventListener(Lcom/kakaogame/Logger$LoggingEventListener;)V
    .locals 1

    const v0, 0x7d70304d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2329
    sget-object v0, Lcom/kakaogame/Logger;->loggingEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2339
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2349
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2329
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1019
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 1049
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 1169
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 1889
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1899
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 1919
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 2039
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2049
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2069
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final getLoggingLevel()I
    .locals 1

    .line 439
    sget v0, Lcom/kakaogame/Logger;->loggingLevel:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final he(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuffer;

    const v1, 0x54393332

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v1, 0x225500ee

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x6

    .line 589
    invoke-direct {p0, v1}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 619
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 1309
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1319
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 1339
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 1459
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1489
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final removeLoggingEventListener(Lcom/kakaogame/Logger$LoggingEventListener;)V
    .locals 1

    const v0, 0x7d70304d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2399
    sget-object v0, Lcom/kakaogame/Logger;->loggingEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2409
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2399
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final setLoggingLevel(I)V
    .locals 2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 399
    sput p1, Lcom/kakaogame/Logger;->loggingLevel:I

    return-void

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d0c1ad8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 729
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 759
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 879
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 1599
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 1629
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 1749
    invoke-direct {p0, v0}, Lcom/kakaogame/Logger;->isSdkLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/kakaogame/Logger;->notifyLoggingEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method
