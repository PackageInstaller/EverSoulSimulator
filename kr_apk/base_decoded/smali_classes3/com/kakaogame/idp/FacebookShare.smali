.class public final Lcom/kakaogame/idp/FacebookShare;
.super Ljava/lang/Object;
.source "FacebookShare.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0007J*\u0010\u0012\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0007J\u0018\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH\u0002J8\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0016\u0010\u001a\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000c0\u001b2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J8\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0016\u0010\u001a\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000c0\u001b2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J2\u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/kakaogame/idp/FacebookShare;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "TYPE_LINK",
        "",
        "TYPE_IMAGE",
        "callbackManager",
        "Lcom/facebook/CallbackManager;",
        "shareLink",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "activity",
        "Landroid/app/Activity;",
        "link",
        "hashTag",
        "shareImage",
        "imagePath",
        "login",
        "autoLogin",
        "showShareLinkialog",
        "",
        "shareDialog",
        "Lcom/facebook/share/widget/ShareDialog;",
        "shareLock",
        "Lcom/kakaogame/util/MutexLock;",
        "getImageFileFromPath",
        "Landroid/graphics/Bitmap;",
        "path",
        "showShareImageDialog",
        "showShareDialog",
        "type",
        "content",
        "idp_facebook_release"
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
.field public static final INSTANCE:Lcom/kakaogame/idp/FacebookShare;

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_IMAGE:I

.field private static final TYPE_LINK:I

