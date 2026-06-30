.class public interface abstract Lcom/kakaogame/log/IFirebase;
.super Ljava/lang/Object;
.source "IFirebase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H&J$\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00082\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000eH&J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0008H&J$\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000b2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000eH&J$\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00082\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u000eH&\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/log/IFirebase;",
        "",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "setCrashUserIdentifier",
        "playerId",
        "",
        "getFCMToken",
        "traceStart",
        "",
        "name",
        "attr",
        "",
        "addTraceMetric",
        "traceId",
        "event",
        "traceStop",
        "logEvent",
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


# virtual methods
.method public abstract addTraceMetric(ILjava/lang/String;)V
.end method

.method public abstract getFCMToken()Ljava/lang/String;
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCrashUserIdentifier(Ljava/lang/String;)V
.end method

.method public abstract traceStart(Ljava/lang/String;Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract traceStop(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
