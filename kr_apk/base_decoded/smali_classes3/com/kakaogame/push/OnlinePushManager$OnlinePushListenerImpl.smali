.class public final Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl;
.super Ljava/lang/Object;
.source "OnlinePushManager.kt"

# interfaces
.implements Lcom/kakaogame/server/session/SessionService$OnlinePushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/push/OnlinePushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnlinePushListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl;",
        "Lcom/kakaogame/server/session/SessionService$OnlinePushListener;",
        "<init>",
        "()V",
        "onMessage",
        "",
        "uri",
        "",
        "messageData",
        "",
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
.field public static final Companion:Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl$Companion;

.field private static final onlinePushUri:Ljava/lang/String; = "push://v2/online/onMessageForPlatform"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl;->Companion:Lcom/kakaogame/push/OnlinePushManager$OnlinePushListenerImpl$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 2109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 2129
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v1, 0x5d1c9d17

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v4, p1

    .line 2139
    invoke-static {v1, v4, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2149
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x5435b7ea

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x2259bc26

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x6d0b0e48

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2169
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x2259bf5e

    invoke-static {v7}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x336220fb

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    .line 2179
    invoke-static {v4, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2189
    invoke-static/range {p2 .. p2}, Lcom/kakaogame/push/OnlinePushManager;->getMessage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const v4, 0x6d0e6720

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    .line 2199
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const v5, 0x6d0ee7b8

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    .line 2209
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const v6, 0x6d0cc588

    invoke-static {v6}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v6

    .line 2229
    invoke-static {v6, v5, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 2239
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const v7, 0x6d0bd780

    invoke-static {v7}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    const v8, 0x22580076

    invoke-static {v8}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v5, v9, v6, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x6d011af0

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    .line 2249
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    goto :goto_0

    :cond_1
    const-wide/16 v12, 0x0

    .line 2259
    :goto_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const/16 v0, 0x3e8

    int-to-long v14, v0

    .line 2269
    div-long/2addr v12, v14

    const/16 v0, 0x3c

    int-to-long v14, v0

    div-long/2addr v12, v14

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    .line 2289
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    const v5, 0x225803b6

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v6, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2299
    rem-long v9, v12, v14

    sub-long/2addr v12, v9

    .line 2309
    div-long/2addr v12, v14

    const v0, 0x6d0116c8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 2319
    invoke-static {v1, v5, v0}, Lcom/kakaogame/util/StringUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2329
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v6

    invoke-static {v5, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2339
    invoke-static {v1, v8, v0}, Lcom/kakaogame/util/StringUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2349
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2369
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/kakaogame/util/StringUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 2399
    :cond_3
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->isWhitelist()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 2449
    :cond_4
    sget-object v0, Lcom/kakaogame/push/OnlinePushManager;->INSTANCE:Lcom/kakaogame/push/OnlinePushManager;

    invoke-static {v0, v3, v1, v4, v6}, Lcom/kakaogame/push/OnlinePushManager;->access$showPopup(Lcom/kakaogame/push/OnlinePushManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_5
    const v4, -0x4515d9ef

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 2459
    invoke-static {v4, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2469
    invoke-static/range {p2 .. p2}, Lcom/kakaogame/push/OnlinePushManager;->getMessage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const v4, 0x2257f19e

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    .line 2499
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    const v6, -0x224e7e64

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    .line 2519
    invoke-static {v4, v6, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const v7, -0x2244b41c

    invoke-static {v7}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v7

    const v8, -0x451aa8cf

    invoke-static {v8}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_6

    .line 2529
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const v2, -0x451b90e7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 2539
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const v6, 0x3364b21b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const v2, -0x224037bc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    .line 2549
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 2559
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v10, v12

    const v2, 0x6d0ee288

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 2579
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2589
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v14, 0x2259be96

    invoke-static {v14}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const v14, 0x336057cb

    invoke-static {v14}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const v14, 0x2259be4e

    invoke-static {v14}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v12, v6

    if-lez v0, :cond_c

    .line 2609
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    move-object v5, v1

    invoke-virtual/range {v2 .. v11}, Lcom/kakaogame/core/CoreManager;->startOnlineAlarmTimer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJJ)V

    goto :goto_2

    :cond_6
    const v5, 0x33605c63

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    .line 2629
    invoke-static {v4, v5, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2639
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 2649
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kakaogame/core/CoreManager;->stopOnlineAlarmTimer(Ljava/lang/String;)V

    return-void

    .line 2679
    :cond_7
    invoke-static {v3, v1}, Lcom/kakaogame/push/OnlinePushManager;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 2709
    :cond_8
    invoke-static {v3, v1}, Lcom/kakaogame/push/OnlinePushManager;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const v4, -0x2245c304

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    .line 2729
    invoke-static {v4, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2739
    invoke-static/range {p2 .. p2}, Lcom/kakaogame/push/OnlinePushManager;->getMessage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2749
    sget-object v1, Lcom/kakaogame/push/OnlinePushManager;->INSTANCE:Lcom/kakaogame/push/OnlinePushManager;

    invoke-static {v1, v3, v0}, Lcom/kakaogame/push/OnlinePushManager;->access$showNotification(Lcom/kakaogame/push/OnlinePushManager;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const v0, -0x224e796c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 2759
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2769
    sget-object v0, Lcom/kakaogame/push/OnlinePushManager;->INSTANCE:Lcom/kakaogame/push/OnlinePushManager;

    invoke-static {v0}, Lcom/kakaogame/push/OnlinePushManager;->access$refreshLocalPlayer(Lcom/kakaogame/push/OnlinePushManager;)V

    goto :goto_2

    :cond_b
    const v0, 0x6d018240

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 2779
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2789
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d7cb0c5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->sendLogFilesImmediately()V

    :cond_c
    :goto_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method
