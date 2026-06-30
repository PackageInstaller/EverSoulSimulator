.class public final Lcom/kakaogame/server/geo/GeoService$Settings;
.super Ljava/lang/Object;
.source "GeoService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/server/geo/GeoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/server/geo/GeoService$Settings;",
        "",
        "<init>",
        "()V",
        "getGeoIpCountryUri",
        "",
        "getGetGeoIpCountryUri",
        "()Ljava/lang/String;",
        "setGetGeoIpCountryUri",
        "(Ljava/lang/String;)V",
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
.field public static final INSTANCE:Lcom/kakaogame/server/geo/GeoService$Settings;

.field private static getGeoIpCountryUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/server/geo/GeoService$Settings;

    invoke-direct {v0}, Lcom/kakaogame/server/geo/GeoService$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/server/geo/GeoService$Settings;->INSTANCE:Lcom/kakaogame/server/geo/GeoService$Settings;

    .line 989
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x5d1f92bf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f9d8f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/server/geo/GeoService$Settings;->getGeoIpCountryUri:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getGetGeoIpCountryUri()Ljava/lang/String;
    .locals 1

    .line 989
    sget-object v0, Lcom/kakaogame/server/geo/GeoService$Settings;->getGeoIpCountryUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setGetGeoIpCountryUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    sput-object p1, Lcom/kakaogame/server/geo/GeoService$Settings;->getGeoIpCountryUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
