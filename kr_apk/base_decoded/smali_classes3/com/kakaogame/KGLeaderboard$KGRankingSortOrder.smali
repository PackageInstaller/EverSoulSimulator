.class public final enum Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;
.super Ljava/lang/Enum;
.source "KGLeaderboard.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KGRankingSortOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ASCENDING",
        "DESCENDING",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

.field public static final enum ASCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

.field public static final Companion:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;

.field public static final enum DESCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->ASCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->DESCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6449
    new-instance v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    const v1, 0x6d0af2e0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->ASCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    new-instance v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    const v1, 0x6d0af248

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->DESCENDING:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    invoke-static {}, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->$values()[Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->$VALUES:[Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->Companion:Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;
    .locals 1

    const-class v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 6559
    check-cast p0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;->$VALUES:[Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 6559
    check-cast v0, [Lcom/kakaogame/KGLeaderboard$KGRankingSortOrder;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
