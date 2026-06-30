.class public final Lcom/facebook/gamingservices/ContextChooseDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "ContextChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gamingservices/ContextChooseDialog$Result;,
        Lcom/facebook/gamingservices/ContextChooseDialog$FacebookAppHandler;,
        Lcom/facebook/gamingservices/ContextChooseDialog$ChromeCustomTabHandler;,
        Lcom/facebook/gamingservices/ContextChooseDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/gamingservices/model/ContextChooseContent;",
        "Lcom/facebook/gamingservices/ContextChooseDialog$Result;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextChooseDialog.kt\ncom/facebook/gamingservices/ContextChooseDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,251:1\n1#2:252\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0004#$%&B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u000f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB\u000f\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB\u000f\u0008\u0012\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0014J\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0010H\u0014J\u0010\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0002H\u0002J\u0018\u0010 \u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\"H\u0014R\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u0011\u001a\u0018\u0012\u0014\u0012\u00120\u0013R\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00010\u00128TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/facebook/gamingservices/ContextChooseDialog;",
        "Lcom/facebook/internal/FacebookDialogBase;",
        "Lcom/facebook/gamingservices/model/ContextChooseContent;",
        "Lcom/facebook/gamingservices/ContextChooseDialog$Result;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroid/app/Fragment;",
        "(Landroid/app/Fragment;)V",
        "fragmentWrapper",
        "Lcom/facebook/internal/FragmentWrapper;",
        "(Lcom/facebook/internal/FragmentWrapper;)V",
        "callback",
        "Lcom/facebook/FacebookCallback;",
        "orderedModeHandlers",
        "",
        "Lcom/facebook/internal/FacebookDialogBase$ModeHandler;",
        "getOrderedModeHandlers",
        "()Ljava/util/List;",
        "canShow",
        "",
        "content",
        "createBaseAppCall",
        "Lcom/facebook/internal/AppCall;",
        "registerCallbackImpl",
        "",
        "callbackManager",
        "Lcom/facebook/internal/CallbackManagerImpl;",
        "showForCloud",
        "showImpl",
        "mode",
        "",
        "ChromeCustomTabHandler",
        "Companion",
        "FacebookAppHandler",
        "Result",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CONTEXT_CHOOSE_DIALOG:Ljava/lang/String; = "context_choose"

.field public static final Companion:Lcom/facebook/gamingservices/ContextChooseDialog$Companion;

