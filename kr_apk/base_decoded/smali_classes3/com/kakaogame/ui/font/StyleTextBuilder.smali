.class public final Lcom/kakaogame/ui/font/StyleTextBuilder;
.super Ljava/lang/Object;
.source "StyleText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0006\u001a\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cJ\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakaogame/ui/font/StyleTextBuilder;",
        "",
        "<init>",
        "()V",
        "textArray",
        "Lcom/kakaogame/util/json/JSONArray;",
        "string",
        "",
        "lambda",
        "Lkotlin/Function1;",
        "Lcom/kakaogame/ui/font/TextBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "build",
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


# instance fields
.field private final textArray:Lcom/kakaogame/util/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    new-instance v0, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/ui/font/StyleTextBuilder;->textArray:Lcom/kakaogame/util/json/JSONArray;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final build()Lcom/kakaogame/util/json/JSONArray;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/kakaogame/ui/font/StyleTextBuilder;->textArray:Lcom/kakaogame/util/json/JSONArray;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final string(Lkotlin/jvm/functions/Function1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/ui/font/TextBuilder;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const v0, 0x6d0227b0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/kakaogame/ui/font/StyleTextBuilder;->textArray:Lcom/kakaogame/util/json/JSONArray;

    new-instance v1, Lcom/kakaogame/ui/font/TextBuilder;

    invoke-direct {v1}, Lcom/kakaogame/ui/font/TextBuilder;-><init>()V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/kakaogame/ui/font/TextBuilder;->build()Lcom/kakaogame/ui/font/Text;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
