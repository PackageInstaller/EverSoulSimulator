.class public final Lcom/kakaogame/KGPlayer$KGDate;
.super Lcom/kakaogame/KGObject;
.source "KGPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGPlayer$KGDate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/KGPlayer$KGDate;",
        "Lcom/kakaogame/KGObject;",
        "year",
        "",
        "month",
        "day",
        "<init>",
        "(III)V",
        "getYear",
        "()I",
        "getMonth",
        "getDay",
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
.field public static final Companion:Lcom/kakaogame/KGPlayer$KGDate$Companion;

.field private static final KEY_DATE_DAY:Ljava/lang/String; = "day"

.field private static final KEY_DATE_MONTH:Ljava/lang/String; = "month"

.field private static final KEY_DATE_YEAR:Ljava/lang/String; = "year"

.field private static final TAG:Ljava/lang/String; = "NZDate"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGPlayer$KGDate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGPlayer$KGDate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGPlayer$KGDate;->Companion:Lcom/kakaogame/KGPlayer$KGDate$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1099
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x5438629a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGPlayer$KGDate;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "month"

    .line 1439
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGPlayer$KGDate;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "day"

    .line 1449
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGPlayer$KGDate;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getDay()I
    .locals 1

    const v0, 0x225469ee

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 1329
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGPlayer$KGDate;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMonth()I
    .locals 1

    const v0, 0x7d7160dd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1249
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGPlayer$KGDate;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getYear()I
    .locals 1

    const v0, 0x5438629a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGPlayer$KGDate;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
