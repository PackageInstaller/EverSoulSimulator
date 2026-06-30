.class public final enum Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;
.super Ljava/lang/Enum;
.source "KGSessionForCustomUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGSessionForCustomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KGIdpChoiceMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "CurrentAccount",
        "AlreadyConnectedAccount",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

.field public static final enum AlreadyConnectedAccount:Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

.field public static final Companion:Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode$Companion;

.field public static final enum CurrentAccount:Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->CurrentAccount:Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->AlreadyConnectedAccount:Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 3349
    new-instance v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    const/4 v1, 0x0

    const v2, 0x7d71cfcd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x4518a0d7

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->CurrentAccount:Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    .line 3359
    new-instance v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    const/4 v1, 0x1

    const v2, -0x22430114

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5d11e06f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->AlreadyConnectedAccount:Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    invoke-static {}, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->$values()[Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->$VALUES:[Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->Companion:Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode$Companion;

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

    .line 3339
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->code:Ljava/lang/String;

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
            "Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;
    .locals 1

    const-class v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 3469
    check-cast p0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->$VALUES:[Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 3469
    check-cast v0, [Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 3339
    iget-object v0, p0, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->code:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
