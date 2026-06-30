.class public final Lcom/kakaogame/addon/KGService;
.super Lcom/kakaogame/KGObject;
.source "KGService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/addon/KGService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0002R\u0013\u0010\n\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000cR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakaogame/addon/KGService;",
        "Lcom/kakaogame/KGObject;",
        "data",
        "Lcom/kakaogame/util/json/JSONObject;",
        "<init>",
        "(Lcom/kakaogame/util/json/JSONObject;)V",
        "checkNull",
        "",
        "obj",
        "",
        "subId",
        "getSubId",
        "()Ljava/lang/String;",
        "count",
        "",
        "getCount",
        "()I",
        "keyId",
        "getKeyId",
        "code",
        "getCode",
        "Companion",
        "kakaogame_addon_release"
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
.field public static final CODE:Ljava/lang/String; = "code"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final Companion:Lcom/kakaogame/addon/KGService$Companion;

.field public static final KEY_ID:Ljava/lang/String; = "keyId"

.field public static final SUB_ID:Ljava/lang/String; = "subId"

.field private static final TAG:Ljava/lang/String; = "KGService"

.field private static final serialVersionUID:J = -0x4ee2a0f54123139cL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/addon/KGService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/addon/KGService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/addon/KGService;->Companion:Lcom/kakaogame/addon/KGService$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/util/json/JSONObject;)V
    .locals 2

    const v0, 0x7d778fe5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x225517d6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakaogame/addon/KGService;->checkNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3362bae3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/addon/KGService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, -0x2242d70c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244f47c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/addon/KGService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, -0x2242caf4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakaogame/addon/KGService;->checkNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d7764ad

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/addon/KGService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x7d701e35

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/addon/KGService;->checkNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x6d0b76e8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/addon/KGService;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final checkNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 109
    :cond_0
    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    const v0, 0x6d0b76e8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p0, v0}, Lcom/kakaogame/addon/KGService;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getCount()I
    .locals 4

    :try_start_0
    const-string v0, "count"

    .line 199
    invoke-virtual {p0, v0}, Lcom/kakaogame/addon/KGService;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x7d701e15

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKeyId()Ljava/lang/String;
    .locals 1

    const v0, 0x7d7764ad

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/kakaogame/addon/KGService;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getSubId()Ljava/lang/String;
    .locals 1

    const v0, 0x3362bae3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/kakaogame/addon/KGService;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method
