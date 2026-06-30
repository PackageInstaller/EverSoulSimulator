.class public final Lcom/kakao/sdk/auth/AuthCodeClient;
.super Ljava/lang/Object;
.source "AuthCodeClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/AuthCodeClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthCodeClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthCodeClient.kt\ncom/kakao/sdk/auth/AuthCodeClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n1#2:207\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 *2\u00020\u0001:\u0001*B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u00d0\u0001\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00102\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00132\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00102\u0010\u0008\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00102\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00132:\u0010\u001b\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0015\u0012\u0013\u0018\u00010 \u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u000c0\u001cH\u0007J\u00b0\u0001\u0010\"\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0008\u0008\u0002\u0010#\u001a\u00020$2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00102\u0010\u0008\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00102\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00132:\u0010\u001b\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0013\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0015\u0012\u0013\u0018\u00010 \u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u000c0\u001cH\u0007J\u000e\u0010%\u001a\u00020&2\u0006\u0010\r\u001a\u00020\u000eJ1\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00130(2\u001c\u0010\u001b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0012\u0006\u0012\u0004\u0018\u00010 \u0012\u0004\u0012\u00020\u000c0\u001cH\u0000\u00a2\u0006\u0002\u0008)R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/AuthCodeClient;",
        "",
        "intentResolveClient",
        "Lcom/kakao/sdk/common/util/IntentResolveClient;",
        "applicationInfo",
        "Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "approvalType",
        "Lcom/kakao/sdk/common/model/ApprovalType;",
        "(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V",
        "authorizeWithKakaoAccount",
        "",
        "context",
        "Landroid/content/Context;",
        "prompts",
        "",
        "Lcom/kakao/sdk/auth/model/Prompt;",
        "scopes",
        "",
        "nonce",
        "agt",
        "channelPublicIds",
        "serviceTerms",
        "loginHint",
        "codeVerifier",
        "kauthTxId",
        "callback",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "code",
        "",
        "error",
        "authorizeWithKakaoTalk",
        "requestCode",
        "",
        "isKakaoTalkLoginAvailable",
        "",
        "resultReceiver",
        "Lcom/kakao/sdk/auth/SingleResultReceiver;",
        "resultReceiver$auth_release",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

.field public static final DEFAULT_REQUEST_CODE:I = 0x271c

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/auth/AuthCodeClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

.field private final approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

.field private final contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

