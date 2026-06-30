.class public final Lcom/kakao/sdk/auth/TalkAuthCodeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TalkAuthCodeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTalkAuthCodeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TalkAuthCodeActivity.kt\ncom/kakao/sdk/auth/TalkAuthCodeActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 5 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,162:1\n1549#2:163\n1620#2,3:164\n1855#2,2:167\n1#3:169\n47#4:170\n96#5:171\n*S KotlinDebug\n*F\n+ 1 TalkAuthCodeActivity.kt\ncom/kakao/sdk/auth/TalkAuthCodeActivity\n*L\n79#1:163\n79#1:164,3\n79#1:167,2\n126#1:170\n126#1:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0002J\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/TalkAuthCodeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "APPLICATION_ERROR",
        "",
        "getAPPLICATION_ERROR",
        "()Ljava/lang/String;",
        "AUTH_CODE_ERROR",
        "getAUTH_CODE_ERROR",
        "CLIENT_INFO_ERROR",
        "getCLIENT_INFO_ERROR",
        "EXTRA_ERROR_DESCRIPTION",
        "getEXTRA_ERROR_DESCRIPTION",
        "EXTRA_ERROR_TYPE",
        "getEXTRA_ERROR_TYPE",
        "NOT_SUPPORT_ERROR",
        "getNOT_SUPPORT_ERROR",
        "PROTOCOL_ERROR",
        "getPROTOCOL_ERROR",
        "UNKNOWN_ERROR",
        "getUNKNOWN_ERROR",
        "activityResultLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "resultReceiver",
        "Landroid/os/ResultReceiver;",
        "activityResultCallback",
        "Landroidx/activity/result/ActivityResultCallback;",
        "Landroidx/activity/result/ActivityResult;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "sendError",
        "exception",
        "Lcom/kakao/sdk/common/model/KakaoSdkError;",
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
.field private final APPLICATION_ERROR:Ljava/lang/String;

.field private final AUTH_CODE_ERROR:Ljava/lang/String;

.field private final CLIENT_INFO_ERROR:Ljava/lang/String;

.field private final EXTRA_ERROR_DESCRIPTION:Ljava/lang/String;

.field private final EXTRA_ERROR_TYPE:Ljava/lang/String;

.field private final NOT_SUPPORT_ERROR:Ljava/lang/String;

.field private final PROTOCOL_ERROR:Ljava/lang/String;

.field private final UNKNOWN_ERROR:Ljava/lang/String;

