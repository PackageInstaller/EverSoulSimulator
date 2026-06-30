.class public final Lcom/kakaogame/KGItem;
.super Lcom/kakaogame/KGObject;
.source "KGItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGItem$Companion;,
        Lcom/kakaogame/KGItem$KGItemState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u00020\u0001:\u0002\u0019\u001aB\u001f\u0008\u0000\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/kakaogame/KGItem;",
        "Lcom/kakaogame/KGObject;",
        "m",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "itemId",
        "getItemId",
        "()Ljava/lang/String;",
        "itemCode",
        "getItemCode",
        "quantity",
        "",
        "getQuantity",
        "()J",
        "validityTime",
        "getValidityTime",
        "expiryTime",
        "getExpiryTime",
        "state",
        "Lcom/kakaogame/KGItem$KGItemState;",
        "getState",
        "()Lcom/kakaogame/KGItem$KGItemState;",
        "KGItemState",
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
.field public static final Companion:Lcom/kakaogame/KGItem$Companion;

.field private static final TAG:Ljava/lang/String; = "KGItem"

.field private static final serialVersionUID:J = -0x12bc920e4c5f1e0fL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGItem;->Companion:Lcom/kakaogame/KGItem$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, -0x22451ed4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    const-string p1, "state"

    .line 119
    invoke-virtual {p0, p1}, Lcom/kakaogame/KGItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x2252dfa6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 129
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    sget-object v0, Lcom/kakaogame/KGItem$KGItemState;->CONFIRMED:Lcom/kakaogame/KGItem$KGItemState;

    invoke-virtual {v0}, Lcom/kakaogame/KGItem$KGItemState;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    const v1, 0x7d77d775

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x5d17f97f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    sget-object v0, Lcom/kakaogame/KGItem$KGItemState;->EXPIRED:Lcom/kakaogame/KGItem$KGItemState;

    invoke-virtual {v0}, Lcom/kakaogame/KGItem$KGItemState;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 159
    :cond_3
    :goto_1
    sget-object v0, Lcom/kakaogame/KGItem$KGItemState;->UNCONFIRMED:Lcom/kakaogame/KGItem$KGItemState;

    invoke-virtual {v0}, Lcom/kakaogame/KGItem$KGItemState;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/kakaogame/KGItem;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getExpiryTime()J
    .locals 2

    const v0, 0x2252d98e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getItemCode()Ljava/lang/String;
    .locals 2

    const v0, 0x2252d96e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 2

    const v0, 0x5d17f85f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getQuantity()J
    .locals 2

    const v0, -0x451ebe6f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getState()Lcom/kakaogame/KGItem$KGItemState;
    .locals 5

    const v0, 0x543ed30a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 709
    :goto_0
    invoke-static {}, Lcom/kakaogame/KGItem$KGItemState;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/KGItem$KGItemState;

    .line 719
    invoke-virtual {v2}, Lcom/kakaogame/KGItem$KGItemState;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 759
    :cond_2
    sget-object v0, Lcom/kakaogame/KGItem$KGItemState;->EXPIRED:Lcom/kakaogame/KGItem$KGItemState;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getValidityTime()J
    .locals 2

    const v0, -0x224518b4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGItem;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method
