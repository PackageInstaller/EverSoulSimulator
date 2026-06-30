.class public final Lcom/kakao/sdk/common/KakaoSdk;
.super Ljava/lang/Object;
.source "KakaoSdk.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/KakaoSdk$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001:B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JN\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020,2\u0006\u00106\u001a\u0002072\u0006\u0010\u001b\u001a\u00020\u001aJY\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u00106\u001a\u0004\u0018\u000107H\u0007\u00a2\u0006\u0002\u00108J\u0008\u00109\u001a\u000202H\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001a@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0006R\u0011\u0010\u001f\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0006R\u001a\u0010!\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001c\"\u0004\u0008#\u0010$R\u001b\u0010%\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008&\u0010\u0006R\u0011\u0010)\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0006R\u001a\u0010+\u001a\u00020,X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100\u00a8\u0006;"
    }
    d2 = {
        "Lcom/kakao/sdk/common/KakaoSdk;",
        "",
        "()V",
        "appKey",
        "",
        "getAppKey",
        "()Ljava/lang/String;",
        "applicationContextInfo",
        "Lcom/kakao/sdk/common/model/ApplicationContextInfo;",
        "getApplicationContextInfo",
        "()Lcom/kakao/sdk/common/model/ApplicationContextInfo;",
        "setApplicationContextInfo",
        "(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V",
        "approvalType",
        "Lcom/kakao/sdk/common/model/ApprovalType;",
        "getApprovalType",
        "()Lcom/kakao/sdk/common/model/ApprovalType;",
        "setApprovalType",
        "(Lcom/kakao/sdk/common/model/ApprovalType;)V",
        "hosts",
        "Lcom/kakao/sdk/common/model/ServerHosts;",
        "getHosts",
        "()Lcom/kakao/sdk/common/model/ServerHosts;",
        "setHosts",
        "(Lcom/kakao/sdk/common/model/ServerHosts;)V",
        "<set-?>",
        "",
        "isAutomotive",
        "()Z",
        "kaHeader",
        "getKaHeader",
        "keyHash",
        "getKeyHash",
        "loggingEnabled",
        "getLoggingEnabled",
        "setLoggingEnabled",
        "(Z)V",
        "moduleType",
        "getModuleType",
        "moduleType$delegate",
        "Lkotlin/Lazy;",
        "redirectUri",
        "getRedirectUri",
        "type",
        "Lcom/kakao/sdk/common/KakaoSdk$Type;",
        "getType",
        "()Lcom/kakao/sdk/common/KakaoSdk$Type;",
        "setType",
        "(Lcom/kakao/sdk/common/KakaoSdk$Type;)V",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "customScheme",
        "sdkIdentifier",
        "Lcom/kakao/sdk/common/model/SdkIdentifier;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;)V",
        "registerLifecycleEventObserver",
        "Type",
        "common_release"
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
.field public static final INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

.field public static applicationContextInfo:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

.field public static approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

.field public static hosts:Lcom/kakao/sdk/common/model/ServerHosts;

.field private static isAutomotive:Z

.field private static loggingEnabled:Z

.field private static final moduleType$delegate:Lkotlin/Lazy;

.field public static type:Lcom/kakao/sdk/common/KakaoSdk$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/common/KakaoSdk;

    invoke-direct {v0}, Lcom/kakao/sdk/common/KakaoSdk;-><init>()V

    sput-object v0, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    .line 759
    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk$moduleType$2;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk$moduleType$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/KakaoSdk;->moduleType$delegate:Lkotlin/Lazy;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/common/KakaoSdk;->init$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/common/KakaoSdk;->init$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/common/KakaoSdk;->init$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x60

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/common/KakaoSdk;->init$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/common/KakaoSdk;->init$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;)V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object v2, p1

    const-string v0, "context"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    if-nez p2, :cond_0

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kakao"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    if-eqz p3, :cond_1

    .line 1069
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez p4, :cond_2

    .line 1079
    new-instance v5, Lcom/kakao/sdk/common/model/ServerHosts;

    invoke-direct {v5}, Lcom/kakao/sdk/common/model/ServerHosts;-><init>()V

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    if-nez p5, :cond_3

    .line 1089
    new-instance v6, Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-direct {v6}, Lcom/kakao/sdk/common/model/ApprovalType;-><init>()V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    .line 1099
    :goto_3
    sget-object v7, Lcom/kakao/sdk/common/KakaoSdk$Type;->KOTLIN:Lcom/kakao/sdk/common/KakaoSdk$Type;

    if-nez p6, :cond_4

    .line 1109
    new-instance v8, Lcom/kakao/sdk/common/model/SdkIdentifier;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v10, v9, v10}, Lcom/kakao/sdk/common/model/SdkIdentifier;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1029
    invoke-virtual/range {v0 .. v9}, Lcom/kakao/sdk/common/KakaoSdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/KakaoSdk$Type;Lcom/kakao/sdk/common/model/SdkIdentifier;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic init$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x40

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object p8, v1

    .line 939
    invoke-static/range {p2 .. p8}, Lcom/kakao/sdk/common/KakaoSdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/model/SdkIdentifier;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final registerLifecycleEventObserver()V
    .locals 4

    :try_start_0
    const-string v0, "com.kakao.sdk.user.AppLifecycleObserver"

    .line 1429
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 1439
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1449
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LifecycleEventObserver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/lifecycle/LifecycleEventObserver;

    .line 1459
    sget-object v1, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v1}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1479
    sget-object v1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to register AppLifecycleObserver "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;
    .locals 1

    .line 569
    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->applicationContextInfo:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "applicationContextInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getApprovalType()Lcom/kakao/sdk/common/model/ApprovalType;
    .locals 1

    .line 689
    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "approvalType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getHosts()Lcom/kakao/sdk/common/model/ServerHosts;
    .locals 1

    .line 599
    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->hosts:Lcom/kakao/sdk/common/model/ServerHosts;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "hosts"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getKaHeader()Ljava/lang/String;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->getKaHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKeyHash()Ljava/lang/String;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->getSigningKeyHash()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLoggingEnabled()Z
    .locals 1

    .line 629
    sget-boolean v0, Lcom/kakao/sdk/common/KakaoSdk;->loggingEnabled:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getModuleType()Ljava/lang/String;
    .locals 1

    .line 759
    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->moduleType$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRedirectUri()Ljava/lang/String;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getType()Lcom/kakao/sdk/common/KakaoSdk$Type;
    .locals 1

    .line 659
    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->type:Lcom/kakao/sdk/common/KakaoSdk$Type;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kakao/sdk/common/model/ServerHosts;Lcom/kakao/sdk/common/model/ApprovalType;Lcom/kakao/sdk/common/KakaoSdk$Type;Lcom/kakao/sdk/common/model/SdkIdentifier;Z)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v5, p7

    const-string v3, "context"

    move-object v4, p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "appKey"

    move-object/from16 v6, p2

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "customScheme"

    move-object/from16 v7, p3

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "hosts"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "approvalType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "type"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sdkIdentifier"

    move-object/from16 v8, p8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p0, v1}, Lcom/kakao/sdk/common/KakaoSdk;->setHosts(Lcom/kakao/sdk/common/model/ServerHosts;)V

    .line 1309
    sput-boolean p4, Lcom/kakao/sdk/common/KakaoSdk;->loggingEnabled:Z

    .line 1319
    invoke-virtual {p0, v5}, Lcom/kakao/sdk/common/KakaoSdk;->setType(Lcom/kakao/sdk/common/KakaoSdk$Type;)V

    .line 1329
    invoke-virtual {p0, v2}, Lcom/kakao/sdk/common/KakaoSdk;->setApprovalType(Lcom/kakao/sdk/common/model/ApprovalType;)V

    .line 1349
    new-instance v11, Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    invoke-virtual {p0}, Lcom/kakao/sdk/common/KakaoSdk;->getModuleType()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object v1, v11

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v6, v9

    move-object/from16 v7, p8

    move-object v8, v10

    move v9, v12

    move-object v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kakao/sdk/common/KakaoSdk$Type;Ljava/lang/String;Lcom/kakao/sdk/common/model/SdkIdentifier;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1339
    invoke-virtual {p0, v11}, Lcom/kakao/sdk/common/KakaoSdk;->setApplicationContextInfo(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V

    .line 1359
    sput-boolean p9, Lcom/kakao/sdk/common/KakaoSdk;->isAutomotive:Z

    .line 1379
    invoke-direct {p0}, Lcom/kakao/sdk/common/KakaoSdk;->registerLifecycleEventObserver()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final isAutomotive()Z
    .locals 1

    .line 719
    sget-boolean v0, Lcom/kakao/sdk/common/KakaoSdk;->isAutomotive:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setApplicationContextInfo(Lcom/kakao/sdk/common/model/ApplicationContextInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    sput-object p1, Lcom/kakao/sdk/common/KakaoSdk;->applicationContextInfo:Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setApprovalType(Lcom/kakao/sdk/common/model/ApprovalType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    sput-object p1, Lcom/kakao/sdk/common/KakaoSdk;->approvalType:Lcom/kakao/sdk/common/model/ApprovalType;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setHosts(Lcom/kakao/sdk/common/model/ServerHosts;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    sput-object p1, Lcom/kakao/sdk/common/KakaoSdk;->hosts:Lcom/kakao/sdk/common/model/ServerHosts;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setLoggingEnabled(Z)V
    .locals 0

    .line 629
    sput-boolean p1, Lcom/kakao/sdk/common/KakaoSdk;->loggingEnabled:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setType(Lcom/kakao/sdk/common/KakaoSdk$Type;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    sput-object p1, Lcom/kakao/sdk/common/KakaoSdk;->type:Lcom/kakao/sdk/common/KakaoSdk$Type;

    return-void

    .array-data 1
    .end array-data
.end method
