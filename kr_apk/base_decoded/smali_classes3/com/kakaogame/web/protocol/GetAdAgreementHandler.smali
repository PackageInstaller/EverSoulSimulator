.class public final Lcom/kakaogame/web/protocol/GetAdAgreementHandler;
.super Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.source "GetAdAgreementHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/protocol/GetAdAgreementHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/web/protocol/GetAdAgreementHandler;",
        "Lcom/kakaogame/web/protocol/WebAppProtocolHandler;",
        "<init>",
        "()V",
        "handleInternal",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "webUri",
        "Landroid/net/Uri;",
        "makeResponseString",
        "code",
        "",
        "enable",
        "",
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
.field public static final Companion:Lcom/kakaogame/web/protocol/GetAdAgreementHandler$Companion;

.field private static final TAG:Ljava/lang/String; = "GetAdAgreementHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/web/protocol/GetAdAgreementHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/web/protocol/GetAdAgreementHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/web/protocol/GetAdAgreementHandler;->Companion:Lcom/kakaogame/web/protocol/GetAdAgreementHandler$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const v0, -0x224ef9cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/kakaogame/web/protocol/GetAdAgreementHandler;->setWebAppProtocolHandler()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final makeResponseString(IZ)Ljava/lang/String;
    .locals 4

    .line 319
    new-instance v0, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v0}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 329
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    const v3, 0x6d0b76e8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 339
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "enable"

    .line 349
    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/util/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    const-string p1, "getAdAgreement: "

    .line 139
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, -0x224ef9cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d7eef25

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 169
    :try_start_0
    invoke-static {}, Lcom/kakaogame/player/PlayerService;->getAdAgreement()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    .line 219
    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/kakaogame/web/protocol/GetAdAgreementHandler;->makeResponseString(IZ)Ljava/lang/String;

    move-result-object v0

    .line 229
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 259
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0xfa1

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/web/protocol/GetAdAgreementHandler;->makeResponseString(IZ)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
