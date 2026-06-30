.class public final Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;
.super Ljava/lang/Object;
.source "LoginData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/LoginData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZinnyAccessToken"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B)\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\nJ\u0006\u0010\u0019\u001a\u00020\u0016J\u0008\u0010\u001a\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;",
        "",
        "zat",
        "",
        "expiryTime",
        "",
        "<init>",
        "(Ljava/lang/String;J)V",
        "zrt",
        "ztrExpiryTime",
        "(Ljava/lang/String;JLjava/lang/String;J)V",
        "getZat",
        "()Ljava/lang/String;",
        "setZat",
        "(Ljava/lang/String;)V",
        "value",
        "getZrt",
        "getExpiryTime",
        "()J",
        "zrtExpiryTime",
        "getZrtExpiryTime",
        "isExpired",
        "",
        "()Z",
        "isZrtExpired",
        "needRefresh",
        "toString",
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
.field private final expiryTime:J

.field private zat:Ljava/lang/String;

.field private zrt:Ljava/lang/String;

.field private zrtExpiryTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const v0, 0x22550abe

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 1289
    iput-object v0, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zrt:Ljava/lang/String;

    .line 1359
    iput-object p1, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zat:Ljava/lang/String;

    .line 1369
    iput-wide p2, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->expiryTime:J

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 1

    const v0, 0x22550abe

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x2255b8fe

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    iput-object p1, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zat:Ljava/lang/String;

    .line 1419
    iput-wide p2, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->expiryTime:J

    .line 1429
    iput-object p4, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zrt:Ljava/lang/String;

    .line 1439
    iput-wide p5, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zrtExpiryTime:J

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getExpiryTime()J
    .locals 2

    .line 1309
    iget-wide v0, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->expiryTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZat()Ljava/lang/String;
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zat:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZrt()Ljava/lang/String;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zrt:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZrtExpiryTime()J
    .locals 2

    .line 1319
    iget-wide v0, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zrtExpiryTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isExpired()Z
    .locals 4

    .line 1479
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->expiryTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final isZrtExpired()Z
    .locals 6

    .line 1499
    iget-object v0, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zrt:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1519
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zrtExpiryTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final needRefresh()Z
    .locals 6

    .line 1549
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getZatRefreshInterval()J

    move-result-wide v0

    .line 1559
    iget-wide v2, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->expiryTime:J

    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setZat(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    iput-object p1, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zat:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x5439b3c2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->zat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d109b47

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->expiryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
