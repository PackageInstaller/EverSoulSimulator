.class public final Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;
.super Lcom/kakaogame/KGObject;
.source "InfodeskData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/infodesk/InfodeskData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGInfodeskAlarm"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0011\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000eR\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;",
        "Lcom/kakaogame/KGObject;",
        "m",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "notificationId",
        "getNotificationId",
        "()Ljava/lang/String;",
        "startTime",
        "",
        "getStartTime",
        "()J",
        "endTime",
        "getEndTime",
        "interval",
        "getInterval",
        "isCancel",
        "",
        "()Z",
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


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 759
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getEndTime()J
    .locals 2

    const v0, -0x224037bc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3364b21b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getInterval()J
    .locals 2

    const v0, 0x6d0ee288

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3364b21b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getNotificationId()Ljava/lang/String;
    .locals 1

    const v0, -0x451aa8cf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getStartTime()J
    .locals 2

    const v0, -0x451b90e7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3364b21b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final isCancel()Z
    .locals 3

    const v0, 0x2257f19e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 869
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskAlarm;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x33605c63

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 879
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method
