.class public final enum Lcom/kakaogame/KGIdpProfile$KGIdpCode;
.super Ljava/lang/Enum;
.source "KGIdpProfile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGIdpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KGIdpCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGIdpProfile$KGIdpCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGIdpProfile$KGIdpCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/kakaogame/KGIdpProfile$KGIdpCode;",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "Guest",
        "Kakao",
        "Facebook",
        "Google",
        "GooglePlayGames",
        "SigninWithApple",
        "Twitter",
        "Gamania",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGIdpProfile$KGIdpCode;

.field public static final Companion:Lcom/kakaogame/KGIdpProfile$KGIdpCode$Companion;

.field public static final enum Facebook:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

.field public static final enum Gamania:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

.field public static final enum Google:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

.field public static final enum GooglePlayGames:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

.field public static final enum Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

.field public static final enum Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

.field public static final enum SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

.field public static final enum Twitter:Lcom/kakaogame/KGIdpProfile$KGIdpCode;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGIdpProfile$KGIdpCode;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Facebook:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Google:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->GooglePlayGames:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Twitter:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Gamania:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 299
    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x0

    const v2, -0x22450cec

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d77ca55

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    .line 329
    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x1

    const v2, 0x7d77c50d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d77cb9d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    .line 359
    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x2

    const v2, 0x7d77c6ad

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x543ec9ca

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Facebook:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    .line 389
    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x3

    const v2, 0x7d77c6dd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x543ec93a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Google:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    .line 409
    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x4

    const v2, -0x22450fc4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x5d17e2bf

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->GooglePlayGames:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    .line 439
    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x5

    const v2, 0x6d0bdb10

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6d0bd9a8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    .line 469
    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x6

    const v2, 0x3365622b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x3365602b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Twitter:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    .line 499
    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    const/4 v1, 0x7

    const v2, -0x451ea867

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d77c5fd

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Gamania:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-static {}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->$values()[Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->$VALUES:[Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Companion:Lcom/kakaogame/KGIdpProfile$KGIdpCode$Companion;

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

    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->code:Ljava/lang/String;

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
            "Lcom/kakaogame/KGIdpProfile$KGIdpCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGIdpProfile$KGIdpCode;
    .locals 1

    const-class v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 669
    check-cast p0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGIdpProfile$KGIdpCode;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->$VALUES:[Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 669
    check-cast v0, [Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->code:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
