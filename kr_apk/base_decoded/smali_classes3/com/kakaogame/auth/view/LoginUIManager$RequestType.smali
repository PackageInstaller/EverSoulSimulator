.class public final enum Lcom/kakaogame/auth/view/LoginUIManager$RequestType;
.super Ljava/lang/Enum;
.source "LoginUIManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/view/LoginUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/auth/view/LoginUIManager$RequestType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "setValue",
        "(I)V",
        "LOGIN",
        "CONNECT",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

.field public static final enum CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

.field public static final Companion:Lcom/kakaogame/auth/view/LoginUIManager$RequestType$Companion;

.field public static final enum LOGIN:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;


# instance fields
.field private value:I


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/auth/view/LoginUIManager$RequestType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->LOGIN:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8099
    new-instance v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    const v1, -0x4519ebd7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->LOGIN:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    new-instance v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    const v1, 0x336221fb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    invoke-static {}, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->$values()[Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->$VALUES:[Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/auth/view/LoginUIManager$RequestType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->Companion:Lcom/kakaogame/auth/view/LoginUIManager$RequestType$Companion;

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

    .line 8089
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->value:I

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
            "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/auth/view/LoginUIManager$RequestType;
    .locals 1

    const-class v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 8209
    check-cast p0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/auth/view/LoginUIManager$RequestType;
    .locals 1

    sget-object v0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->$VALUES:[Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 8209
    check-cast v0, [Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 8089
    iget v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setValue(I)V
    .locals 0

    .line 8089
    iput p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->value:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method
