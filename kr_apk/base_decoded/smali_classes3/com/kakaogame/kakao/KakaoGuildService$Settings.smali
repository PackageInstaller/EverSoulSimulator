.class public final Lcom/kakaogame/kakao/KakaoGuildService$Settings;
.super Ljava/lang/Object;
.source "KakaoGuildService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/kakao/KakaoGuildService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/kakao/KakaoGuildService$Settings;",
        "",
        "<init>",
        "()V",
        "sendMessageUri",
        "",
        "getSendMessageUri",
        "()Ljava/lang/String;",
        "setSendMessageUri",
        "(Ljava/lang/String;)V",
        "getChatSchemeUri",
        "getGetChatSchemeUri",
        "setGetChatSchemeUri",
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
.field public static final INSTANCE:Lcom/kakaogame/kakao/KakaoGuildService$Settings;

.field private static getChatSchemeUri:Ljava/lang/String;

.field private static sendMessageUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/kakao/KakaoGuildService$Settings;

    invoke-direct {v0}, Lcom/kakaogame/kakao/KakaoGuildService$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/kakao/KakaoGuildService$Settings;->INSTANCE:Lcom/kakaogame/kakao/KakaoGuildService$Settings;

    .line 1579
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x336feb63

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1d61ef

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/kakao/KakaoGuildService$Settings;->sendMessageUri:Ljava/lang/String;

    .line 1589
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x336fed63

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224f83b4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/kakao/KakaoGuildService$Settings;->getChatSchemeUri:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getGetChatSchemeUri()Ljava/lang/String;
    .locals 1

    .line 1589
    sget-object v0, Lcom/kakaogame/kakao/KakaoGuildService$Settings;->getChatSchemeUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSendMessageUri()Ljava/lang/String;
    .locals 1

    .line 1579
    sget-object v0, Lcom/kakaogame/kakao/KakaoGuildService$Settings;->sendMessageUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setGetChatSchemeUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1589
    sput-object p1, Lcom/kakaogame/kakao/KakaoGuildService$Settings;->getChatSchemeUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setSendMessageUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1579
    sput-object p1, Lcom/kakaogame/kakao/KakaoGuildService$Settings;->sendMessageUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
