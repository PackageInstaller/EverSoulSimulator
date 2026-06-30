.class public final enum Lcom/facebook/gamingservices/internal/TournamentSortOrder;
.super Ljava/lang/Enum;
.source "TournamentSortOrder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/gamingservices/internal/TournamentSortOrder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/gamingservices/internal/TournamentSortOrder;",
        "",
        "rawValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRawValue",
        "()Ljava/lang/String;",
        "toString",
        "LowerIsBetter",
        "HigherIsBetter",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/gamingservices/internal/TournamentSortOrder;

.field public static final enum HigherIsBetter:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

.field public static final enum LowerIsBetter:Lcom/facebook/gamingservices/internal/TournamentSortOrder;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/gamingservices/internal/TournamentSortOrder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->LowerIsBetter:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->HigherIsBetter:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    const/4 v1, 0x0

    const-string v2, "LOWER_IS_BETTER"

    const-string v3, "LowerIsBetter"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/gamingservices/internal/TournamentSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->LowerIsBetter:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    .line 14
    new-instance v0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    const/4 v1, 0x1

    const-string v2, "HIGHER_IS_BETTER"

    const-string v3, "HigherIsBetter"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/gamingservices/internal/TournamentSortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->HigherIsBetter:Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    invoke-static {}, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->$values()[Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    move-result-object v0

    sput-object v0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->$VALUES:[Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->rawValue:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/gamingservices/internal/TournamentSortOrder;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 19
    check-cast p0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/facebook/gamingservices/internal/TournamentSortOrder;
    .locals 2

    sget-object v0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->$VALUES:[Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, [Lcom/facebook/gamingservices/internal/TournamentSortOrder;

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getRawValue()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->rawValue:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/facebook/gamingservices/internal/TournamentSortOrder;->rawValue:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
