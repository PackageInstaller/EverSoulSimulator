.class public final Lcom/kakaogame/security/DeviceProtectionService$Settings;
.super Ljava/lang/Object;
.source "DeviceProtectionService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/security/DeviceProtectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kakaogame/security/DeviceProtectionService$Settings;",
        "",
        "<init>",
        "()V",
        "checkRegisteredDeviceUri",
        "",
        "getCheckRegisteredDeviceUri",
        "()Ljava/lang/String;",
        "setCheckRegisteredDeviceUri",
        "(Ljava/lang/String;)V",
        "checkUserRegisteredUri",
        "getCheckUserRegisteredUri",
        "setCheckUserRegisteredUri",
        "selectUri",
        "registerUri",
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
.field public static final INSTANCE:Lcom/kakaogame/security/DeviceProtectionService$Settings;

.field private static checkRegisteredDeviceUri:Ljava/lang/String; = null

.field private static checkUserRegisteredUri:Ljava/lang/String; = null

.field public static final registerUri:Ljava/lang/String; = "v3/email/register"

.field public static final selectUri:Ljava/lang/String; = "v3/email/select"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/kakaogame/security/DeviceProtectionService$Settings;

    invoke-direct {v0}, Lcom/kakaogame/security/DeviceProtectionService$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/security/DeviceProtectionService$Settings;->INSTANCE:Lcom/kakaogame/security/DeviceProtectionService$Settings;

    .line 1749
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x224ded3c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1f0c97

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/DeviceProtectionService$Settings;->checkRegisteredDeviceUri:Ljava/lang/String;

    .line 1759
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    const v1, -0x224def34

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d033a78

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/server/openapi/OpenApiService;->setOpenApiUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/security/DeviceProtectionService$Settings;->checkUserRegisteredUri:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCheckRegisteredDeviceUri()Ljava/lang/String;
    .locals 1

    .line 1749
    sget-object v0, Lcom/kakaogame/security/DeviceProtectionService$Settings;->checkRegisteredDeviceUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCheckUserRegisteredUri()Ljava/lang/String;
    .locals 1

    .line 1759
    sget-object v0, Lcom/kakaogame/security/DeviceProtectionService$Settings;->checkUserRegisteredUri:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCheckRegisteredDeviceUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1749
    sput-object p1, Lcom/kakaogame/security/DeviceProtectionService$Settings;->checkRegisteredDeviceUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCheckUserRegisteredUri(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1759
    sput-object p1, Lcom/kakaogame/security/DeviceProtectionService$Settings;->checkUserRegisteredUri:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
