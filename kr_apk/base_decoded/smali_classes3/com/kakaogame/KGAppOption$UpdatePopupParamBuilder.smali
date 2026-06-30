.class public final Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;
.super Ljava/lang/Object;
.source "KGAppOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGAppOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdatePopupParamBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$Companion;,
        Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u00132\u00020\u0001:\u0002\u0012\u0013B!\u0008\u0000\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0011\u001a\u00020\u0008R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;",
        "",
        "obj",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "updateParam",
        "Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;",
        "setTitleMessage",
        "titleMessage",
        "setUpdateButton",
        "updateButton",
        "setLaterButton",
        "laterButton",
        "setMarketUrl",
        "marketUrl",
        "build",
        "UpdatePopupParam",
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
.field public static final Companion:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$Companion;

.field public static final KEY_LATER_BUTTON:Ljava/lang/String; = "laterButton"

.field private static final KEY_MARKET_URL:Ljava/lang/String; = "marketUrl"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "titleMessage"

.field public static final KEY_UPDATE_BUTTON:Ljava/lang/String; = "updateButton"


# instance fields
.field private final updateParam:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->Companion:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$Companion;

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
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1879
    new-instance v0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    invoke-direct {v0, p1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->updateParam:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final build()Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;
    .locals 1

    .line 2289
    iget-object v0, p0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->updateParam:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setLaterButton(Ljava/lang/String;)Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;
    .locals 2

    .line 2159
    iget-object v0, p0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->updateParam:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    const v1, 0x3365d9d3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setMarketUrl(Ljava/lang/String;)Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->updateParam:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    const v1, 0x5d17543f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTitleMessage(Ljava/lang/String;)Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->updateParam:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    const v1, 0x22527416

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setUpdateButton(Ljava/lang/String;)Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder;->updateParam:Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;

    const v1, 0x5d175767

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGAppOption$UpdatePopupParamBuilder$UpdatePopupParam;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
