.class public abstract Lcom/kakao/sdk/auth/SingleResultReceiver;
.super Lcom/kakao/sdk/common/util/BaseResultReceiver;
.source "CustomSchemeResultReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kakao/sdk/common/util/BaseResultReceiver<",
        "TT;",
        "Lkotlin/jvm/functions/Function2<",
        "-TT;-",
        "Ljava/lang/Throwable;",
        "+",
        "Lkotlin/Unit;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008&\u0018\u0000 \u000f*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022$\u0012\u0004\u0012\u0002H\u0001\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u0001H\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u00040\u0003:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0015\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/SingleResultReceiver;",
        "T",
        "",
        "Lcom/kakao/sdk/common/util/BaseResultReceiver;",
        "Lkotlin/Function2;",
        "",
        "",
        "identifier",
        "",
        "(Ljava/lang/String;)V",
        "onError",
        "error",
        "onSuccess",
        "response",
        "(Ljava/lang/Object;)V",
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
.field public static final Companion:Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/SingleResultReceiver;->Companion:Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/SingleResultReceiver;-><init>(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/SingleResultReceiver;->getEmitter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/kakao/sdk/auth/SingleResultReceiver;->getEmitter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
