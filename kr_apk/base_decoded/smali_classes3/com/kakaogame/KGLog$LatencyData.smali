.class final Lcom/kakaogame/KGLog$LatencyData;
.super Ljava/lang/Object;
.source "KGLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LatencyData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGLog$LatencyData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGLog.kt\ncom/kakaogame/KGLog$LatencyData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\'\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\n\u001a\u00020\tJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J&\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/KGLog$LatencyData;",
        "",
        "category",
        "",
        "action",
        "label",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "startNanoTime",
        "",
        "stop",
        "remove",
        "",
        "equals",
        "",
        "Companion",
        "gamesdk_release"
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
.field public static final Companion:Lcom/kakaogame/KGLog$LatencyData$Companion;

.field private static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGLog$LatencyData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final action:Ljava/lang/String;

.field private final category:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final startNanoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGLog$LatencyData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGLog$LatencyData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGLog$LatencyData;->Companion:Lcom/kakaogame/KGLog$LatencyData$Companion;

    .line 4209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/kakaogame/KGLog$LatencyData;->list:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/KGLog$LatencyData;->category:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakaogame/KGLog$LatencyData;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakaogame/KGLog$LatencyData;->label:Ljava/lang/String;

    .line 4399
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kakaogame/KGLog$LatencyData;->startNanoTime:J

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/KGLog$LatencyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$equals(Lcom/kakaogame/KGLog$LatencyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 3879
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/KGLog$LatencyData;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getList$cp()Ljava/util/List;
    .locals 1

    .line 3879
    sget-object v0, Lcom/kakaogame/KGLog$LatencyData;->list:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4019
    iget-object v0, p0, Lcom/kakaogame/KGLog$LatencyData;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4049
    :cond_0
    iget-object p1, p0, Lcom/kakaogame/KGLog$LatencyData;->action:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 4079
    :cond_1
    iget-object p1, p0, Lcom/kakaogame/KGLog$LatencyData;->label:Ljava/lang/String;

    if-nez p1, :cond_2

    if-eqz p3, :cond_3

    return v0

    .line 4129
    :cond_2
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final remove()V
    .locals 2

    .line 3979
    sget-object v0, Lcom/kakaogame/KGLog$LatencyData;->list:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final stop()J
    .locals 4

    .line 3909
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kakaogame/KGLog$LatencyData;->startNanoTime:J

    sub-long/2addr v0, v2

    .line 3919
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 3929
    invoke-direct {p0}, Lcom/kakaogame/KGLog$LatencyData;->remove()V

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method
