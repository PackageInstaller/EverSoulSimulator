.class public final enum Lcom/kakaogame/KGMessage$KGMessageState;
.super Ljava/lang/Enum;
.source "KGMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KGMessageState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGMessage$KGMessageState$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGMessage$KGMessageState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/KGMessage$KGMessageState;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue$gamesdk_release",
        "()Ljava/lang/String;",
        "UNREAD",
        "READ",
        "EXPIRED",
        "DELETED",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGMessage$KGMessageState;

.field public static final Companion:Lcom/kakaogame/KGMessage$KGMessageState$Companion;

.field public static final enum DELETED:Lcom/kakaogame/KGMessage$KGMessageState;

.field public static final enum EXPIRED:Lcom/kakaogame/KGMessage$KGMessageState;

.field public static final enum READ:Lcom/kakaogame/KGMessage$KGMessageState;

.field public static final enum UNREAD:Lcom/kakaogame/KGMessage$KGMessageState;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGMessage$KGMessageState;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakaogame/KGMessage$KGMessageState;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGMessage$KGMessageState;->UNREAD:Lcom/kakaogame/KGMessage$KGMessageState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGMessage$KGMessageState;->READ:Lcom/kakaogame/KGMessage$KGMessageState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/KGMessage$KGMessageState;->EXPIRED:Lcom/kakaogame/KGMessage$KGMessageState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakaogame/KGMessage$KGMessageState;->DELETED:Lcom/kakaogame/KGMessage$KGMessageState;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1829
    new-instance v0, Lcom/kakaogame/KGMessage$KGMessageState;

    const/4 v1, 0x0

    const v2, 0x54381e1a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x54381e5a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGMessage$KGMessageState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->UNREAD:Lcom/kakaogame/KGMessage$KGMessageState;

    .line 1859
    new-instance v0, Lcom/kakaogame/KGMessage$KGMessageState;

    const/4 v1, 0x1

    const v2, -0x4518722f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x451c826f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGMessage$KGMessageState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->READ:Lcom/kakaogame/KGMessage$KGMessageState;

    .line 1889
    new-instance v0, Lcom/kakaogame/KGMessage$KGMessageState;

    const/4 v1, 0x2

    const v2, -0x22451e44

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x336573bb

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGMessage$KGMessageState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->EXPIRED:Lcom/kakaogame/KGMessage$KGMessageState;

    .line 1919
    new-instance v0, Lcom/kakaogame/KGMessage$KGMessageState;

    const/4 v1, 0x3

    const v2, 0x225414ee

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6d0d0058

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGMessage$KGMessageState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->DELETED:Lcom/kakaogame/KGMessage$KGMessageState;

    invoke-static {}, Lcom/kakaogame/KGMessage$KGMessageState;->$values()[Lcom/kakaogame/KGMessage$KGMessageState;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->$VALUES:[Lcom/kakaogame/KGMessage$KGMessageState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/KGMessage$KGMessageState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGMessage$KGMessageState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->Companion:Lcom/kakaogame/KGMessage$KGMessageState$Companion;

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

    .line 1809
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakaogame/KGMessage$KGMessageState;->value:Ljava/lang/String;

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
            "Lcom/kakaogame/KGMessage$KGMessageState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGMessage$KGMessageState;
    .locals 1

    const-class v0, Lcom/kakaogame/KGMessage$KGMessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 2039
    check-cast p0, Lcom/kakaogame/KGMessage$KGMessageState;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGMessage$KGMessageState;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->$VALUES:[Lcom/kakaogame/KGMessage$KGMessageState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 2039
    check-cast v0, [Lcom/kakaogame/KGMessage$KGMessageState;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue$gamesdk_release()Ljava/lang/String;
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/kakaogame/KGMessage$KGMessageState;->value:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
