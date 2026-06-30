.class public final Lcom/kakaogame/manager/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0005J\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0011J\u0010\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\"\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/kakaogame/manager/SdkManager;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "value",
        "",
        "isInitialized",
        "()Z",
        "Lcom/kakaogame/manager/Version;",
        "appVersion",
        "getAppVersion",
        "()Lcom/kakaogame/manager/Version;",
        "sdkVersion",
        "isTestAppLaunching",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "setSdkVersion",
        "sdkVersionStr",
        "getSdkVersion",
        "checkTestAppLaunching",
        "activity",
        "Landroid/app/Activity;",
        "setTestModeApp",
        "isTestMode",
        "common-kakaogames_release"
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
.field public static final INSTANCE:Lcom/kakaogame/manager/SdkManager;

.field private static final TAG:Ljava/lang/String; = "SdkManager"

.field private static appVersion:Lcom/kakaogame/manager/Version;

.field private static isInitialized:Z

.field private static isTestAppLaunching:Z

.field private static sdkVersion:Lcom/kakaogame/manager/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/manager/SdkManager;

    invoke-direct {v0}, Lcom/kakaogame/manager/SdkManager;-><init>()V

    sput-object v0, Lcom/kakaogame/manager/SdkManager;->INSTANCE:Lcom/kakaogame/manager/SdkManager;

    .line 159
    new-instance v0, Lcom/kakaogame/manager/Version;

    const v1, 0x2257c976

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/manager/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kakaogame/manager/SdkManager;->sdkVersion:Lcom/kakaogame/manager/Version;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final checkTestAppLaunching(Landroid/app/Activity;)Z
    .locals 2

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-boolean v0, Lcom/kakaogame/manager/SdkManager;->isTestAppLaunching:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 369
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    const v1, 0x6d01c7f8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 399
    sput-boolean p1, Lcom/kakaogame/manager/SdkManager;->isTestAppLaunching:Z

    .line 419
    :cond_2
    sget-boolean p1, Lcom/kakaogame/manager/SdkManager;->isTestAppLaunching:Z

    return p1

    .array-data 1
    .end array-data
.end method

.method public final getAppVersion()Lcom/kakaogame/manager/Version;
    .locals 1

    .line 139
    sget-object v0, Lcom/kakaogame/manager/SdkManager;->appVersion:Lcom/kakaogame/manager/Version;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 299
    sget-object v0, Lcom/kakaogame/manager/SdkManager;->sdkVersion:Lcom/kakaogame/manager/Version;

    invoke-virtual {v0}, Lcom/kakaogame/manager/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final initialize(Landroid/content/Context;)V
    .locals 3

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 189
    sput-boolean v0, Lcom/kakaogame/manager/SdkManager;->isInitialized:Z

    .line 199
    new-instance v0, Lcom/kakaogame/manager/Version;

    invoke-static {p1}, Lcom/kakaogame/util/AndroidManifestUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/kakaogame/manager/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kakaogame/manager/SdkManager;->appVersion:Lcom/kakaogame/manager/Version;

    .line 209
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x2258d3a6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/kakaogame/manager/SdkManager;->appVersion:Lcom/kakaogame/manager/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x224f138c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v2, -0x4514b46f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kakaogame/manager/SdkManager;->sdkVersion:Lcom/kakaogame/manager/Version;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final isInitialized()Z
    .locals 1

    .line 119
    sget-boolean v0, Lcom/kakaogame/manager/SdkManager;->isInitialized:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isTestMode(Landroid/content/Context;)Z
    .locals 1

    .line 509
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x5d1df297

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kakaogame/util/AppUtil;->isInstalledWithPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x5d1dfdef

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {p1, v0}, Lcom/kakaogame/util/AppUtil;->isInstalledWithPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7d7dd5d5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {p1, v0}, Lcom/kakaogame/util/AppUtil;->isInstalledWithPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final setSdkVersion(Ljava/lang/String;)V
    .locals 1

    const v0, 0x6d01cbf8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/kakaogame/manager/Version;

    invoke-direct {v0, p1}, Lcom/kakaogame/manager/Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kakaogame/manager/SdkManager;->sdkVersion:Lcom/kakaogame/manager/Version;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setTestModeApp()V
    .locals 1

    const/4 v0, 0x1

    .line 459
    sput-boolean v0, Lcom/kakaogame/manager/SdkManager;->isTestAppLaunching:Z

    return-void

    .array-data 1
    .end array-data
.end method
