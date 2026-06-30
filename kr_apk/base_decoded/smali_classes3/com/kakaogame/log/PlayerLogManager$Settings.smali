.class public final Lcom/kakaogame/log/PlayerLogManager$Settings;
.super Ljava/lang/Object;
.source "PlayerLogManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/log/PlayerLogManager;
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
        "Lcom/kakaogame/log/PlayerLogManager$Settings;",
        "",
        "<init>",
        "()V",
        "writeSummaryLogOpenAPIUri",
        "",
        "getWriteSummaryLogOpenAPIUri",
        "()Ljava/lang/String;",
        "setWriteSummaryLogOpenAPIUri",
        "(Ljava/lang/String;)V",
        "updatePlayerGameDataOpenAPIUri",
        "getUpdatePlayerGameDataOpenAPIUri",
        "setUpdatePlayerGameDataOpenAPIUri",
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
.field public static final INSTANCE:Lcom/kakaogame/log/PlayerLogManager$Settings;

.field private static updatePlayerGameDataOpenAPIUri:Ljava/lang/String;

.field private static writeSummaryLogOpenAPIUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/log/PlayerLogManager$Settings;

    invoke-direct {v0}, Lcom/kakaogame/log/PlayerLogManager$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/log/PlayerLogManager$Settings;->INSTANCE:Lcom/kakaogame/log/PlayerLogManager$Settings;

    const v0, 0x54348f92

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 4329
    sput-object v0, Lcom/kakaogame/log/PlayerLogManager$Settings;->writeSummaryLogOpenAPIUri:Ljava/lang/String;

    const v0, 0x336f2913

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 4339
    sput-object v0, Lcom/kakaogame/log/PlayerLogManager$Settings;->updatePlayerGameDataOpenAPIUri:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 4319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getUpdatePlayerGameDataOpenAPIUri()Ljava/lang/String;
    .locals 1

    .line 4339
    sget-object v0, Lcom/kakaogame/log/PlayerLogManager$Settings;->updatePlayerGameDataOpenAPIUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getWriteSummaryLogOpenAPIUri()Ljava/lang/String;
    .locals 1

    .line 4329
    sget-object v0, Lcom/kakaogame/log/PlayerLogManager$Settings;->writeSummaryLogOpenAPIUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setUpdatePlayerGameDataOpenAPIUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4339
    sput-object p1, Lcom/kakaogame/log/PlayerLogManager$Settings;->updatePlayerGameDataOpenAPIUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setWriteSummaryLogOpenAPIUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4329
    sput-object p1, Lcom/kakaogame/log/PlayerLogManager$Settings;->writeSummaryLogOpenAPIUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
