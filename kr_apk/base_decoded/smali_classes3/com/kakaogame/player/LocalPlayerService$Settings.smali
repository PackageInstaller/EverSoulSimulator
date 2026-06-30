.class public final Lcom/kakaogame/player/LocalPlayerService$Settings;
.super Ljava/lang/Object;
.source "LocalPlayerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/player/LocalPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\"\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001a\u0010\u0016\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001a8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/kakaogame/player/LocalPlayerService$Settings;",
        "",
        "<init>",
        "()V",
        "getPaymentUserIdUri",
        "",
        "getGetPaymentUserIdUri",
        "()Ljava/lang/String;",
        "setGetPaymentUserIdUri",
        "(Ljava/lang/String;)V",
        "updatePlayerUri",
        "getUpdatePlayerUri",
        "setUpdatePlayerUri",
        "getLocalPlayerUri",
        "getGetLocalPlayerUri",
        "setGetLocalPlayerUri",
        "removeUri",
        "getRemoveUri",
        "setRemoveUri",
        "waitForRemoveUri",
        "getWaitForRemoveUri",
        "setWaitForRemoveUri",
        "cancelForRemovePlayerOpenAPIUri",
        "getCancelForRemovePlayerOpenAPIUri",
        "setCancelForRemovePlayerOpenAPIUri",
        "localPlayerFieldKeyList",
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


# static fields
.field public static final INSTANCE:Lcom/kakaogame/player/LocalPlayerService$Settings;

.field private static cancelForRemovePlayerOpenAPIUri:Ljava/lang/String;

.field private static getLocalPlayerUri:Ljava/lang/String;

.field private static getPaymentUserIdUri:Ljava/lang/String;

.field public static final localPlayerFieldKeyList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static removeUri:Ljava/lang/String;

.field private static updatePlayerUri:Ljava/lang/String;

.field private static waitForRemoveUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/player/LocalPlayerService$Settings;

    invoke-direct {v0}, Lcom/kakaogame/player/LocalPlayerService$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->INSTANCE:Lcom/kakaogame/player/LocalPlayerService$Settings;

    .line 2129
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x6d003500

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224ee0a4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->getPaymentUserIdUri:Ljava/lang/String;

    .line 2139
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x224ee33c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7c2b85

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->updatePlayerUri:Ljava/lang/String;

    .line 2149
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x224ee2ac

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5435262a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->getLocalPlayerUri:Ljava/lang/String;

    .line 2159
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x45154a7f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d7c2685

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->removeUri:Ljava/lang/String;

    .line 2169
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x451549ef

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x451548c7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->waitForRemoveUri:Ljava/lang/String;

    const v0, 0x336e847b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 2179
    sput-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->cancelForRemovePlayerOpenAPIUri:Ljava/lang/String;

    .line 2209
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->localPlayerFieldKeyList:Ljava/util/Set;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 2119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCancelForRemovePlayerOpenAPIUri()Ljava/lang/String;
    .locals 1

    .line 2179
    sget-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->cancelForRemovePlayerOpenAPIUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGetLocalPlayerUri()Ljava/lang/String;
    .locals 1

    .line 2149
    sget-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->getLocalPlayerUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGetPaymentUserIdUri()Ljava/lang/String;
    .locals 1

    .line 2129
    sget-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->getPaymentUserIdUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRemoveUri()Ljava/lang/String;
    .locals 1

    .line 2159
    sget-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->removeUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUpdatePlayerUri()Ljava/lang/String;
    .locals 1

    .line 2139
    sget-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->updatePlayerUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getWaitForRemoveUri()Ljava/lang/String;
    .locals 1

    .line 2169
    sget-object v0, Lcom/kakaogame/player/LocalPlayerService$Settings;->waitForRemoveUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCancelForRemovePlayerOpenAPIUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2179
    sput-object p1, Lcom/kakaogame/player/LocalPlayerService$Settings;->cancelForRemovePlayerOpenAPIUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setGetLocalPlayerUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2149
    sput-object p1, Lcom/kakaogame/player/LocalPlayerService$Settings;->getLocalPlayerUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setGetPaymentUserIdUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2129
    sput-object p1, Lcom/kakaogame/player/LocalPlayerService$Settings;->getPaymentUserIdUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setRemoveUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2159
    sput-object p1, Lcom/kakaogame/player/LocalPlayerService$Settings;->removeUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setUpdatePlayerUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2139
    sput-object p1, Lcom/kakaogame/player/LocalPlayerService$Settings;->updatePlayerUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setWaitForRemoveUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2169
    sput-object p1, Lcom/kakaogame/player/LocalPlayerService$Settings;->waitForRemoveUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
