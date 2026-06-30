.class public final Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;
.super Ljava/lang/Object;
.source "AppLifecycleObserver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/user/AppLifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;",
        "",
        "()V",
        "INTERVAL_HOUR",
        "",
        "instance",
        "Lcom/kakao/sdk/user/AppLifecycleObserver;",
        "getInstance$annotations",
        "getInstance",
        "()Lcom/kakao/sdk/user/AppLifecycleObserver;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "user_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakao/sdk/user/AppLifecycleObserver$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic getInstance$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getInstance()Lcom/kakao/sdk/user/AppLifecycleObserver;
    .locals 1

    .line 459
    invoke-static {}, Lcom/kakao/sdk/user/AppLifecycleObserver;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/user/AppLifecycleObserver;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
