.class public final Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;
.super Ljava/lang/Object;
.source "SDKLogManager.kt"

# interfaces
.implements Lcom/kakaogame/Logger$LoggingEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/log/SDKLogManager;->initSDKLogManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/kakaogame/log/SDKLogManager$initSDKLogManager$1",
        "Lcom/kakaogame/Logger$LoggingEventListener;",
        "onLog",
        "",
        "loggingLevel",
        "",
        "tag",
        "",
        "msg",
        "tr",
        "",
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


# instance fields
.field final synthetic this$0:Lcom/kakaogame/log/SDKLogManager;


# direct methods
.method constructor <init>(Lcom/kakaogame/log/SDKLogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;->this$0:Lcom/kakaogame/log/SDKLogManager;

    .line 1969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string p4, "[Encrypted Log]"

    .line 1989
    iget-object v0, p0, Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;->this$0:Lcom/kakaogame/log/SDKLogManager;

    invoke-static {v0}, Lcom/kakaogame/log/SDKLogManager;->access$isSaveOnFile$p(Lcom/kakaogame/log/SDKLogManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    return-void

    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;->this$0:Lcom/kakaogame/log/SDKLogManager;

    invoke-static {v0, p3}, Lcom/kakaogame/log/SDKLogManager;->access$getTokenInsertChar(Lcom/kakaogame/log/SDKLogManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2059
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2069
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/kakaogame/util/DateUtil;->convertLongToFormattedString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v1, 0x6d0828f8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 2079
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2089
    iget-object v1, p0, Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;->this$0:Lcom/kakaogame/log/SDKLogManager;

    invoke-static {v1, p1}, Lcom/kakaogame/log/SDKLogManager;->access$getLevelCode(Lcom/kakaogame/log/SDKLogManager;I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p1, "]"

    .line 2099
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "::"

    .line 2119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2129
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    .line 2139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2159
    :try_start_0
    iget-object p1, p0, Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;->this$0:Lcom/kakaogame/log/SDKLogManager;

    invoke-static {p1}, Lcom/kakaogame/log/SDKLogManager;->access$getEncryptKeySet$p(Lcom/kakaogame/log/SDKLogManager;)Lkotlin/Pair;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "encryptKeySet"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 2169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "toString(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, p3}, Lcom/kakaogame/util/AES256Cipher;->encodeString([B[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2199
    iget-object p2, p0, Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;->this$0:Lcom/kakaogame/log/SDKLogManager;

    invoke-static {p2, p1}, Lcom/kakaogame/log/SDKLogManager;->access$writeLogOnFile(Lcom/kakaogame/log/SDKLogManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2219
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
