.class public final Lcom/kakaogame/infodesk/InfodeskService$Settings;
.super Ljava/lang/Object;
.source "InfodeskService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/infodesk/InfodeskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010$\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001a\u0010\u0016\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001f\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/kakaogame/infodesk/InfodeskService$Settings;",
        "",
        "<init>",
        "()V",
        "getInfodeskUri",
        "",
        "getGetInfodeskUri",
        "()Ljava/lang/String;",
        "setGetInfodeskUri",
        "(Ljava/lang/String;)V",
        "createUploadUri",
        "getCreateUploadUri",
        "setCreateUploadUri",
        "httpInfodeskUri",
        "getHttpInfodeskUri",
        "setHttpInfodeskUri",
        "httpAppGroupUri",
        "getHttpAppGroupUri",
        "setHttpAppGroupUri",
        "httpCustomOptionUri",
        "getHttpCustomOptionUri",
        "setHttpCustomOptionUri",
        "httpGameMaintenanceUri",
        "getHttpGameMaintenanceUri",
        "setHttpGameMaintenanceUri",
        "getInfodeskParamMap",
        "",
        "getGetInfodeskParamMap",
        "()Ljava/util/Map;",
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
.field public static final INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

.field private static createUploadUri:Ljava/lang/String;

.field private static final getInfodeskParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static getInfodeskUri:Ljava/lang/String;

.field private static httpAppGroupUri:Ljava/lang/String;

.field private static httpCustomOptionUri:Ljava/lang/String;

.field private static httpGameMaintenanceUri:Ljava/lang/String;

.field private static httpInfodeskUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;

    invoke-direct {v0}, Lcom/kakaogame/infodesk/InfodeskService$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskService$Settings;

    const v0, -0x224fcba4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3549
    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getInfodeskUri:Ljava/lang/String;

    .line 3559
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x224fcac4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v1}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->createUploadUri:Ljava/lang/String;

    const v0, 0x6d0101a0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3569
    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpInfodeskUri:Ljava/lang/String;

    const v0, 0x22581516

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3579
    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpAppGroupUri:Ljava/lang/String;

    const v0, 0x5d1d3467

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3589
    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpCustomOptionUri:Ljava/lang/String;

    const v0, 0x6d010038

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3599
    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpGameMaintenanceUri:Ljava/lang/String;

    .line 3609
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getInfodeskParamMap:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 3539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCreateUploadUri()Ljava/lang/String;
    .locals 1

    .line 3559
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->createUploadUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGetInfodeskParamMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3609
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getInfodeskParamMap:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGetInfodeskUri()Ljava/lang/String;
    .locals 1

    .line 3549
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getInfodeskUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHttpAppGroupUri()Ljava/lang/String;
    .locals 1

    .line 3579
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpAppGroupUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHttpCustomOptionUri()Ljava/lang/String;
    .locals 1

    .line 3589
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpCustomOptionUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHttpGameMaintenanceUri()Ljava/lang/String;
    .locals 1

    .line 3599
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpGameMaintenanceUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHttpInfodeskUri()Ljava/lang/String;
    .locals 1

    .line 3569
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpInfodeskUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCreateUploadUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3559
    sput-object p1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->createUploadUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setGetInfodeskUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3549
    sput-object p1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->getInfodeskUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setHttpAppGroupUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3579
    sput-object p1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpAppGroupUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setHttpCustomOptionUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3589
    sput-object p1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpCustomOptionUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setHttpGameMaintenanceUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3599
    sput-object p1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpGameMaintenanceUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setHttpInfodeskUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3569
    sput-object p1, Lcom/kakaogame/infodesk/InfodeskService$Settings;->httpInfodeskUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
