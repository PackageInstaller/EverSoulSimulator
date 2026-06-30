.class final Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;
.super Lcom/kakaogame/KGObject;
.source "PlayerLogManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/log/PlayerLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SummaryLogData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/log/PlayerLogManager$SummaryLogData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u001f\u0008\u0016\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u00a2\u0006\u0004\u0008\u0006\u0010\u000bJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;",
        "Lcom/kakaogame/KGObject;",
        "category",
        "",
        "action",
        "label",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "map",
        "",
        "",
        "(Ljava/util/Map;)V",
        "setValue",
        "",
        "value",
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
.field public static final Companion:Lcom/kakaogame/log/PlayerLogManager$SummaryLogData$Companion;

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final KEY_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_MAX:Ljava/lang/String; = "max"

.field private static final KEY_MIN:Ljava/lang/String; = "min"

.field private static final KEY_MOD_TIME:Ljava/lang/String; = "modTime"

.field private static final KEY_SUM:Ljava/lang/String; = "sum"

.field private static final serialVersionUID:J = 0x4049222d292d05b6L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->Companion:Lcom/kakaogame/log/PlayerLogManager$SummaryLogData$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const v0, 0x54348c02

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x543fd752

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x336472d3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2799
    invoke-direct {p0, v3, v4, v3}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2809
    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2819
    invoke-virtual {p0, v1, p2}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2829
    invoke-virtual {p0, v2, p3}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    .line 2839
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {p0, p2, p1}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "sum"

    .line 2849
    invoke-virtual {p0, p2, p1}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, 0x6d019338

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2879
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const v0, 0x54348c02

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x543fd752

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3179
    invoke-virtual {p0, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3209
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string p1, "label"

    .line 3239
    invoke-virtual {p0, p1}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    return v0

    .line 3289
    :cond_2
    invoke-virtual {p0, p1}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final declared-synchronized setValue(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "count"

    .line 2919
    invoke-virtual {p0, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-string v2, "count"

    .line 2939
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "sum"

    .line 2949
    invoke-virtual {p0, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    const-string v2, "sum"

    .line 2969
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "max"

    .line 2989
    invoke-virtual {p0, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "max"

    .line 2999
    invoke-virtual {p0, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3009
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    const-string v2, "max"

    .line 3049
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "min"

    .line 3069
    invoke-virtual {p0, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "min"

    .line 3079
    invoke-virtual {p0, v0}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3089
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    const-string v0, "min"

    .line 3129
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "modTime"

    .line 3139
    sget-object p2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/log/PlayerLogManager$SummaryLogData;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
