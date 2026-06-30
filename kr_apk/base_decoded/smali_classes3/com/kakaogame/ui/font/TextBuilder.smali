.class public final Lcom/kakaogame/ui/font/TextBuilder;
.super Ljava/lang/Object;
.source "StyleText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bJ\u001c\u0010\u0006\u001a\u00020\u000c2\u0014\u0010\n\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00050\r0\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\u0008\u0012\u0004\u0012\u00020\u0005`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/ui/font/TextBuilder;",
        "",
        "<init>",
        "()V",
        "text",
        "",
        "styles",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "",
        "lambda",
        "Lkotlin/Function0;",
        "",
        "",
        "build",
        "Lcom/kakaogame/ui/font/Text;",
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
.field private final styles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 949
    iput-object v0, p0, Lcom/kakaogame/ui/font/TextBuilder;->text:Ljava/lang/String;

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/ui/font/TextBuilder;->styles:Ljava/util/ArrayList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final build()Lcom/kakaogame/ui/font/Text;
    .locals 3

    .line 1049
    new-instance v0, Lcom/kakaogame/ui/font/Text;

    iget-object v1, p0, Lcom/kakaogame/ui/font/TextBuilder;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/ui/font/TextBuilder;->styles:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/ui/font/Text;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final styles(Lkotlin/jvm/functions/Function0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const v0, 0x6d0227b0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/kakaogame/ui/font/TextBuilder;->styles:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final text(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x6d0227b0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/kakaogame/ui/font/TextBuilder;->text:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
