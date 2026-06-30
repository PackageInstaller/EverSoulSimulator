.class public final enum Lcom/kakaogame/log/tracer/TraceLoginActionCode;
.super Ljava/lang/Enum;
.source "TracerCode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/log/tracer/TraceLoginActionCode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/log/tracer/TraceLoginActionCode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SDK_COPPA_UI",
        "SDK_IDP_LOGIN",
        "SDK_IDP_PROFILE",
        "SDK_SHOW_AGREEMENT",
        "SDK_AGREEMENT_WEB_LOADING",
        "SDK_AGREEMENT_WEB_CLOSE",
        "SDK_KAKAO_SIGN_UP",
        "SDK_IDP_LIST_POPUP",
        "SDK_GUEST_POPUP",
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_AGREEMENT_WEB_CLOSE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_AGREEMENT_WEB_LOADING:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_COPPA_UI:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_GUEST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_IDP_LIST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_KAKAO_SIGN_UP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

.field public static final enum SDK_SHOW_AGREEMENT:Lcom/kakaogame/log/tracer/TraceLoginActionCode;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/log/tracer/TraceLoginActionCode;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_COPPA_UI:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_SHOW_AGREEMENT:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_LOADING:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_CLOSE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_KAKAO_SIGN_UP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LIST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_GUEST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 229
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, 0x5d1dedff

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_COPPA_UI:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 239
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, -0x4514aa3f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 249
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, 0x2258cc46

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 259
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, 0x6d01dbc0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_SHOW_AGREEMENT:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 269
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, -0x4514a99f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_LOADING:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 279
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, -0x4514a8b7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_AGREEMENT_WEB_CLOSE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 289
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, 0x336f648b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_KAKAO_SIGN_UP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 299
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, -0x224f0994

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LIST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 309
    new-instance v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const v1, -0x4514aeb7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_GUEST_POPUP:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-static {}, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->$values()[Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->$VALUES:[Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 219
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
            "Lcom/kakaogame/log/tracer/TraceLoginActionCode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/log/tracer/TraceLoginActionCode;
    .locals 1

    const-class v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 319
    check-cast p0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/log/tracer/TraceLoginActionCode;
    .locals 1

    sget-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->$VALUES:[Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 319
    check-cast v0, [Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
