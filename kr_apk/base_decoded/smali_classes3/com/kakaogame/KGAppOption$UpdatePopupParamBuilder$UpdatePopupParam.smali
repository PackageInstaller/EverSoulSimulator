.class public final Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;
.super Lcom/kakaogame/KGObject;
.source "KGAppOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdatePopupParam"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B!\u0008\u0000\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;",
        "Lcom/kakaogame/KGObject;",
        "paramObj",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "titleMessage",
        "getTitleMessage",
        "()Ljava/lang/String;",
        "updateButton",
        "getUpdateButton",
        "laterButton",
        "getLaterButton",
        "marketUrl",
        "getMarketUrl",
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
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1889
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getLaterButton()Ljava/lang/String;
    .locals 1

    const v0, 0x3365d9d3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 1949
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMarketUrl()Ljava/lang/String;
    .locals 1

    const v0, 0x5d17543f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 1969
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getTitleMessage()Ljava/lang/String;
    .locals 1

    const v0, 0x22527416

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 1909
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getUpdateButton()Ljava/lang/String;
    .locals 1

    const v0, 0x5d175767

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 1929
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method