.field private final activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public static synthetic $r8$lambda$bykBZ1L5UcdUwYkYm2s99itUQMk(Lcom/kakao/sdk/auth/TalkAuthCodeActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->activityResultCallback$lambda$7(Lcom/kakao/sdk/auth/TalkAuthCodeActivity;Landroidx/activity/result/ActivityResult;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 439
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 469
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 479
    invoke-direct {p0}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->activityResultCallback()Landroidx/activity/result/ActivityResultCallback;

    move-result-object v1

    .line 459
    invoke-virtual {p0, v0, v1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026ityResultCallback()\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "com.kakao.sdk.talk.error.type"

    .line 1519
    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->EXTRA_ERROR_TYPE:Ljava/lang/String;

    const-string v0, "com.kakao.sdk.talk.error.description"

    .line 1529
    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->EXTRA_ERROR_DESCRIPTION:Ljava/lang/String;

    const-string v0, "NotSupportError"

    .line 1549
    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->NOT_SUPPORT_ERROR:Ljava/lang/String;

    const-string v0, "UnknownError"

    .line 1559
    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->UNKNOWN_ERROR:Ljava/lang/String;

    const-string v0, "ProtocolError"

    .line 1569
    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->PROTOCOL_ERROR:Ljava/lang/String;

    const-string v0, "ApplicationError"

    .line 1579
    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->APPLICATION_ERROR:Ljava/lang/String;

    const-string v0, "AuthCodeError"

    .line 1589
    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->AUTH_CODE_ERROR:Ljava/lang/String;

    const-string v0, "ClientInfoError"

    .line 1599
    iput-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->CLIENT_INFO_ERROR:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final activityResultCallback()Landroidx/activity/result/ActivityResultCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Landroidx/activity/result/ActivityResult;",
            ">;"
        }
    .end annotation

    .line 1019
    new-instance v0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/kakao/sdk/auth/TalkAuthCodeActivity;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private static final activityResultCallback$lambda$7(Lcom/kakao/sdk/auth/TalkAuthCodeActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1039
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1079
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_8

    .line 1089
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-nez p1, :cond_2

    .line 1129
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    .line 1139
    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v1, "No result from KakaoTalk."

    .line 1129
    invoke-direct {p1, v0, v1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    .line 1119
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    return-void

    .line 1199
    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->EXTRA_ERROR_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1209
    iget-object v5, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->EXTRA_ERROR_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access_denied"

    .line 1219
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1229
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-direct {p1, v0, v3, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    return-void

    :cond_3
    if-eqz v1, :cond_6

    .line 1269
    sget-object p1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 1709
    invoke-virtual {p1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    .line 1719
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/kakao/sdk/common/model/AuthErrorCause;->Companion:Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p1, v0, v1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1269
    check-cast p1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    if-nez p1, :cond_4

    sget-object p1, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 1289
    :cond_4
    new-instance v0, Lcom/kakao/sdk/common/model/AuthError;

    .line 1319
    new-instance v2, Lcom/kakao/sdk/common/model/AuthErrorResponse;

    if-nez v5, :cond_5

    const-string v5, "no error description"

    :cond_5
    invoke-direct {v2, v1, v5}, Lcom/kakao/sdk/common/model/AuthErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12e

    .line 1289
    invoke-direct {v0, v1, p1, v2}, Lcom/kakao/sdk/common/model/AuthError;-><init>(ILcom/kakao/sdk/common/model/AuthErrorCause;Lcom/kakao/sdk/common/model/AuthErrorResponse;)V

    check-cast v0, Lcom/kakao/sdk/common/model/KakaoSdkError;

    .line 1279
    invoke-direct {p0, v0}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    return-void

    :cond_6
    const-string v1, "com.kakao.sdk.talk.redirectUrl"

    .line 1419
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string v1, "key.url"

    .line 1399
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1439
    iget-object p1, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_7

    const-string p1, "resultReceiver"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v3, p1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1449
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->finish()V

    const/4 p1, 0x0

    .line 1459
    invoke-virtual {p0, p1, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->overridePendingTransition(II)V

    return-void

    .line 1489
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1049
    :cond_9
    :goto_2
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-direct {p1, v0, v3, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V
    .locals 3

    .line 909
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "resultReceiver"

    .line 919
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 939
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key.exception"

    .line 949
    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 959
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x0

    .line 919
    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 989
    :cond_1
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->finish()V

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

.method public final getAPPLICATION_ERROR()Ljava/lang/String;
    .locals 3

    .line 1579
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->APPLICATION_ERROR:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAUTH_CODE_ERROR()Ljava/lang/String;
    .locals 3

    .line 1589
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->AUTH_CODE_ERROR:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCLIENT_INFO_ERROR()Ljava/lang/String;
    .locals 3

    .line 1599
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->CLIENT_INFO_ERROR:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEXTRA_ERROR_DESCRIPTION()Ljava/lang/String;
    .locals 3

    .line 1529
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->EXTRA_ERROR_DESCRIPTION:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEXTRA_ERROR_TYPE()Ljava/lang/String;
    .locals 3

    .line 1519
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->EXTRA_ERROR_TYPE:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNOT_SUPPORT_ERROR()Ljava/lang/String;
    .locals 3

    .line 1549
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->NOT_SUPPORT_ERROR:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPROTOCOL_ERROR()Ljava/lang/String;
    .locals 3

    .line 1569
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->PROTOCOL_ERROR:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUNKNOWN_ERROR()Ljava/lang/String;
    .locals 3

    .line 1559
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->UNKNOWN_ERROR:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/liapp/y;->ڱڱحֱح(Landroid/content/Context;)V

    const-string v0, "\tcom.kakao.sdk.talk.kaHeader : "

    const-string v1, "\tcom.kakao.sdk.talk.redirectUri : "

    const-string v2, "\tcom.kakao.sdk.talk.appKey : "

    const-string v3, "requestCode: "

    .line 519
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 529
    sget p1, Lcom/kakao/sdk/v2/auth/R$layout;->activity_talk_auth_code:I

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->setContentView(I)V

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v4, "key.bundle"

    .line 569
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "key.result.receiver"

    .line 599
    const-class v6, Landroid/os/ResultReceiver;

    .line 579
    invoke-static {v4, v5, v6}, Landroidx/core/os/BundleCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    if-eqz v4, :cond_0

    iput-object v4, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->resultReceiver:Landroid/os/ResultReceiver;

    goto :goto_0

    .line 619
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-string v4, "key.request.code"

    .line 649
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 659
    sget-object v5, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    const-string v3, "key.login.intent"

    .line 689
    const-class v4, Landroid/content/Intent;

    .line 669
    invoke-static {p1, v3, v4}, Landroidx/core/os/BundleCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 729
    sget-object v3, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v4, "loginIntent:"

    invoke-virtual {v3, v4}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 739
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 749
    sget-object v4, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v5, "com.kakao.sdk.talk.appKey"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 759
    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v4, "com.kakao.sdk.talk.redirectUri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 769
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v2, "com.kakao.sdk.talk.kaHeader"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    const-string v0, "com.kakao.sdk.talk.extraparams"

    .line 779
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 789
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const-string v2, "\tcom.kakao.sdk.talk.extraparams"

    invoke-virtual {v1, v2}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 799
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "keySet()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 1639
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1649
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1659
    check-cast v3, Ljava/lang/String;

    .line 799
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1659
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1669
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 1639
    check-cast v2, Ljava/lang/Iterable;

    .line 1679
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 799
    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v2, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    goto :goto_2

    .line 829
    :cond_3
    iget-object v0, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->activityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_3

    .line 559
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no extras."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 849
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 859
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/common/model/ClientError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    check-cast v0, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-direct {p0, v0}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->sendError(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    :goto_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method
