.class public final Lcom/kakaogame/KGSession$KGAppInfo;
.super Lcom/kakaogame/KGObject;
.source "KGSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGAppInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGSession$KGAppInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGSession.kt\ncom/kakaogame/KGSession$KGAppInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,667:1\n2632#2,3:668\n*S KotlinDebug\n*F\n+ 1 KGSession.kt\ncom/kakaogame/KGSession$KGAppInfo\n*L\n654#1:668,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001d\u0012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0016R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kakaogame/KGSession$KGAppInfo;",
        "Lcom/kakaogame/KGObject;",
        "m",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "appId",
        "getAppId",
        "()Ljava/lang/String;",
        "displayName",
        "getDisplayName",
        "isServiceAvailable",
        "",
        "()Z",
        "getValue",
        "key",
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
.field public static final Companion:Lcom/kakaogame/KGSession$KGAppInfo$Companion;

.field public static final KEY_APP_ID:Ljava/lang/String; = "appId"

.field public static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final KEY_SERVICE_STATUS:Ljava/lang/String; = "isServiceAvailable"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGSession$KGAppInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGSession$KGAppInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGSession$KGAppInfo;->Companion:Lcom/kakaogame/KGSession$KGAppInfo$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const v0, -0x22451ed4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5899
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    const v0, -0x22435dc4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 6469
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    if-eqz v0, :cond_0

    .line 6489
    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSession$KGAppInfo;->putAll(Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    .line 6509
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, -0x4518fbcf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/kakaogame/KGSession$KGAppInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x6d0b53f0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 6519
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6529
    new-instance p1, Lcom/kakaogame/infodesk/InfodeskData;

    invoke-virtual {p0}, Lcom/kakaogame/KGSession$KGAppInfo;->getObject()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/kakaogame/infodesk/InfodeskData;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskData;->getNotices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6539
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x3363315b

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7d7196f5

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6549
    check-cast p1, Ljava/lang/Iterable;

    .line 6689
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6699
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;

    const v3, 0x33633273

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    .line 6559
    invoke-virtual {v1, v3}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7d7197bd

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 6709
    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 6549
    invoke-virtual {p0, v2, p1}, Lcom/kakaogame/KGSession$KGAppInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 2

    const v0, 0x7d7197d5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 5969
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSession$KGAppInfo;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5979
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSession$KGAppInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    const v0, -0x4518f887

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 6089
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSession$KGAppInfo;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6099
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSession$KGAppInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 5899
    invoke-virtual {p0, p1}, Lcom/kakaogame/KGSession$KGAppInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6339
    invoke-virtual {p0, p1}, Lcom/kakaogame/KGSession$KGAppInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 6349
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6359
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isServiceAvailable()Z
    .locals 2

    const v0, -0x4518fbcf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 6209
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSession$KGAppInfo;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6219
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGSession$KGAppInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3364b48b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method
