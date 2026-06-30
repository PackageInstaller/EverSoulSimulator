.class public final Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan$Companion;
.super Ljava/lang/Object;
.source "KGGoogleGamesLeaderboards.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0002\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan$Companion;",
        "",
        "<init>",
        "()V",
        "get",
        "Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;",
        "span",
        "",
        "(Ljava/lang/Integer;)Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;",
        "idp_google_release"
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

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final get(Ljava/lang/Integer;)Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;
    .locals 2

    if-nez p1, :cond_0

    .line 1089
    sget-object p1, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->NONE:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    goto :goto_0

    .line 1099
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->DAILY:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1109
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    sget-object p1, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->WEEKLY:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 1119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->ALL_TIME:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    goto :goto_0

    .line 1129
    :cond_3
    sget-object p1, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->NONE:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
