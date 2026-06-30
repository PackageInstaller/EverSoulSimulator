.class public final Lcom/kakaogame/log/APILatencyLogManager;
.super Ljava/lang/Object;
.source "APILatencyLogManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPILatencyLogManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APILatencyLogManager.kt\ncom/kakaogame/log/APILatencyLogManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n1#2:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0007J\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0005H\u0007J\"\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00052\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u00172\u0006\u0010\u0018\u001a\u00020\u000cJ\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/kakaogame/log/APILatencyLogManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "used",
        "",
        "postFix",
        "folderName",
        "fileName",
        "limitSize",
        "",
        "bufferLock",
        "useLantencyLog",
        "",
        "name",
        "setNewFileName",
        "setPostFix",
        "str",
        "writeApiCall",
        "uri",
        "result",
        "Lcom/kakaogame/server/KeyBaseResult;",
        "latency",
        "uploadFileToS3",
        "context",
        "Landroid/content/Context;",
        "uploadFile",
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
.field public static final INSTANCE:Lcom/kakaogame/log/APILatencyLogManager;

.field private static final TAG:Ljava/lang/String; = "APILatencyLogManager"

.field private static final bufferLock:Ljava/lang/Object;

.field private static fileName:Ljava/lang/String; = null

.field private static final folderName:Ljava/lang/String; = "KGLatency"

.field private static final limitSize:J = 0x80000L

.field private static postFix:Ljava/lang/String;

.field private static used:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/log/APILatencyLogManager;

    invoke-direct {v0}, Lcom/kakaogame/log/APILatencyLogManager;-><init>()V

    sput-object v0, Lcom/kakaogame/log/APILatencyLogManager;->INSTANCE:Lcom/kakaogame/log/APILatencyLogManager;

    const-string v0, ""

    .line 319
    sput-object v0, Lcom/kakaogame/log/APILatencyLogManager;->postFix:Ljava/lang/String;

    .line 339
    sput-object v0, Lcom/kakaogame/log/APILatencyLogManager;->fileName:Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kakaogame/log/APILatencyLogManager;->bufferLock:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$uploadFile(Lcom/kakaogame/log/APILatencyLogManager;Landroid/content/Context;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/kakaogame/log/APILatencyLogManager;->uploadFile(Landroid/content/Context;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final setPostFix(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x6d01b638

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    sput-object p0, Lcom/kakaogame/log/APILatencyLogManager;->postFix:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final uploadFile(Landroid/content/Context;)V
    .locals 10

    const v0, 0x7d738a05

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x336f00db

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x4514cb9f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 969
    :try_start_0
    sget-object v3, Lcom/kakaogame/log/APILatencyLogManager;->fileName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kakaogame/infodesk/InfodeskService;->createUploadUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 979
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 1009
    :cond_0
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Lcom/kakaogame/log/APILatencyLogManager;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1029
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const v4, -0x4514ca37

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_1

    .line 1059
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/kakaogame/util/DateUtil;->convertLongToFormattedString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kakaogame/log/APILatencyLogManager;->fileName:Ljava/lang/String;

    return-void

    .line 1089
    :cond_1
    new-instance p1, Ljava/net/URL;

    invoke-static {v3}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-direct {p1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLConnection;

    const-string v5, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v5, 0x4e20

    .line 1109
    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 1119
    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 1129
    invoke-static {p1}, Lcom/kakaogame/server/ServerSecurityManager;->getHostnameVerifier(Ljava/net/URL;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1139
    invoke-static {}, Lcom/kakaogame/server/ServerSecurityManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const/4 p1, 0x1

    .line 1149
    invoke-virtual {v3, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 1159
    invoke-virtual {v3, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string v5, "close"

    .line 1169
    invoke-virtual {v3, p1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v5, 0x0

    .line 1229
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1249
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1259
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v5, v7

    new-array v5, v5, [B

    .line 1269
    :goto_0
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x0

    .line 1279
    invoke-virtual {p1, v5, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_2
    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_3

    .line 1349
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1359
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :catch_1
    if-eqz v5, :cond_4

    .line 1409
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 1449
    :catch_2
    :cond_4
    :goto_2
    :try_start_6
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_3
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    .line 1319
    :goto_3
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1349
    :try_start_8
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1359
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_4
    if-eqz v6, :cond_4

    .line 1409
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_2

    .line 1469
    :goto_4
    :try_start_a
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_6

    .line 1479
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1489
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/kakaogame/util/DateUtil;->convertLongToFormattedString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/kakaogame/log/APILatencyLogManager;->fileName:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_6

    :catchall_1
    move-exception v2

    move-object v5, v6

    .line 1349
    :goto_5
    :try_start_b
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1359
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :catch_5
    if-eqz v5, :cond_5

    .line 1409
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1449
    :catch_6
    :cond_5
    :try_start_d
    invoke-static {}, Ljava/lang/System;->gc()V

    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    move-exception p1

    .line 1519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final uploadFileToS3(Landroid/content/Context;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/log/APILatencyLogManager$uploadFileToS3$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/kakaogame/log/APILatencyLogManager$uploadFileToS3$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final useLantencyLog(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 389
    sput-boolean v0, Lcom/kakaogame/log/APILatencyLogManager;->used:Z

    .line 399
    sput-object p0, Lcom/kakaogame/log/APILatencyLogManager;->fileName:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final setNewFileName(Ljava/lang/String;)V
    .locals 1

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    sput-object p1, Lcom/kakaogame/log/APILatencyLogManager;->fileName:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final writeApiCall(Ljava/lang/String;Lcom/kakaogame/server/KeyBaseResult;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "*>;J)V"
        }
    .end annotation

    const v0, -0x4514ca67

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x4518b62f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x543e8a9a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    sget-boolean v1, Lcom/kakaogame/log/APILatencyLogManager;->used:Z

    if-nez v1, :cond_0

    return-void

    .line 559
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const v2, 0x7d7da53d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const v1, 0x336f00db

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x5d1d8f5f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/kakaogame/log/APILatencyLogManager;->postFix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 609
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 619
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const v3, 0x22505926

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 649
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 669
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    invoke-static {v1}, Lcom/kakaogame/util/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 689
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    invoke-static {v1}, Lcom/kakaogame/util/TelephonyUtil;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 709
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    invoke-virtual {p2}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 729
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 739
    invoke-virtual {p2}, Lcom/kakaogame/server/KeyBaseResult;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 749
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    invoke-static {}, Lcom/kakaogame/util/DeviceUtil;->getDeviceModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 769
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 779
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 789
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    sget-object p1, Lcom/kakaogame/log/APILatencyLogManager;->postFix:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    .line 809
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    sget-object p1, Lcom/kakaogame/log/APILatencyLogManager;->bufferLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p2, "KGLatency"

    .line 829
    sget-object p3, Lcom/kakaogame/log/APILatencyLogManager;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v2, "toString(...)"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p2, p3, p4}, Lcom/kakaogame/util/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p2

    const-string p4, "APILatencyLogManager"

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .array-data 1
    .end array-data
.end method
