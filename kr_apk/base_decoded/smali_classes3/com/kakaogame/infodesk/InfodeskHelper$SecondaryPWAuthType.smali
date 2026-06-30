.class public final enum Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;
.super Ljava/lang/Enum;
.source "InfodeskHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/infodesk/InfodeskHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecondaryPWAuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "EMAIL",
        "SMS",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

.field public static final enum EMAIL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

.field public static final enum SMS:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->EMAIL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->SMS:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1299
    new-instance v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    const v1, 0x5439deca

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->EMAIL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    new-instance v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    const v1, -0x451ba617

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->SMS:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    invoke-static {}, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->$values()[Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->$VALUES:[Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 1289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->value:Ljava/lang/String;

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
            "Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;
    .locals 1

    const-class v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1309
    check-cast p0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;
    .locals 1

    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->$VALUES:[Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1309
    check-cast v0, [Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->value:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
