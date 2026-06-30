.class public final enum Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;
.super Ljava/lang/Enum;
.source "PunishedUserDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/view/PunishedUserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NOTICE",
        "EMAIL",
        "AGREEMENT",
        "CONFIRM_CODE",
        "UNREGISTER_GUIDE",
        "UNREGISTER_CONFIRM",
        "AGREEMENT_DETAIL",
        "CLOSE",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field public static final enum AGREEMENT:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field public static final enum AGREEMENT_DETAIL:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field public static final enum CLOSE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field public static final enum CONFIRM_CODE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field public static final enum EMAIL:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field public static final enum NOTICE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field public static final enum UNREGISTER_CONFIRM:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

.field public static final enum UNREGISTER_GUIDE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->NOTICE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->EMAIL:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->AGREEMENT:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CONFIRM_CODE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->UNREGISTER_GUIDE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->UNREGISTER_CONFIRM:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->AGREEMENT_DETAIL:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CLOSE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 3889
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const v1, 0x7d77b3dd

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->NOTICE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 3899
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const v1, 0x5439deca

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->EMAIL:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 3909
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const v1, 0x5d10f5c7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->AGREEMENT:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 3919
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const v1, 0x5d10f5bf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CONFIRM_CODE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 3929
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const v1, 0x2255d48e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->UNREGISTER_GUIDE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 3939
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const v1, 0x2255d43e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->UNREGISTER_CONFIRM:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 3949
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const v1, 0x2255d75e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->AGREEMENT_DETAIL:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    .line 3959
    new-instance v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    const v1, -0x2242167c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->CLOSE:Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-static {}, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->$values()[Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->$VALUES:[Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void

    nop

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

    .line 3879
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->value:I

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
            "Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;
    .locals 1

    const-class v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 3969
    check-cast p0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;
    .locals 1

    sget-object v0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->$VALUES:[Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 3969
    check-cast v0, [Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 3879
    iget v0, p0, Lcom/kakaogame/auth/view/PunishedUserDialog$ViewType;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