.field private final intentResolveClient:Lcom/kakao/sdk/common/util/IntentResolveClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    .line 1879
    sget-object v0, Lcom/kakao/sdk/auth/AuthCodeClient$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/auth/AuthCodeClient$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/AuthCodeClient;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kakao/sdk/auth/AuthCodeClient;-><init>(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V
    .locals 1

    const-string v0, "intentResolveClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "approvalType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->intentResolveClient:Lcom/kakao/sdk/common/util/IntentResolveClient;

    .line 439
    iput-object p2, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    .line 449
    iput-object p3, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    .line 459
    iput-object p4, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 429
    sget-object p1, Lcom/kakao/sdk/common/util/IntentResolveClient;->Companion:Lcom/kakao/sdk/common/util/IntentResolveClient$Companion;

    invoke-virtual {p1}, Lcom/kakao/sdk/common/util/IntentResolveClient$Companion;->getInstance()Lcom/kakao/sdk/common/util/IntentResolveClient;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 439
    sget-object p2, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p2}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/common/model/ApplicationInfo;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 449
    sget-object p3, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p3}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p3

    check-cast p3, Lcom/kakao/sdk/common/model/ContextInfo;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 459
    sget-object p4, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p4}, Lcom/kakao/sdk/common/KakaoSdk;->getApprovalType()Lcom/kakao/sdk/common/model/ApprovalType;

    move-result-object p4

    .line 419
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/auth/AuthCodeClient;-><init>(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 419
    sget-object v0, Lcom/kakao/sdk/auth/AuthCodeClient;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 15

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    move-object v13, v2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v14, p11

    .line 1149
    invoke-virtual/range {v3 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const/16 v1, 0x271c

    move v6, v1

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v12, p9

    .line 519
    invoke-virtual/range {v3 .. v12}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakao/sdk/auth/AuthCodeClient;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthCodeClient;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p11

    const-string v4, "context"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "callback"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    new-instance v5, Lcom/kakao/sdk/auth/UriUtility;

    const/4 v4, 0x1

    const/4 v15, 0x0

    invoke-direct {v5, v15, v4, v15}, Lcom/kakao/sdk/auth/UriUtility;-><init>(Lcom/kakao/sdk/common/model/ServerHosts;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1309
    iget-object v4, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v4}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v6

    .line 1329
    iget-object v4, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v4}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v8

    .line 1349
    iget-object v4, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v4}, Lcom/kakao/sdk/common/model/ContextInfo;->getKaHeader()Ljava/lang/String;

    move-result-object v10

    .line 1409
    iget-object v4, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v4}, Lcom/kakao/sdk/common/model/ApprovalType;->getValue()Ljava/lang/String;

    move-result-object v16

    if-eqz v2, :cond_0

    .line 1419
    sget-object v4, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v9, "getBytes(...)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->codeChallenge([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_0

    :cond_0
    move-object/from16 v17, v15

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "S256"

    move-object/from16 v18, v2

    goto :goto_1

    :cond_1
    move-object/from16 v18, v15

    :goto_1
    move-object/from16 v7, p5

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    move-object v2, v15

    move-object/from16 v15, p4

    move-object/from16 v19, p10

    .line 1299
    invoke-virtual/range {v5 .. v19}, Lcom/kakao/sdk/auth/UriUtility;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1459
    sget-object v5, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v5, v4}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 1489
    :try_start_0
    sget-object v5, Lcom/kakao/sdk/auth/IntentFactory;->INSTANCE:Lcom/kakao/sdk/auth/IntentFactory;

    .line 1519
    iget-object v6, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v6}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v6

    .line 1529
    invoke-virtual {v1, v3}, Lcom/kakao/sdk/auth/AuthCodeClient;->resultReceiver$auth_release(Lkotlin/jvm/functions/Function2;)Lcom/kakao/sdk/auth/SingleResultReceiver;

    move-result-object v7

    check-cast v7, Landroid/os/ResultReceiver;

    .line 1489
    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/kakao/sdk/auth/IntentFactory;->account(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v4

    .line 1479
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1569
    sget-object v4, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v4, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 1579
    invoke-interface {v3, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p10

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v13, 0x200

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p9

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x300

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p8

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x380

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p7

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3c0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3e0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p5

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3f0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3f8

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3fc

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoAccount(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x3fe

    const/4 v14, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v14}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoTalk(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v10, p9

    const-string v5, "context"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "callback"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p0 .. p1}, Lcom/kakao/sdk/auth/AuthCodeClient;->isKakaoTalkLoginAvailable(Landroid/content/Context;)Z

    move-result v5

    const/4 v11, 0x0

    if-nez v5, :cond_0

    .line 639
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v2, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v3, "KakaoTalk not installed"

    invoke-direct {v0, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-interface {v10, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 679
    :cond_0
    :try_start_0
    sget-object v5, Lcom/kakao/sdk/auth/IntentFactory;->INSTANCE:Lcom/kakao/sdk/auth/IntentFactory;

    .line 709
    iget-object v6, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v6}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v6

    .line 719
    iget-object v7, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->applicationInfo:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v7}, Lcom/kakao/sdk/common/model/ApplicationInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v7

    .line 729
    iget-object v8, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->contextInfo:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v8}, Lcom/kakao/sdk/common/model/ContextInfo;->getKaHeader()Ljava/lang/String;

    move-result-object v8

    .line 739
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, ","

    if-eqz p5, :cond_1

    :try_start_1
    const-string v13, "channel_public_id"

    .line 779
    move-object/from16 v14, p5

    check-cast v14, Ljava/lang/Iterable;

    move-object v15, v12

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 759
    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p6, :cond_2

    const-string v13, "service_terms"

    .line 839
    move-object/from16 v14, p6

    check-cast v14, Ljava/lang/Iterable;

    move-object v15, v12

    check-cast v15, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const/16 v22, 0x0

    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 819
    invoke-virtual {v9, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_2
    iget-object v13, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v13}, Lcom/kakao/sdk/common/model/ApprovalType;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string v14, "approval_type"

    invoke-virtual {v9, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    const-string v13, "code_challenge"

    .line 889
    sget-object v14, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    sget-object v15, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v15, "getBytes(...)"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->codeChallenge([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "code_challenge_method"

    const-string v13, "S256"

    .line 899
    invoke-virtual {v9, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    const-string v3, "prompt"

    .line 979
    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Iterable;

    move-object v14, v12

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v12, Lcom/kakao/sdk/auth/AuthCodeClient$authorizeWithKakaoTalk$1$5$1;->INSTANCE:Lcom/kakao/sdk/auth/AuthCodeClient$authorizeWithKakaoTalk$1$5$1;

    move-object/from16 v19, v12

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v20, 0x1e

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 959
    invoke-virtual {v9, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v2, :cond_6

    const-string v3, "nonce"

    .line 1009
    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v4, :cond_7

    const-string v2, "kauth_tx_id"

    .line 1019
    invoke-virtual {v9, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_7
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1039
    invoke-virtual {v1, v10}, Lcom/kakao/sdk/auth/AuthCodeClient;->resultReceiver$auth_release(Lkotlin/jvm/functions/Function2;)Lcom/kakao/sdk/auth/SingleResultReceiver;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/os/ResultReceiver;

    move-object v2, v5

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    .line 679
    invoke-virtual/range {v2 .. v9}, Lcom/kakao/sdk/auth/IntentFactory;->talk(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/content/Intent;

    move-result-object v2

    .line 669
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1079
    sget-object v2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v2, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 1089
    invoke-interface {v10, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoTalk(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v12}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoTalk(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xc0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v12}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoTalk(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xe0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v12}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoTalk(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v10, p5

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xf0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v12}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoTalk(Landroid/content/Context;Ljava/util/List;ILkotlin/jvm/functions/Function2;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v10, p4

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xf8

    const/4 v12, 0x0

    move-object v1, p0

    move-object v3, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v12}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoTalk(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakao/sdk/auth/model/Prompt;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v12}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorizeWithKakaoTalk(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xfe

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v10, p2

    invoke-static/range {v1 .. v12}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoTalk$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final isKakaoTalkLoginAvailable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthCodeClient;->intentResolveClient:Lcom/kakao/sdk/common/util/IntentResolveClient;

    sget-object v1, Lcom/kakao/sdk/auth/IntentFactory;->INSTANCE:Lcom/kakao/sdk/auth/IntentFactory;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/IntentFactory;->talkBase()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/kakao/sdk/common/util/IntentResolveClient;->resolveTalkIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final synthetic resultReceiver$auth_release(Lkotlin/jvm/functions/Function2;)Lcom/kakao/sdk/auth/SingleResultReceiver;
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1639
    sget-object v1, Lcom/kakao/sdk/auth/SingleResultReceiver;->Companion:Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;

    const-string v3, "Auth Code"

    sget-object v0, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$1;->INSTANCE:Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2;

    invoke-direct {v0, p0}, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2;-><init>(Lcom/kakao/sdk/auth/AuthCodeClient;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$3;->INSTANCE:Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$3;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;->create(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/kakao/sdk/auth/SingleResultReceiver;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