.field private static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private callback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/gamingservices/ContextChooseDialog$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$48Z4moKidldET4LLNcACX4-iQk4(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;ILandroid/content/Intent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/gamingservices/ContextChooseDialog;->registerCallbackImpl$lambda-4(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;ILandroid/content/Intent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$mf2xTvG-TKTB7nwsaorXb0H3J9U(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/GraphResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/gamingservices/ContextChooseDialog;->showForCloud$lambda-2(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/GraphResponse;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/gamingservices/ContextChooseDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/gamingservices/ContextChooseDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/gamingservices/ContextChooseDialog;->Companion:Lcom/facebook/gamingservices/ContextChooseDialog$Companion;

    .line 247
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GamingContextChoose:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/gamingservices/ContextChooseDialog;->DEFAULT_REQUEST_CODE:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v0, Lcom/facebook/gamingservices/ContextChooseDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/ContextChooseDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/gamingservices/ContextChooseDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 1

    .line 58
    sget v0, Lcom/facebook/gamingservices/ContextChooseDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getActivityContext(Lcom/facebook/gamingservices/ContextChooseDialog;)Landroid/app/Activity;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextChooseDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static final registerCallbackImpl$lambda-4(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;ILandroid/content/Intent;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resultProcessor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/facebook/share/internal/ShareInternalUtility;->INSTANCE:Lcom/facebook/share/internal/ShareInternalUtility;

    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextChooseDialog;->getRequestCode()I

    move-result p0

    check-cast p1, Lcom/facebook/share/internal/ResultProcessor;

    invoke-static {p0, p2, p3, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final showForCloud(Lcom/facebook/gamingservices/model/ContextChooseContent;)V
    .locals 5

    const-string v0, "filters"

    .line 78
    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_3

    .line 83
    new-instance v1, Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/gamingservices/ContextChooseDialog;)V

    .line 89
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getFilters()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "minSize"

    .line 92
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getMinSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getFilters()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextChooseDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget-object v0, Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;->CONTEXT_CHOOSE:Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;

    .line 100
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/gamingservices/cloudgaming/DaemonRequest;->executeAsync(Landroid/content/Context;Lorg/json/JSONObject;Lcom/facebook/gamingservices/cloudgaming/DaemonRequest$Callback;Lcom/facebook/gamingservices/cloudgaming/internal/SDKMessageEnum;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 103
    :catch_0
    iget-object p1, p0, Lcom/facebook/gamingservices/ContextChooseDialog;->callback:Lcom/facebook/FacebookCallback;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Couldn\'t prepare Context Choose Dialog"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    :goto_2
    return-void

    .line 80
    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to open ContextChooseContent with an invalid access token"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showForCloud$lambda-2(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/GraphResponse;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/facebook/gamingservices/ContextChooseDialog;->callback:Lcom/facebook/FacebookCallback;

    if-nez p0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_2

    .line 86
    new-instance v0, Lcom/facebook/gamingservices/ContextChooseDialog$Result;

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/ContextChooseDialog$Result;-><init>(Lcom/facebook/GraphResponse;)V

    invoke-interface {p0, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public canShow(Lcom/facebook/gamingservices/model/ContextChooseContent;)Z
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/facebook/gamingservices/ContextChooseDialog$FacebookAppHandler;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/ContextChooseDialog$FacebookAppHandler;-><init>(Lcom/facebook/gamingservices/ContextChooseDialog;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/gamingservices/ContextChooseDialog$FacebookAppHandler;->canShow(Lcom/facebook/gamingservices/model/ContextChooseContent;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/facebook/gamingservices/ContextChooseDialog$ChromeCustomTabHandler;

    invoke-direct {v0, p0}, Lcom/facebook/gamingservices/ContextChooseDialog$ChromeCustomTabHandler;-><init>(Lcom/facebook/gamingservices/ContextChooseDialog;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/gamingservices/ContextChooseDialog$ChromeCustomTabHandler;->canShow(Lcom/facebook/gamingservices/model/ContextChooseContent;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p1, Lcom/facebook/gamingservices/model/ContextChooseContent;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/ContextChooseDialog;->canShow(Lcom/facebook/gamingservices/model/ContextChooseContent;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .locals 4

    .line 141
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextChooseDialog;->getRequestCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/internal/AppCall;-><init>(ILjava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/gamingservices/model/ContextChooseContent;",
            "Lcom/facebook/gamingservices/ContextChooseDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    .line 139
    new-instance v1, Lcom/facebook/gamingservices/ContextChooseDialog$FacebookAppHandler;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/ContextChooseDialog$FacebookAppHandler;-><init>(Lcom/facebook/gamingservices/ContextChooseDialog;)V

    check-cast v1, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/facebook/gamingservices/ContextChooseDialog$ChromeCustomTabHandler;

    invoke-direct {v1, p0}, Lcom/facebook/gamingservices/ContextChooseDialog$ChromeCustomTabHandler;-><init>(Lcom/facebook/gamingservices/ContextChooseDialog;)V

    check-cast v1, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/gamingservices/ContextChooseDialog$Result;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callbackManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p2, p0, Lcom/facebook/gamingservices/ContextChooseDialog;->callback:Lcom/facebook/FacebookCallback;

    .line 113
    new-instance v0, Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;

    invoke-direct {v0, p2}, Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;-><init>(Lcom/facebook/FacebookCallback;)V

    .line 133
    invoke-virtual {p0}, Lcom/facebook/gamingservices/ContextChooseDialog;->getRequestCode()I

    move-result p2

    new-instance v1, Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/gamingservices/ContextChooseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/gamingservices/ContextChooseDialog;Lcom/facebook/gamingservices/ContextChooseDialog$registerCallbackImpl$resultProcessor$1;)V

    invoke-virtual {p1, p2, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected showImpl(Lcom/facebook/gamingservices/model/ContextChooseContent;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/facebook/gamingservices/cloudgaming/CloudGameLoginHandler;->isRunningInCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/gamingservices/ContextChooseDialog;->showForCloud(Lcom/facebook/gamingservices/model/ContextChooseContent;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic showImpl(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/facebook/gamingservices/model/ContextChooseContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/ContextChooseDialog;->showImpl(Lcom/facebook/gamingservices/model/ContextChooseContent;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method
