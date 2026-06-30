.class public final Lcom/kakaogame/session/SessionUtil;
.super Ljava/lang/Object;
.source "SessionUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/session/SessionUtil;",
        "",
        "<init>",
        "()V",
        "TRANSACTION_NO",
        "",
        "getConnectParameter",
        "request",
        "Lcom/kakaogame/server/ServerRequest;",
        "getCompressedMessage",
        "common-kakaogames_release"
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
.field public static final INSTANCE:Lcom/kakaogame/session/SessionUtil;

.field public static final TRANSACTION_NO:Ljava/lang/String; = "txNo"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/session/SessionUtil;

    invoke-direct {v0}, Lcom/kakaogame/session/SessionUtil;-><init>()V

    sput-object v0, Lcom/kakaogame/session/SessionUtil;->INSTANCE:Lcom/kakaogame/session/SessionUtil;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getCompressedMessage(Lcom/kakaogame/server/ServerRequest;)Ljava/lang/String;
    .locals 0

    .line 219
    invoke-virtual {p1}, Lcom/kakaogame/server/ServerRequest;->getRequestMessage()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lcom/kakaogame/util/StringUtil;->compress(Ljava/lang/String;)[B

    move-result-object p1

    .line 239
    invoke-static {p1}, Lcom/kakaogame/util/Base64Util;->getUrlSafeBase64([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getConnectParameter(Lcom/kakaogame/server/ServerRequest;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    const v1, 0x7d7f9dc5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224d549c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kakaogame/session/SessionUtil;->INSTANCE:Lcom/kakaogame/session/SessionUtil;

    invoke-direct {v2, p0}, Lcom/kakaogame/session/SessionUtil;->getCompressedMessage(Lcom/kakaogame/server/ServerRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, -0x451e20f7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method
