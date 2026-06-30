.class public final Lcom/kakaogame/KGMessage$KGMessageState$Companion;
.super Ljava/lang/Object;
.source "KGMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGMessage$KGMessageState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakaogame/KGMessage$KGMessageState$Companion;",
        "",
        "<init>",
        "()V",
        "convertMessageState",
        "Lcom/kakaogame/KGMessage$KGMessageState;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGMessage$KGMessageState$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final convertMessageState(Ljava/lang/String;)Lcom/kakaogame/KGMessage$KGMessageState;
    .locals 4

    const v0, 0x543e6e4a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1959
    invoke-static {}, Lcom/kakaogame/KGMessage$KGMessageState;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/KGMessage$KGMessageState;

    .line 1969
    invoke-virtual {v1}, Lcom/kakaogame/KGMessage$KGMessageState;->getValue$gamesdk_release()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .array-data 1
    .end array-data
.end method
