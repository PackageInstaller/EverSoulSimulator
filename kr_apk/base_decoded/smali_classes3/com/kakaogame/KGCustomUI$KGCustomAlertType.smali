.class public final enum Lcom/kakaogame/KGCustomUI$KGCustomAlertType;
.super Ljava/lang/Enum;
.source "KGCustomUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGCustomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KGCustomAlertType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGCustomUI$KGCustomAlertType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGCustomUI$KGCustomAlertType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakaogame/KGCustomUI$KGCustomAlertType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "MAINTENANCE",
        "NOTICE",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

.field public static final Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlertType$Companion;

.field public static final enum MAINTENANCE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

.field public static final enum NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGCustomUI$KGCustomAlertType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->MAINTENANCE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 169
    new-instance v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const v1, 0x543eb06a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->MAINTENANCE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    new-instance v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    const v1, 0x7d77b3dd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-static {}, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->$values()[Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->$VALUES:[Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGCustomUI$KGCustomAlertType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlertType$Companion;

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

    .line 159
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
            "Lcom/kakaogame/KGCustomUI$KGCustomAlertType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlertType;
    .locals 1

    const-class v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 279
    check-cast p0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGCustomUI$KGCustomAlertType;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->$VALUES:[Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 279
    check-cast v0, [Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
