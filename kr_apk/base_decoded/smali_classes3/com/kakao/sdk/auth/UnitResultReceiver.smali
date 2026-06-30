.class public abstract Lcom/kakao/sdk/auth/UnitResultReceiver;
.super Lcom/kakao/sdk/common/util/BaseResultReceiver;
.source "CustomSchemeResultReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/UnitResultReceiver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/sdk/common/util/BaseResultReceiver<",
        "Lkotlin/Unit;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Ljava/lang/Throwable;",
        "+",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008&\u0018\u0000 \r2\u001c\u0012\u0004\u0012\u00020\u0002\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00020\u00030\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0004H\u0016J\u0015\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/UnitResultReceiver;",
        "Lcom/kakao/sdk/common/util/BaseResultReceiver;",
        "",
        "Lkotlin/Function1;",
        "",
        "identifier",
        "",
        "(Ljava/lang/String;)V",
        "onError",
        "error",
        "onSuccess",
        "response",
        "(Lkotlin/Unit;)V",
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
.field public static final Companion:Lcom/kakao/sdk/auth/UnitResultReceiver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/UnitResultReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/UnitResultReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/UnitResultReceiver;->Companion:Lcom/kakao/sdk/auth/UnitResultReceiver$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/UnitResultReceiver;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/UnitResultReceiver;->getEmitter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/UnitResultReceiver;->onSuccess(Lkotlin/Unit;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onSuccess(Lkotlin/Unit;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/UnitResultReceiver;->getEmitter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
