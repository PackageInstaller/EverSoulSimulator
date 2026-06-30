.class public final enum Lcom/kakaogame/KGAdConsent;
.super Ljava/lang/Enum;
.source "KGSystem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGAdConsent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakaogame/KGAdConsent;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "ENABLE",
        "DISABLE",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGAdConsent;

.field public static final enum DISABLE:Lcom/kakaogame/KGAdConsent;

.field public static final enum ENABLE:Lcom/kakaogame/KGAdConsent;

.field public static final enum NONE:Lcom/kakaogame/KGAdConsent;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGAdConsent;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakaogame/KGAdConsent;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGAdConsent;->NONE:Lcom/kakaogame/KGAdConsent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGAdConsent;->ENABLE:Lcom/kakaogame/KGAdConsent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/KGAdConsent;->DISABLE:Lcom/kakaogame/KGAdConsent;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2119
    new-instance v0, Lcom/kakaogame/KGAdConsent;

    const v1, -0x2247369c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/KGAdConsent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/KGAdConsent;->NONE:Lcom/kakaogame/KGAdConsent;

    new-instance v0, Lcom/kakaogame/KGAdConsent;

    const v1, 0x7d776865

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/KGAdConsent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/KGAdConsent;->ENABLE:Lcom/kakaogame/KGAdConsent;

    new-instance v0, Lcom/kakaogame/KGAdConsent;

    const v1, -0x2245a07c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/KGAdConsent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/KGAdConsent;->DISABLE:Lcom/kakaogame/KGAdConsent;

    invoke-static {}, Lcom/kakaogame/KGAdConsent;->$values()[Lcom/kakaogame/KGAdConsent;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGAdConsent;->$VALUES:[Lcom/kakaogame/KGAdConsent;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGAdConsent;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 2109
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
            "Lcom/kakaogame/KGAdConsent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGAdConsent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGAdConsent;
    .locals 1

    const-class v0, Lcom/kakaogame/KGAdConsent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 2129
    check-cast p0, Lcom/kakaogame/KGAdConsent;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGAdConsent;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGAdConsent;->$VALUES:[Lcom/kakaogame/KGAdConsent;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 2129
    check-cast v0, [Lcom/kakaogame/KGAdConsent;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
