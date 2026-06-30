.class public abstract Lcom/kakao/sdk/common/util/BaseResultReceiver;
.super Landroid/os/ResultReceiver;
.source "BaseResultReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/ResultReceiver;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseResultReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseResultReceiver.kt\ncom/kakao/sdk/common/util/BaseResultReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0004\u0008\u0001\u0010\u00032\u00020\u0004B\u000f\u0008\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H&J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J\u0015\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0017\u0010\u001e\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000f\u001a\u00020\u0010H&\u00a2\u0006\u0002\u0010\u001fJ\u0006\u0010 \u001a\u00020\u0012J\u000e\u0010!\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\"\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019J\u0015\u0010#\u001a\u00020\u00122\u0006\u0010\t\u001a\u00028\u0001H\u0004\u00a2\u0006\u0002\u0010\u001cR$\u0010\t\u001a\u0004\u0018\u00018\u00012\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u0001@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/BaseResultReceiver;",
        "T",
        "",
        "E",
        "Landroid/os/ResultReceiver;",
        "identifier",
        "",
        "(Ljava/lang/String;)V",
        "<set-?>",
        "emitter",
        "getEmitter",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "isError",
        "",
        "url",
        "Landroid/net/Uri;",
        "onError",
        "",
        "error",
        "",
        "onReceiveResult",
        "resultCode",
        "",
        "resultData",
        "Landroid/os/Bundle;",
        "onSuccess",
        "response",
        "(Ljava/lang/Object;)V",
        "parseError",
        "parseResponse",
        "(Landroid/net/Uri;)Ljava/lang/Object;",
        "processError",
        "receiveCanceled",
        "receiveOk",
        "setEmitter",
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


# instance fields
.field private emitter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final identifier:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 409
    iput-object p1, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->identifier:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getEmitter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->emitter:Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public abstract isError(Landroid/net/Uri;)Z
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "resultData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    iget-object v1, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->identifier:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "***** "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->d(Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->processError()V

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0, p2}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->receiveCanceled(Landroid/os/Bundle;)V

    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {p0, p2}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->receiveOk(Landroid/os/Bundle;)V

    :goto_0
    const/4 p1, 0x0

    .line 669
    iput-object p1, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->emitter:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract parseError(Landroid/net/Uri;)Ljava/lang/Throwable;
.end method

.method public abstract parseResponse(Landroid/net/Uri;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation
.end method

.method public final processError()V
    .locals 4

    .line 1019
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown resultCode in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#onReceivedResult()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1029
    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final receiveCanceled(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "resultData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key.exception"

    .line 939
    const-class v1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    .line 919
    invoke-static {p1, v0, v1}, Landroidx/core/os/BundleCompat;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    if-eqz p1, :cond_0

    .line 969
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final receiveOk(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "resultData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key.url"

    .line 729
    const-class v1, Landroid/net/Uri;

    .line 709
    invoke-static {p1, v0, v1}, Landroidx/core/os/BundleCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 769
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->isError(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->parseError(Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object p1

    .line 789
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 829
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->parseResponse(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/kakao/sdk/common/util/BaseResultReceiver;

    .line 839
    new-instance v0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse response\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 879
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 749
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method

.method protected final setEmitter(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->emitter:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