.field private static final callbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/idp/FacebookShare;

    invoke-direct {v0}, Lcom/kakaogame/idp/FacebookShare;-><init>()V

    sput-object v0, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    const v0, 0x5d1258d7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    sput-object v0, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 379
    sput v0, Lcom/kakaogame/idp/FacebookShare;->TYPE_IMAGE:I

    .line 389
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/idp/FacebookShare;->callbackManager:Lcom/facebook/CallbackManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCallbackManager$p()Lcom/facebook/CallbackManager;
    .locals 1

    .line 349
    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->callbackManager:Lcom/facebook/CallbackManager;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 349
    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTYPE_IMAGE$p()I
    .locals 1

    .line 349
    sget v0, Lcom/kakaogame/idp/FacebookShare;->TYPE_IMAGE:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showShareImageDialog(Lcom/kakaogame/idp/FacebookShare;Lcom/facebook/share/widget/ShareDialog;Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/idp/FacebookShare;->showShareImageDialog(Lcom/facebook/share/widget/ShareDialog;Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showShareLinkialog(Lcom/kakaogame/idp/FacebookShare;Lcom/facebook/share/widget/ShareDialog;Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/idp/FacebookShare;->showShareLinkialog(Lcom/facebook/share/widget/ShareDialog;Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final autoLogin()Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1649
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const v2, 0x2257782e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    :try_start_0
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    const/16 v1, 0xfaa

    if-nez v0, :cond_0

    .line 1679
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v2, "current access token is null"

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 1689
    :cond_0
    sget-object v0, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v0

    .line 1699
    sget-object v2, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    new-instance v3, Lcom/kakaogame/idp/FacebookShare$autoLogin$1;

    invoke-direct {v3, v0}, Lcom/kakaogame/idp/FacebookShare$autoLogin$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    check-cast v3, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-virtual {v2, v3}, Lcom/facebook/AccessToken$Companion;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    const-wide/16 v2, 0x7530

    .line 1839
    invoke-virtual {v0, v2, v3}, Lcom/kakaogame/util/MutexLock;->lock(J)V

    .line 1849
    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1869
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v2, "refresh AccessToken Failure."

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 1879
    :cond_1
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 1899
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v2, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1909
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final getImageFileFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 2259
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2279
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const v2, 0x5d125b07

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final login(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x225569de

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 929
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v2, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const v3, 0x3363597b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :try_start_0
    sget-object v1, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v1

    .line 959
    sget-object v3, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v3}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v3

    sget-object v4, Lcom/kakaogame/idp/FacebookShare;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v5, Lcom/kakaogame/idp/FacebookShare$login$1;

    invoke-direct {v5, v1}, Lcom/kakaogame/idp/FacebookShare$login$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    check-cast v5, Lcom/facebook/FacebookCallback;

    invoke-virtual {v3, v4, v5}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 1209
    new-instance v3, Lcom/kakaogame/idp/FacebookShare$login$eventListener$1;

    invoke-direct {v3, v1}, Lcom/kakaogame/idp/FacebookShare$login$eventListener$1;-><init>(Lcom/kakaogame/util/MutexLock;)V

    move-object v6, v3

    check-cast v6, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    .line 1469
    sget-object v4, Lcom/kakaogame/KGAuthActivity;->Companion:Lcom/kakaogame/KGAuthActivity$Companion;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kakaogame/KGAuthActivity$Companion;->start$default(Lcom/kakaogame/KGAuthActivity$Companion;Landroid/app/Activity;Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;ILjava/lang/Object;)J

    move-result-wide v3

    const/4 p1, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 1479
    invoke-static {v1, v6, v7, p1, v5}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 1489
    sget-object p1, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/kakaogame/auth/AuthActivityManager;->finishActivity(J)V

    .line 1499
    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    .line 1509
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1529
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v0, "activity is destroyed"

    const/16 v1, 0x2329

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1549
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1569
    :cond_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1589
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1599
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public static final shareImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d125a47

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3360d7bb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const v2, 0x5d125ae7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 709
    sget-object v0, Lcom/facebook/share/widget/ShareDialog;->Companion:Lcom/facebook/share/widget/ShareDialog$Companion;

    const-class v2, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, v2}, Lcom/facebook/share/widget/ShareDialog$Companion;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p1, "ShareDialog.canShow(SharePhotoContent.class) : FALSE"

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x1f41

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 749
    :cond_0
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 779
    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    invoke-direct {v0}, Lcom/kakaogame/idp/FacebookShare;->autoLogin()Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 809
    :cond_2
    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    invoke-direct {v0, p0}, Lcom/kakaogame/idp/FacebookShare;->login(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 829
    :cond_3
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 849
    :cond_4
    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    sget v1, Lcom/kakaogame/idp/FacebookShare;->TYPE_IMAGE:I

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/kakaogame/idp/FacebookShare;->showShareDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 869
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object p2, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 879
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final shareLink(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0e6720

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3360d7bb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const v2, 0x7d724cad

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 449
    sget-object v0, Lcom/facebook/share/widget/ShareDialog;->Companion:Lcom/facebook/share/widget/ShareDialog$Companion;

    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, v2}, Lcom/facebook/share/widget/ShareDialog$Companion;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p1, "ShareDialog.canShow(ShareLinkContent.class) : FALSE"

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x1f41

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 489
    :cond_0
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 519
    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    invoke-direct {v0}, Lcom/kakaogame/idp/FacebookShare;->autoLogin()Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 539
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    :cond_2
    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    invoke-direct {v0, p0}, Lcom/kakaogame/idp/FacebookShare;->login(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 569
    :cond_3
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 589
    :cond_4
    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->INSTANCE:Lcom/kakaogame/idp/FacebookShare;

    sget v1, Lcom/kakaogame/idp/FacebookShare;->TYPE_LINK:I

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/kakaogame/idp/FacebookShare;->showShareDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 609
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object p2, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final showShareDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x5d12653f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 2699
    :try_start_0
    sget-object v1, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v1

    .line 2709
    new-instance v2, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;

    invoke-direct {v2, p2, v1, p3, p4}, Lcom/kakaogame/idp/FacebookShare$showShareDialog$eventListener$1;-><init>(ILcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    .line 3229
    sget-object v3, Lcom/kakaogame/KGAuthActivity;->Companion:Lcom/kakaogame/KGAuthActivity$Companion;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, v2

    invoke-static/range {v3 .. v8}, Lcom/kakaogame/KGAuthActivity$Companion;->start$default(Lcom/kakaogame/KGAuthActivity$Companion;Landroid/app/Activity;Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;ILjava/lang/Object;)J

    move-result-wide p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    const-wide/16 v3, 0x0

    .line 3239
    invoke-static {v1, v3, v4, p3, p4}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 3249
    sget-object p3, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p3}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/kakaogame/auth/AuthActivityManager;->finishActivity(J)V

    .line 3259
    sget-object p1, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/kakaogame/auth/AuthActivityManager;->removeResultListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V

    .line 3269
    invoke-virtual {v1}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    .line 3279
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object p3, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3309
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object p3, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p4

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, p4, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3319
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final showShareImageDialog(Lcom/facebook/share/widget/ShareDialog;Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/widget/ShareDialog;",
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2349
    sget-object v0, Lcom/facebook/share/widget/ShareDialog;->Companion:Lcom/facebook/share/widget/ShareDialog$Companion;

    const-class v1, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/ShareDialog$Companion;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2359
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v1, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const v2, 0x543b4e72    # 3.2179E12f

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 2379
    invoke-direct {p0, p3}, Lcom/kakaogame/idp/FacebookShare;->getImageFileFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_0

    .line 2399
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa0

    invoke-virtual {p1, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2409
    invoke-virtual {p2, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2419
    invoke-virtual {p2}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .line 2449
    :cond_0
    new-instance p2, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {p2}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 2459
    invoke-virtual {p2, p3}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p2

    .line 2469
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object p2

    .line 2479
    move-object p3, p4

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x2257475e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 2499
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p3, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2509
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2529
    :cond_1
    new-instance p3, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {p3}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    .line 2539
    invoke-virtual {p3, p4}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object p3

    .line 2549
    invoke-virtual {p3}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p3

    .line 2559
    invoke-virtual {v0, p3}, Lcom/facebook/share/model/SharePhotoContent$Builder;->setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 2579
    :cond_2
    invoke-virtual {v0, p2}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p2

    .line 2589
    invoke-virtual {p1, p2}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_0

    .line 2609
    :cond_3
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object p3, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const-string p4, "ShareDialog.canShow(SharePhotoContent.class) : FALSE"

    invoke-virtual {p1, p3, p4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0x1f41

    invoke-virtual {p1, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2629
    invoke-virtual {p2, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2639
    invoke-virtual {p2}, Lcom/kakaogame/util/MutexLock;->unlock()V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private final showShareLinkialog(Lcom/facebook/share/widget/ShareDialog;Lcom/kakaogame/util/MutexLock;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/widget/ShareDialog;",
            "Lcom/kakaogame/util/MutexLock<",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2019
    sget-object v0, Lcom/facebook/share/widget/ShareDialog;->Companion:Lcom/facebook/share/widget/ShareDialog$Companion;

    const-class v1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/ShareDialog$Companion;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2029
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object v0, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const v1, 0x22574776

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    new-instance p2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 2049
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p2

    check-cast p2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 2059
    move-object p3, p4

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x2257475e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2079
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p3, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 2089
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2109
    :cond_0
    new-instance p3, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {p3}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    .line 2119
    invoke-virtual {p3, p4}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object p3

    .line 2129
    invoke-virtual {p3}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p3

    .line 2139
    invoke-virtual {p2, p3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 2159
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_0

    .line 2179
    :cond_2
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    sget-object p3, Lcom/kakaogame/idp/FacebookShare;->TAG:Ljava/lang/String;

    const-string p4, "ShareDialog.canShow(ShareLinkContent.class) : FALSE"

    invoke-virtual {p1, p3, p4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0x1f41

    invoke-virtual {p1, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2199
    invoke-virtual {p2, p1}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 2209
    invoke-virtual {p2}, Lcom/kakaogame/util/MutexLock;->unlock()V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
