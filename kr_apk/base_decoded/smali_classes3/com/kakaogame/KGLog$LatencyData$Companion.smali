.class public final Lcom/kakaogame/KGLog$LatencyData$Companion;
.super Ljava/lang/Object;
.source "KGLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGLog$LatencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGLog.kt\ncom/kakaogame/KGLog$LatencyData$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nJ&\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\nR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakaogame/KGLog$LatencyData$Companion;",
        "",
        "<init>",
        "()V",
        "list",
        "",
        "Lcom/kakaogame/KGLog$LatencyData;",
        "createLatencyData",
        "",
        "category",
        "",
        "action",
        "label",
        "getLatencyData",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGLog$LatencyData$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final createLatencyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4229
    new-instance v0, Lcom/kakaogame/KGLog$LatencyData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/kakaogame/KGLog$LatencyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4239
    invoke-static {}, Lcom/kakaogame/KGLog$LatencyData;->access$getList$cp()Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/kakaogame/KGLog$LatencyData;->access$getList$cp()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLatencyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGLog$LatencyData;
    .locals 4

    .line 4279
    invoke-static {}, Lcom/kakaogame/KGLog$LatencyData;->access$getList$cp()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 4289
    :try_start_0
    invoke-static {}, Lcom/kakaogame/KGLog$LatencyData;->access$getList$cp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/KGLog$LatencyData;

    .line 4299
    invoke-static {v2, p1, p2, p3}, Lcom/kakaogame/KGLog$LatencyData;->access$equals(Lcom/kakaogame/KGLog$LatencyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4309
    monitor-exit v0

    return-object v2

    .line 4339
    :cond_1
    :try_start_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4279
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
