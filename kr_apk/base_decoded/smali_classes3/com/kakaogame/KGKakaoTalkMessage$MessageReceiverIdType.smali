.class public final enum Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;
.super Ljava/lang/Enum;
.source "KGKakaoTalkMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoTalkMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageReceiverIdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;",
        "",
        "string",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getString",
        "()Ljava/lang/String;",
        "PLAYER_ID",
        "UUID",
        "CHAT_ID",
        "idp_kakao_release"
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

.field private static final synthetic $VALUES:[Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

.field public static final enum CHAT_ID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

.field public static final enum PLAYER_ID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

.field public static final enum UUID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->PLAYER_ID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->UUID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->CHAT_ID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8199
    new-instance v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    const/4 v1, 0x0

    const v2, -0x224509cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x22538366

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->PLAYER_ID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    new-instance v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    const/4 v1, 0x1

    const v2, 0x3364d9d3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x2244426c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->UUID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    new-instance v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    const/4 v1, 0x2

    const v2, 0x2253813e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d768b85

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->CHAT_ID:Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    invoke-static {}, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->$values()[Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->$VALUES:[Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 8189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->string:Ljava/lang/String;

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
            "Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;
    .locals 1

    const-class v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 8209
    check-cast p0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->$VALUES:[Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 8209
    check-cast v0, [Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 1

    .line 8189
    iget-object v0, p0, Lcom/kakaogame/KGKakaoTalkMessage$MessageReceiverIdType;->string:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
