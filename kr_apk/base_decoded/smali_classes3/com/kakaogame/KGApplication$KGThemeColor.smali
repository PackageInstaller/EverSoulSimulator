.class public final enum Lcom/kakaogame/KGApplication$KGThemeColor;
.super Ljava/lang/Enum;
.source "KGApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KGThemeColor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGApplication$KGThemeColor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGApplication$KGThemeColor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kakaogame/KGApplication$KGThemeColor;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "setCode",
        "(Ljava/lang/String;)V",
        "WHITE",
        "BLACK",
        "GRAY",
        "CUSTOM",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGApplication$KGThemeColor;

.field public static final enum BLACK:Lcom/kakaogame/KGApplication$KGThemeColor;

.field public static final enum CUSTOM:Lcom/kakaogame/KGApplication$KGThemeColor;

.field public static final Companion:Lcom/kakaogame/KGApplication$KGThemeColor$Companion;

.field public static final enum GRAY:Lcom/kakaogame/KGApplication$KGThemeColor;

.field public static final enum WHITE:Lcom/kakaogame/KGApplication$KGThemeColor;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGApplication$KGThemeColor;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakaogame/KGApplication$KGThemeColor;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGApplication$KGThemeColor;->WHITE:Lcom/kakaogame/KGApplication$KGThemeColor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGApplication$KGThemeColor;->BLACK:Lcom/kakaogame/KGApplication$KGThemeColor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/KGApplication$KGThemeColor;->GRAY:Lcom/kakaogame/KGApplication$KGThemeColor;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakaogame/KGApplication$KGThemeColor;->CUSTOM:Lcom/kakaogame/KGApplication$KGThemeColor;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5479
    new-instance v0, Lcom/kakaogame/KGApplication$KGThemeColor;

    const/4 v1, 0x0

    const v2, 0x6d0b5830

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d77469d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGApplication$KGThemeColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->WHITE:Lcom/kakaogame/KGApplication$KGThemeColor;

    new-instance v0, Lcom/kakaogame/KGApplication$KGThemeColor;

    const/4 v1, 0x1

    const v2, 0x543e44ca

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x3365e243

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGApplication$KGThemeColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->BLACK:Lcom/kakaogame/KGApplication$KGThemeColor;

    new-instance v0, Lcom/kakaogame/KGApplication$KGThemeColor;

    const/4 v1, 0x2

    const v2, 0x6d0b5b10

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x451e29df

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGApplication$KGThemeColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->GRAY:Lcom/kakaogame/KGApplication$KGThemeColor;

    new-instance v0, Lcom/kakaogame/KGApplication$KGThemeColor;

    const/4 v1, 0x3

    const v2, -0x22458e4c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d7747d5

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGApplication$KGThemeColor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->CUSTOM:Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-static {}, Lcom/kakaogame/KGApplication$KGThemeColor;->$values()[Lcom/kakaogame/KGApplication$KGThemeColor;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->$VALUES:[Lcom/kakaogame/KGApplication$KGThemeColor;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/KGApplication$KGThemeColor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGApplication$KGThemeColor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->Companion:Lcom/kakaogame/KGApplication$KGThemeColor$Companion;

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

    .line 5469
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakaogame/KGApplication$KGThemeColor;->code:Ljava/lang/String;

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
            "Lcom/kakaogame/KGApplication$KGThemeColor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGApplication$KGThemeColor;
    .locals 1

    const-class v0, Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 5659
    check-cast p0, Lcom/kakaogame/KGApplication$KGThemeColor;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGApplication$KGThemeColor;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->$VALUES:[Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 5659
    check-cast v0, [Lcom/kakaogame/KGApplication$KGThemeColor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 5469
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGThemeColor;->code:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5469
    iput-object p1, p0, Lcom/kakaogame/KGApplication$KGThemeColor;->code:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
