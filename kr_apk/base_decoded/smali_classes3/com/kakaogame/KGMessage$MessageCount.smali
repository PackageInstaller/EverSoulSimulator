.class public abstract Lcom/kakaogame/KGMessage$MessageCount;
.super Ljava/lang/Object;
.source "KGMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MessageCount"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakaogame/KGMessage$MessageCount;",
        "",
        "getTime",
        "",
        "count",
        "",
        "<init>",
        "(JI)V",
        "getGetTime",
        "()J",
        "getCount",
        "()I",
        "getNew",
        "",
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


# instance fields
.field private final count:I

.field private final getTime:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 2479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2489
    iput-wide p1, p0, Lcom/kakaogame/KGMessage$MessageCount;->getTime:J

    .line 2499
    iput p3, p0, Lcom/kakaogame/KGMessage$MessageCount;->count:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 2499
    iget v0, p0, Lcom/kakaogame/KGMessage$MessageCount;->count:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGetTime()J
    .locals 2

    .line 2489
    iget-wide v0, p0, Lcom/kakaogame/KGMessage$MessageCount;->getTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNew()Z
    .locals 6

    .line 2529
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kakaogame/KGMessage$MessageCount;->getTime:J

    sget-object v4, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskHelper;->getMessageCountCacheSec()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method
