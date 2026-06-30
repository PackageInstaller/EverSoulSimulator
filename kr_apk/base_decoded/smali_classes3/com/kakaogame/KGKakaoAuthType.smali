.class public final enum Lcom/kakaogame/KGKakaoAuthType;
.super Ljava/lang/Enum;
.source "KGKakaoAuthType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoAuthType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGKakaoAuthType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoAuthType;",
        "",
        "authType",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getAuthType",
        "()Ljava/lang/String;",
        "KakaoTalk",
        "KakaoWeb",
        "KakaoAllType",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGKakaoAuthType;

.field public static final Companion:Lcom/kakaogame/KGKakaoAuthType$Companion;

.field public static final enum KakaoAllType:Lcom/kakaogame/KGKakaoAuthType;

.field public static final enum KakaoTalk:Lcom/kakaogame/KGKakaoAuthType;

.field public static final enum KakaoWeb:Lcom/kakaogame/KGKakaoAuthType;


# instance fields
.field private final authType:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGKakaoAuthType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakaogame/KGKakaoAuthType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGKakaoAuthType;->KakaoTalk:Lcom/kakaogame/KGKakaoAuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGKakaoAuthType;->KakaoWeb:Lcom/kakaogame/KGKakaoAuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/KGKakaoAuthType;->KakaoAllType:Lcom/kakaogame/KGKakaoAuthType;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 109
    new-instance v0, Lcom/kakaogame/KGKakaoAuthType;

    const/4 v1, 0x0

    const v2, -0x22451b24

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x543ed00a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGKakaoAuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGKakaoAuthType;->KakaoTalk:Lcom/kakaogame/KGKakaoAuthType;

    .line 139
    new-instance v0, Lcom/kakaogame/KGKakaoAuthType;

    const/4 v1, 0x1

    const v2, 0x2252db26

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5d17fa17

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGKakaoAuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGKakaoAuthType;->KakaoWeb:Lcom/kakaogame/KGKakaoAuthType;

    .line 179
    new-instance v0, Lcom/kakaogame/KGKakaoAuthType;

    const/4 v1, 0x2

    const v2, 0x5d17fac7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x451f4327

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGKakaoAuthType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGKakaoAuthType;->KakaoAllType:Lcom/kakaogame/KGKakaoAuthType;

    invoke-static {}, Lcom/kakaogame/KGKakaoAuthType;->$values()[Lcom/kakaogame/KGKakaoAuthType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGKakaoAuthType;->$VALUES:[Lcom/kakaogame/KGKakaoAuthType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGKakaoAuthType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/KGKakaoAuthType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoAuthType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoAuthType;->Companion:Lcom/kakaogame/KGKakaoAuthType$Companion;

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

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/kakaogame/KGKakaoAuthType;->authType:Ljava/lang/String;

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
            "Lcom/kakaogame/KGKakaoAuthType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGKakaoAuthType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGKakaoAuthType;
    .locals 1

    const-class v0, Lcom/kakaogame/KGKakaoAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 299
    check-cast p0, Lcom/kakaogame/KGKakaoAuthType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGKakaoAuthType;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGKakaoAuthType;->$VALUES:[Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 299
    check-cast v0, [Lcom/kakaogame/KGKakaoAuthType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAuthType()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/kakaogame/KGKakaoAuthType;->authType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
