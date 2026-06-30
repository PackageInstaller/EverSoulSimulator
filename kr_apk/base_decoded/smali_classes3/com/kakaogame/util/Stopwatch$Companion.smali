.class public final Lcom/kakaogame/util/Stopwatch$Companion;
.super Ljava/lang/Object;
.source "Stopwatch.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/util/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/util/Stopwatch$Companion;",
        "",
        "<init>",
        "()V",
        "start",
        "Lcom/kakaogame/util/Stopwatch;",
        "name",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/util/Stopwatch$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/kakaogame/util/Stopwatch;

    invoke-direct {v0, p1}, Lcom/kakaogame/util/Stopwatch;-><init>(Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
