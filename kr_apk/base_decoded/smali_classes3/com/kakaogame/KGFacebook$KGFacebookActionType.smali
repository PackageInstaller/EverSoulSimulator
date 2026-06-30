.class public final enum Lcom/kakaogame/KGFacebook$KGFacebookActionType;
.super Ljava/lang/Enum;
.source "KGFacebook.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGFacebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KGFacebookActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGFacebook$KGFacebookActionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakaogame/KGFacebook$KGFacebookActionType;",
        "",
        "actionType",
        "Lcom/facebook/share/model/GameRequestContent$ActionType;",
        "<init>",
        "(Ljava/lang/String;ILcom/facebook/share/model/GameRequestContent$ActionType;)V",
        "getActionType",
        "()Lcom/facebook/share/model/GameRequestContent$ActionType;",
        "NONE",
        "SEND",
        "ASKFOR",
        "TURN",
        "idp_facebook_release"
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGFacebook$KGFacebookActionType;

.field public static final enum ASKFOR:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

.field public static final enum NONE:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

.field public static final enum SEND:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

.field public static final enum TURN:Lcom/kakaogame/KGFacebook$KGFacebookActionType;


# instance fields
.field private final actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGFacebook$KGFacebookActionType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->NONE:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->SEND:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->ASKFOR:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->TURN:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 2719
    new-instance v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, -0x2247369c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGFacebook$KGFacebookActionType;-><init>(Ljava/lang/String;ILcom/facebook/share/model/GameRequestContent$ActionType;)V

    sput-object v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->NONE:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    new-instance v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    const v3, -0x22457ac4

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGFacebook$KGFacebookActionType;-><init>(Ljava/lang/String;ILcom/facebook/share/model/GameRequestContent$ActionType;)V

    sput-object v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->SEND:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    new-instance v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    const v3, 0x33651703

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGFacebook$KGFacebookActionType;-><init>(Ljava/lang/String;ILcom/facebook/share/model/GameRequestContent$ActionType;)V

    sput-object v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->ASKFOR:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    new-instance v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    const/4 v1, 0x3

    .line 2729
    sget-object v2, Lcom/facebook/share/model/GameRequestContent$ActionType;->TURN:Lcom/facebook/share/model/GameRequestContent$ActionType;

    const v3, -0x22454574

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 2719
    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGFacebook$KGFacebookActionType;-><init>(Ljava/lang/String;ILcom/facebook/share/model/GameRequestContent$ActionType;)V

    sput-object v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->TURN:Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    invoke-static {}, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->$values()[Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->$VALUES:[Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/share/model/GameRequestContent$ActionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/GameRequestContent$ActionType;",
            ")V"
        }
    .end annotation

    .line 2709
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

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
            "Lcom/kakaogame/KGFacebook$KGFacebookActionType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGFacebook$KGFacebookActionType;
    .locals 1

    const-class v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 2749
    check-cast p0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGFacebook$KGFacebookActionType;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->$VALUES:[Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 2749
    check-cast v0, [Lcom/kakaogame/KGFacebook$KGFacebookActionType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getActionType()Lcom/facebook/share/model/GameRequestContent$ActionType;
    .locals 1

    .line 2709
    iget-object v0, p0, Lcom/kakaogame/KGFacebook$KGFacebookActionType;->actionType:Lcom/facebook/share/model/GameRequestContent$ActionType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
