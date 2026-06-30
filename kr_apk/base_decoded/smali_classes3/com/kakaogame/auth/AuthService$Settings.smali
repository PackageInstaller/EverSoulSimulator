.class public final Lcom/kakaogame/auth/AuthService$Settings;
.super Ljava/lang/Object;
.source "AuthService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0015\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u001f\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0011\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010R\u0011\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0011\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0011\u0010\u0019\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010R\u0011\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0010R\u001a\u0010\u001d\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0010\"\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/kakaogame/auth/AuthService$Settings;",
        "",
        "<init>",
        "()V",
        "loginUriMap",
        "",
        "",
        "getLoginUriMap",
        "()Ljava/util/Map;",
        "connectUriMap",
        "getConnectUriMap",
        "loginParamMap",
        "",
        "getLoginParamMap",
        "zatLoginUri",
        "getZatLoginUri",
        "()Ljava/lang/String;",
        "zatLogoutUri",
        "getZatLogoutUri",
        "zatPauseUri",
        "getZatPauseUri",
        "zatRefreshTokenUri",
        "getZatRefreshTokenUri",
        "zatIssueTokenUri",
        "getZatIssueTokenUri",
        "syncGooglePlayerIdUri",
        "getSyncGooglePlayerIdUri",
        "revokeSIWAUri",
        "getRevokeSIWAUri",
        "removeForPunishedUserUri",
        "getRemoveForPunishedUserUri",
        "setRemoveForPunishedUserUri",
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
.field public static final INSTANCE:Lcom/kakaogame/auth/AuthService$Settings;

.field private static final connectUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final loginParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final loginUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static removeForPunishedUserUri:Ljava/lang/String;

.field private static final revokeSIWAUri:Ljava/lang/String;

.field private static final syncGooglePlayerIdUri:Ljava/lang/String;

.field private static final zatIssueTokenUri:Ljava/lang/String;

.field private static final zatLoginUri:Ljava/lang/String;

.field private static final zatLogoutUri:Ljava/lang/String;

.field private static final zatPauseUri:Ljava/lang/String;

.field private static final zatRefreshTokenUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/kakaogame/auth/AuthService$Settings;

    invoke-direct {v0}, Lcom/kakaogame/auth/AuthService$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->INSTANCE:Lcom/kakaogame/auth/AuthService$Settings;

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/Pair;

    .line 5679
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Guest:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v3, 0x54394fb2

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x225547e6

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5689
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v4, 0x6d0c5300

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x22554666

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 5699
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Facebook:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v5, -0x45192777

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    const v6, -0x22428024

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 5709
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Google:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v6, 0x5d1060af

    invoke-static {v6}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v6

    const v7, -0x224283bc

    invoke-static {v7}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 5719
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v7, -0x451924a7

    invoke-static {v7}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v7

    const v8, -0x45192b5f

    invoke-static {v8}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 5729
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Twitter:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v8, 0x7d704585

    invoke-static {v8}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x22554ff6

    invoke-static {v9}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 5739
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Gamania:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v9, 0x6d0c5b08

    invoke-static {v9}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x5439452a

    invoke-static {v10}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    .line 5679
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->loginUriMap:Ljava/util/Map;

    new-array v0, v8, [Lkotlin/Pair;

    .line 5759
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v9, 0x5d10693f

    invoke-static {v9}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v9

    const v10, -0x45192e17

    invoke-static {v10}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 5769
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Facebook:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v8, 0x6d0c5c20

    invoke-static {v8}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x6d0c5f00

    invoke-static {v9}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v3

    .line 5779
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Google:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v3, 0x7d704305

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x54395e1a

    invoke-static {v8}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v4

    .line 5789
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v3, 0x54395fca

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x22555796

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    .line 5799
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Twitter:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v3, 0x7d705f95

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x225551d6

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v6

    .line 5809
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Gamania:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v3, 0x3362fc0b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7d70590d

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v7

    .line 5759
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->connectUriMap:Ljava/util/Map;

    .line 5829
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->loginParamMap:Ljava/util/Map;

    .line 5839
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x451935af

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d107267

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatLoginUri:Ljava/lang/String;

    .line 5849
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x54395932

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d107d07

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatLogoutUri:Ljava/lang/String;

    .line 5859
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x5d107d9f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x22429c14

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatPauseUri:Ljava/lang/String;

    .line 5869
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x7d70555d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0c4b18

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatRefreshTokenUri:Ljava/lang/String;

    .line 5879
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x3362f393

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x225559c6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatIssueTokenUri:Ljava/lang/String;

    .line 5889
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x224299cc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x54395352

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->syncGooglePlayerIdUri:Ljava/lang/String;

    .line 5899
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x3362f673

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d705375

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->revokeSIWAUri:Ljava/lang/String;

    const v0, 0x3362086b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 5909
    sput-object v0, Lcom/kakaogame/auth/AuthService$Settings;->removeForPunishedUserUri:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 5669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getConnectUriMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5759
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->connectUriMap:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLoginParamMap()Ljava/util/Map;
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

    .line 5829
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->loginParamMap:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLoginUriMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5679
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->loginUriMap:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRemoveForPunishedUserUri()Ljava/lang/String;
    .locals 1

    .line 5909
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->removeForPunishedUserUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRevokeSIWAUri()Ljava/lang/String;
    .locals 1

    .line 5899
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->revokeSIWAUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSyncGooglePlayerIdUri()Ljava/lang/String;
    .locals 1

    .line 5889
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->syncGooglePlayerIdUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZatIssueTokenUri()Ljava/lang/String;
    .locals 1

    .line 5879
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatIssueTokenUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZatLoginUri()Ljava/lang/String;
    .locals 1

    .line 5839
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatLoginUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZatLogoutUri()Ljava/lang/String;
    .locals 1

    .line 5849
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatLogoutUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZatPauseUri()Ljava/lang/String;
    .locals 1

    .line 5859
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatPauseUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZatRefreshTokenUri()Ljava/lang/String;
    .locals 1

    .line 5869
    sget-object v0, Lcom/kakaogame/auth/AuthService$Settings;->zatRefreshTokenUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setRemoveForPunishedUserUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5909
    sput-object p1, Lcom/kakaogame/auth/AuthService$Settings;->removeForPunishedUserUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
