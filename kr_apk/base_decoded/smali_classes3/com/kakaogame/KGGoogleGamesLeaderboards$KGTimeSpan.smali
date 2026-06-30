.class public final enum Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;
.super Ljava/lang/Enum;
.source "KGGoogleGamesLeaderboards.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGGoogleGamesLeaderboards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KGTimeSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;",
        "",
        "span",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getSpan",
        "()I",
        "setSpan",
        "(I)V",
        "NONE",
        "DAILY",
        "WEEKLY",
        "ALL_TIME",
        "get",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

.field public static final enum ALL_TIME:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

.field public static final Companion:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan$Companion;

.field public static final enum DAILY:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

.field public static final enum NONE:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

.field public static final enum WEEKLY:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;


# instance fields
.field private span:I


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->NONE:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->DAILY:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->WEEKLY:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->ALL_TIME:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 979
    new-instance v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    const/4 v1, -0x1

    const v2, -0x2247369c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->NONE:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    new-instance v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    const v1, 0x5d17dfaf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->DAILY:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    new-instance v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    const v1, 0x336553e3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->WEEKLY:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    new-instance v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    const v1, 0x2252fea6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->ALL_TIME:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    invoke-static {}, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->$values()[Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->$VALUES:[Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->Companion:Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 969
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->span:I

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
            "Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;
    .locals 1

    const-class v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1169
    check-cast p0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->$VALUES:[Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1169
    check-cast v0, [Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final get()I
    .locals 1

    .line 1029
    iget v0, p0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->span:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSpan()I
    .locals 1

    .line 969
    iget v0, p0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->span:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setSpan(I)V
    .locals 0

    .line 969
    iput p1, p0, Lcom/kakaogame/KGGoogleGamesLeaderboards$KGTimeSpan;->span:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method
