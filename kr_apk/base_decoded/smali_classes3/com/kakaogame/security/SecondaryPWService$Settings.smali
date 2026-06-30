.class public final Lcom/kakaogame/security/SecondaryPWService$Settings;
.super Ljava/lang/Object;
.source "SecondaryPWService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/security/SecondaryPWService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u001d\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007R\u0011\u0010\u0010\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007R\u0011\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007R\u0011\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007R\u0011\u0010\u0016\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007R\u0011\u0010\u0018\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007R\u0011\u0010\u001a\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0007R\u0011\u0010\u001c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0007R\u0011\u0010\u001e\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0007R\u0011\u0010 \u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0007\u00a8\u0006\""
    }
    d2 = {
        "Lcom/kakaogame/security/SecondaryPWService$Settings;",
        "",
        "<init>",
        "()V",
        "userStatusUri",
        "",
        "getUserStatusUri",
        "()Ljava/lang/String;",
        "setUserStatusUri",
        "(Ljava/lang/String;)V",
        "sendKakaoTalkUri",
        "getSendKakaoTalkUri",
        "sendSMSUri",
        "getSendSMSUri",
        "sendEmailUri",
        "getSendEmailUri",
        "sendExistUri",
        "getSendExistUri",
        "verifyKakaoTalkAuthCodeUri",
        "getVerifyKakaoTalkAuthCodeUri",
        "verifySMSAuthCodeUri",
        "getVerifySMSAuthCodeUri",
        "verifyEmailAuthCodeUri",
        "getVerifyEmailAuthCodeUri",
        "verifyExistAuthCodeUri",
        "getVerifyExistAuthCodeUri",
        "getKeypadUri",
        "getGetKeypadUri",
        "setPasswordUri",
        "getSetPasswordUri",
        "matchPasswordUri",
        "getMatchPasswordUri",
        "deletePasswordUri",
        "getDeletePasswordUri",
        "security_release"
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
.field public static final INSTANCE:Lcom/kakaogame/security/SecondaryPWService$Settings;

.field private static final deletePasswordUri:Ljava/lang/String;

.field private static final getKeypadUri:Ljava/lang/String;

.field private static final matchPasswordUri:Ljava/lang/String;

.field private static final sendEmailUri:Ljava/lang/String;

.field private static final sendExistUri:Ljava/lang/String;

.field private static final sendKakaoTalkUri:Ljava/lang/String;

.field private static final sendSMSUri:Ljava/lang/String;

.field private static final setPasswordUri:Ljava/lang/String;

.field private static userStatusUri:Ljava/lang/String;

.field private static final verifyEmailAuthCodeUri:Ljava/lang/String;

.field private static final verifyExistAuthCodeUri:Ljava/lang/String;

.field private static final verifyKakaoTalkAuthCodeUri:Ljava/lang/String;

.field private static final verifySMSAuthCodeUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/security/SecondaryPWService$Settings;

    invoke-direct {v0}, Lcom/kakaogame/security/SecondaryPWService$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->INSTANCE:Lcom/kakaogame/security/SecondaryPWService$Settings;

    .line 5189
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x224dc104

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224dc0fc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->userStatusUri:Ljava/lang/String;

    .line 5199
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x4516657f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224dc2cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->sendKakaoTalkUri:Ljava/lang/String;

    .line 5209
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x6d031958

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224dccac

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->sendSMSUri:Ljava/lang/String;

    .line 5219
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x5d1f2fcf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224dce94

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->sendEmailUri:Ljava/lang/String;

    .line 5229
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x5d1f2987

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x225a0bfe

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->sendExistUri:Ljava/lang/String;

    .line 5239
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x7d7f03b5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0301b0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->verifyKakaoTalkAuthCodeUri:Ljava/lang/String;

    .line 5249
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x336db983

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224dd7cc

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->verifySMSAuthCodeUri:Ljava/lang/String;

    .line 5259
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x225a165e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x451677d7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->verifyEmailAuthCodeUri:Ljava/lang/String;

    .line 5269
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x54361b72

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543619da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->verifyExistAuthCodeUri:Ljava/lang/String;

    .line 5279
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x224ddd5c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f3c3f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->getKeypadUri:Ljava/lang/String;

    .line 5289
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x6d030bf8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224dde5c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->setPasswordUri:Ljava/lang/String;

    .line 5299
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x225a1e0e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f3857

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->matchPasswordUri:Ljava/lang/String;

    .line 5309
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, 0x54361322

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x45167def

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->deletePasswordUri:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 5179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getDeletePasswordUri()Ljava/lang/String;
    .locals 1

    .line 5309
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->deletePasswordUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGetKeypadUri()Ljava/lang/String;
    .locals 1

    .line 5279
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->getKeypadUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMatchPasswordUri()Ljava/lang/String;
    .locals 1

    .line 5299
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->matchPasswordUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSendEmailUri()Ljava/lang/String;
    .locals 1

    .line 5219
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->sendEmailUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSendExistUri()Ljava/lang/String;
    .locals 1

    .line 5229
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->sendExistUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSendKakaoTalkUri()Ljava/lang/String;
    .locals 1

    .line 5199
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->sendKakaoTalkUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSendSMSUri()Ljava/lang/String;
    .locals 1

    .line 5209
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->sendSMSUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSetPasswordUri()Ljava/lang/String;
    .locals 1

    .line 5289
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->setPasswordUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUserStatusUri()Ljava/lang/String;
    .locals 1

    .line 5189
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->userStatusUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getVerifyEmailAuthCodeUri()Ljava/lang/String;
    .locals 1

    .line 5259
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->verifyEmailAuthCodeUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getVerifyExistAuthCodeUri()Ljava/lang/String;
    .locals 1

    .line 5269
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->verifyExistAuthCodeUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getVerifyKakaoTalkAuthCodeUri()Ljava/lang/String;
    .locals 1

    .line 5239
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->verifyKakaoTalkAuthCodeUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getVerifySMSAuthCodeUri()Ljava/lang/String;
    .locals 1

    .line 5249
    sget-object v0, Lcom/kakaogame/security/SecondaryPWService$Settings;->verifySMSAuthCodeUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setUserStatusUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5189
    sput-object p1, Lcom/kakaogame/security/SecondaryPWService$Settings;->userStatusUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
