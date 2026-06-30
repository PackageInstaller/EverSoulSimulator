.class public Lcom/kakao/sdk/auth/CustomTabLauncherActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CustomTabLauncherActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomTabLauncherActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTabLauncherActivity.kt\ncom/kakao/sdk/auth/CustomTabLauncherActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1#2:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u000eH\u0014J\u0012\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\u0008\u0010\u0017\u001a\u00020\u000eH\u0014J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0013H\u0014J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0008H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/CustomTabLauncherActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "customTabsConnection",
        "Landroid/content/ServiceConnection;",
        "customTabsOpened",
        "",
        "fullUri",
        "Landroid/net/Uri;",
        "internalHandler",
        "Landroid/os/Handler;",
        "resultReceiver",
        "Landroid/os/ResultReceiver;",
        "loadData",
        "",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onNewIntent",
        "onRestoreInstanceState",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "openBrowserWithoutBinding",
        "uri",
        "openChromeCustomTab",
        "sendError",
        "exception",
        "Lcom/kakao/sdk/common/model/KakaoSdkError;",
        "sendOK",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private customTabsConnection:Landroid/content/ServiceConnection;

.field private customTabsOpened:Z

.field private fullUri:Landroid/net/Uri;

.field private internalHandler:Landroid/os/Handler;

.field private resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public static synthetic $r8$lambda$4rocfbrId2Ioy0cS0UBk3ZiB2zc(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;Landroid/os/Message;)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->loadData$lambda$1(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;Landroid/os/Message;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 399
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final loadData$lambda$1(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;Landroid/os/Message;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v0, "handle delay message"

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 819
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    const/4 p0, 0x1

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final openBrowserWithoutBinding(Landroid/net/Uri;)V
    .locals 3

    .line 1519
    :try_start_0
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;->open(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1539
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->w(Ljava/lang/Object;)V

    .line 1559
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    .line 1569
    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v1, "No browser has been installed on a device."

    .line 1559
    invoke-direct {p1, v0, v1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    .line 1549
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private final openChromeCustomTab(Landroid/net/Uri;)V
    .locals 3

    .line 1369
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authorize Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1389
    :try_start_0
    sget-object v0, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/kakao/sdk/common/util/KakaoCustomTabsClient;->openWithDefault(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 1409
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string/jumbo v1, "try to open chrome without service binding"

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1419
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->openBrowserWithoutBinding(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1449
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->w(Ljava/lang/Object;)V

    .line 1459
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->openBrowserWithoutBinding(Landroid/net/Uri;)V

    :cond_0
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V
    .locals 3

    .line 1649
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "resultReceiver"

    .line 1659
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1679
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key.exception"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x0

    .line 1659
    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1709
    :cond_1
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->finish()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final sendOK(Landroid/net/Uri;)V
    .locals 3

    .line 1749
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "resultReceiver"

    .line 1759
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1779
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key.url"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, -0x1

    .line 1759
    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1809
    :cond_1
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->finish()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    invoke-static {p1}, Lcom/liapp/y;->ڱڱحֱح(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public loadData(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "key.bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "key.result.receiver"

    .line 689
    const-class v1, Landroid/os/ResultReceiver;

    .line 669
    invoke-static {p1, v0, v1}, Landroidx/core/os/BundleCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->resultReceiver:Landroid/os/ResultReceiver;

    const-string v0, "key.full_authorize_uri"

    .line 739
    const-class v1, Landroid/net/Uri;

    .line 719
    invoke-static {p1, v0, v1}, Landroidx/core/os/BundleCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->fullUri:Landroid/net/Uri;

    goto :goto_0

    .line 759
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 709
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 799
    :cond_2
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/kakao/sdk/auth/CustomTabLauncherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity$$ExternalSyntheticLambda0;-><init>(Lcom/kakao/sdk/auth/CustomTabLauncherActivity;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 859
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 869
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/model/ClientError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    check-cast v0, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-direct {p0, v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 489
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 499
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->loadData(Landroid/content/Intent;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onDestroy()V
    .locals 3

    .line 1319
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 1329
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1149
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1159
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v1, "onNewIntent"

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1169
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->setIntent(Landroid/content/Intent;)V

    .line 1179
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v3, 0x1

    .line 1189
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1229
    :cond_1
    iput-object v2, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 1249
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1259
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendOK(Landroid/net/Uri;)V

    .line 1279
    :cond_2
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->finish()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "savedInstanceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key.customtabs.opened"

    .line 609
    iget-boolean v1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsOpened:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 599
    iput-boolean p1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsOpened:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onResume()V
    .locals 5

    .line 919
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 939
    iget-boolean v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsOpened:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 949
    iput-boolean v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsOpened:Z

    .line 969
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->fullUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "fullUri"

    .line 979
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->openChromeCustomTab(Landroid/net/Uri;)V

    goto :goto_1

    .line 1009
    :cond_1
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->IllegalState:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string/jumbo v2, "url has been not initialized."

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    check-cast v0, Lcom/kakao/sdk/common/model/KakaoSdkError;

    .line 999
    invoke-direct {p0, v0}, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    goto :goto_1

    .line 1049
    :cond_2
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string/jumbo v2, "trigger delay message"

    invoke-virtual {v0, v2}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1059
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1069
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1079
    iget-object v0, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->internalHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key.customtabs.opened"

    .line 549
    iget-boolean v1, p0, Lcom/kakao/sdk/auth/CustomTabLauncherActivity;->customTabsOpened:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .array-data 1
    .end array-data
.end method
