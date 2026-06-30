.class public final Lcom/kakaogame/infodesk/CustomOptionData;
.super Ljava/lang/Object;
.source "CustomOptionData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u000c\u001a\u0004\u0018\u00010\r*\u00020\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\rH\u0002J\u0014\u0010\u0010\u001a\u00020\r*\u00020\u00052\u0006\u0010\u000f\u001a\u00020\rH\u0002J\u0006\u0010\u0011\u001a\u00020\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kakaogame/infodesk/CustomOptionData;",
        "",
        "<init>",
        "()V",
        "data",
        "Lcom/kakaogame/util/json/JSONObject;",
        "getData",
        "()Lcom/kakaogame/util/json/JSONObject;",
        "setData",
        "(Lcom/kakaogame/util/json/JSONObject;)V",
        "updateTime",
        "",
        "getValue",
        "",
        "updateData",
        "key",
        "findKey",
        "clear",
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


# static fields
.field public static final INSTANCE:Lcom/kakaogame/infodesk/CustomOptionData;

.field public static data:Lcom/kakaogame/util/json/JSONObject;

.field private static updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/infodesk/CustomOptionData;

    invoke-direct {v0}, Lcom/kakaogame/infodesk/CustomOptionData;-><init>()V

    sput-object v0, Lcom/kakaogame/infodesk/CustomOptionData;->INSTANCE:Lcom/kakaogame/infodesk/CustomOptionData;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final findKey(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 359
    invoke-virtual {p1}, Lcom/kakaogame/util/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    move-object v1, v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 369
    invoke-static {v2, p2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/kakaogame/infodesk/CustomOptionData;->getData()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    return-object v1

    .array-data 1
    .end array-data
.end method

.method private final updateData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 219
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kakaogame/infodesk/CustomOptionData;->updateTime:J

    .line 229
    invoke-static {}, Lcom/kakaogame/infodesk/InfodeskService;->loadCustomOptionsByHttp()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/CustomOptionData;->setData(Lcom/kakaogame/util/json/JSONObject;)V

    .line 269
    invoke-virtual {p0}, Lcom/kakaogame/infodesk/CustomOptionData;->getData()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kakaogame/infodesk/CustomOptionData;->findKey(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 289
    :cond_0
    sget-object v0, Lcom/kakaogame/infodesk/CustomOptionData;->data:Lcom/kakaogame/util/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kakaogame/infodesk/CustomOptionData;->getData()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kakaogame/infodesk/CustomOptionData;->findKey(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 449
    sput-wide v0, Lcom/kakaogame/infodesk/CustomOptionData;->updateTime:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final getData()Lcom/kakaogame/util/json/JSONObject;
    .locals 1

    .line 79
    sget-object v0, Lcom/kakaogame/infodesk/CustomOptionData;->data:Lcom/kakaogame/util/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x7d778fe5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const v0, 0x543e6e4a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/kakaogame/infodesk/CustomOptionData;->data:Lcom/kakaogame/util/json/JSONObject;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kakaogame/infodesk/CustomOptionData;->updateData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    sget-wide v0, Lcom/kakaogame/infodesk/CustomOptionData;->updateTime:J

    const v2, 0x493e0

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/kakaogame/infodesk/CustomOptionData;->updateData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/infodesk/CustomOptionData;->getData()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kakaogame/infodesk/CustomOptionData;->findKey(Lcom/kakaogame/util/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final setData(Lcom/kakaogame/util/json/JSONObject;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sput-object p1, Lcom/kakaogame/infodesk/CustomOptionData;->data:Lcom/kakaogame/util/json/JSONObject;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
