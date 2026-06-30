.class public final Lcom/kakaogame/infodesk/InfodeskDataCache;
.super Ljava/lang/Object;
.source "InfodeskDataCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J$\u0010\r\u001a\u00020\u000e2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/infodesk/InfodeskDataCache;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "PREF_KEY",
        "getCachedData",
        "Lcom/kakaogame/infodesk/InfodeskData;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Lcom/kakaogame/config/Configuration;",
        "savedCache",
        "",
        "data",
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
.field public static final INSTANCE:Lcom/kakaogame/infodesk/InfodeskDataCache;

.field private static final PREF_KEY:Ljava/lang/String; = "cachedInfodesk"

.field private static final TAG:Ljava/lang/String; = "InfodeskDataCache"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/infodesk/InfodeskDataCache;

    invoke-direct {v0}, Lcom/kakaogame/infodesk/InfodeskDataCache;-><init>()V

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskDataCache;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskDataCache;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final getCachedData(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)Lcom/kakaogame/infodesk/InfodeskData;
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x2257f886

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e0c57

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x3362b5f3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-boolean v1, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 239
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const v3, 0x5d12d887

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {p1}, Lcom/kakaogame/config/Configuration;->getServerTypeString()Ljava/lang/String;

    move-result-object p1

    .line 259
    sget-object v3, Lcom/kakaogame/config/Configuration$KGServerType;->LIVE:Lcom/kakaogame/config/Configuration$KGServerType;

    invoke-virtual {v3}, Lcom/kakaogame/config/Configuration$KGServerType;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_1
    :try_start_0
    invoke-static {p0, v1, v0}, Lcom/kakaogame/util/PreferenceUtil;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 309
    invoke-static {p0, v1, v0}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-static {p0}, Lcom/kakaogame/util/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 329
    instance-of p1, p0, Lcom/kakaogame/util/json/JSONObject;

    if-eqz p1, :cond_2

    .line 339
    new-instance p1, Lcom/kakaogame/infodesk/InfodeskData;

    check-cast p0, Ljava/util/Map;

    invoke-direct {p1, p0}, Lcom/kakaogame/infodesk/InfodeskData;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_6

    .line 459
    sget-object p0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p0, p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInfodeskCacheHour(Lcom/kakaogame/infodesk/InfodeskData;)J

    move-result-wide v0

    .line 489
    new-instance p0, Lcom/kakaogame/server/SNTPClient;

    invoke-direct {p0}, Lcom/kakaogame/server/SNTPClient;-><init>()V

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const v5, 0x2257fbee

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1388

    .line 509
    invoke-virtual {p0, v5, v6}, Lcom/kakaogame/server/SNTPClient;->requestTime(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 519
    invoke-virtual {p0}, Lcom/kakaogame/server/SNTPClient;->getNtpTime()J

    move-result-wide v5

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 539
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x543bf052

    invoke-static {v10}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x336057cb

    invoke-static {v10}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long/2addr v7, v3

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x543bf1fa

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v3, -0x1

    cmp-long p0, v0, v3

    if-nez p0, :cond_4

    goto :goto_1

    .line 619
    :cond_4
    sget-object p0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p0, p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInfodeskDataTime(Lcom/kakaogame/infodesk/InfodeskData;)J

    move-result-wide v3

    sub-long v3, v5, v3

    cmp-long p0, v3, v0

    if-lez p0, :cond_5

    goto :goto_2

    .line 639
    :cond_5
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Lcom/kakaogame/core/CoreManager;->setServerTimeStamp(J)V

    :goto_1
    move-object v2, p1

    :cond_6
    :goto_2
    return-object v2

    .array-data 1
    .end array-data
.end method

.method public static final savedCache(Landroid/content/Context;Lcom/kakaogame/config/Configuration;Lcom/kakaogame/infodesk/InfodeskData;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x3362b5f3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5d12d887

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {p1}, Lcom/kakaogame/config/Configuration;->getServerTypeString()Ljava/lang/String;

    move-result-object p1

    .line 749
    sget-object v1, Lcom/kakaogame/config/Configuration$KGServerType;->LIVE:Lcom/kakaogame/config/Configuration$KGServerType;

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration$KGServerType;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    :cond_0
    new-instance p1, Lcom/kakaogame/util/json/JSONObject;

    check-cast p2, Ljava/util/Map;

    invoke-direct {p1, p2}, Lcom/kakaogame/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p2, "cachedInfodesk"

    .line 789
    invoke-virtual {p1}, Lcom/kakaogame/util/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p2, p1}, Lcom/kakaogame/util/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
