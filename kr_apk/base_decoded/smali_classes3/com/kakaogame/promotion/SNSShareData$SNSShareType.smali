.class public final enum Lcom/kakaogame/promotion/SNSShareData$SNSShareType;
.super Ljava/lang/Enum;
.source "SNSShareData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/promotion/SNSShareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SNSShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/promotion/SNSShareData$SNSShareType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakaogame/promotion/SNSShareData$SNSShareType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "linkInvite",
        "linkShare",
        "nonLinkShare",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

.field public static final enum linkInvite:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

.field public static final enum linkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

.field public static final enum nonLinkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/promotion/SNSShareData$SNSShareType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkInvite:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->nonLinkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 439
    new-instance v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    const v1, -0x224e9734

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkInvite:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    .line 469
    new-instance v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    const v1, -0x224e97d4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    .line 499
    new-instance v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    const v1, -0x4515302f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->nonLinkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    invoke-static {}, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->$values()[Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->$VALUES:[Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void

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

    .line 419
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
            "Lcom/kakaogame/promotion/SNSShareData$SNSShareType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/promotion/SNSShareData$SNSShareType;
    .locals 1

    const-class v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 509
    check-cast p0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/promotion/SNSShareData$SNSShareType;
    .locals 1

    sget-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->$VALUES:[Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 509
    check-cast v0, [Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
