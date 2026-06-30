.class public abstract Lcom/kakao/sdk/network/ApiCallback;
.super Ljava/lang/Object;
.source "ApiCallback.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/network/ApiCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u0015*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0015B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J!\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0002\u0010\rJ\u001e\u0010\u000e\u001a\u00020\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u0011\u001a\u00020\u000cH\u0016J$\u0010\u0012\u001a\u00020\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakao/sdk/network/ApiCallback;",
        "T",
        "Lretrofit2/Callback;",
        "logging",
        "",
        "(Z)V",
        "getLogging",
        "()Z",
        "onComplete",
        "",
        "model",
        "error",
        "",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "onFailure",
        "call",
        "Lretrofit2/Call;",
        "t",
        "onResponse",
        "response",
        "Lretrofit2/Response;",
        "Companion",
        "network_release"
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
.field public static final Companion:Lcom/kakao/sdk/network/ApiCallback$Companion;


# instance fields
.field private final logging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/network/ApiCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/network/ApiCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/network/ApiCallback;->Companion:Lcom/kakao/sdk/network/ApiCallback$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/kakao/sdk/network/ApiCallback;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/kakao/sdk/network/ApiCallback;->logging:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lcom/kakao/sdk/network/ApiCallback;-><init>(Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getLogging()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/kakao/sdk/network/ApiCallback;->logging:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public abstract onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-static {p2}, Lcom/kakao/sdk/network/ExceptionWrapperKt;->getOrigin(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 369
    iget-boolean p2, p0, Lcom/kakao/sdk/network/ApiCallback;->logging:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p2, p1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    :cond_0
    const/4 p2, 0x0

    .line 379
    invoke-virtual {p0, p2, p1}, Lcom/kakao/sdk/network/ApiCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    iget-boolean p1, p0, Lcom/kakao/sdk/network/ApiCallback;->logging:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 459
    invoke-virtual {p0, v0, p1}, Lcom/kakao/sdk/network/ApiCallback;->onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 479
    :cond_1
    sget-object v0, Lcom/kakao/sdk/network/ApiCallback;->Companion:Lcom/kakao/sdk/network/ApiCallback$Companion;

    new-instance v1, Lretrofit2/HttpException;

    invoke-direct {v1, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/network/ApiCallback$Companion;->translateError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/network/ApiCallback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
