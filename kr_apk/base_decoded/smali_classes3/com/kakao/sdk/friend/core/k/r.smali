.class public abstract Lcom/kakao/sdk/friend/core/k/r;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "identifier"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/k/r;->a:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;)Ljava/lang/Object;
.end method

.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/RuntimeException;)V
.end method

.method public final b()V
    .locals 4

    .line 19
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

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/friend/core/k/r;->a(Ljava/lang/RuntimeException;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const-string v0, "resultData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/k/r;->a:Ljava/lang/String;

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

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/k/r;->b()V

    goto :goto_0

    :cond_0
    const-string p1, "key.exception"

    .line 19
    const-class v0, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-static {p2, p1, v0}, Landroidx/core/os/BundleCompat;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/friend/core/k/r;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, p2}, Lcom/kakao/sdk/friend/core/k/r;->a(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/friend/core/k/r;->a(Ljava/lang/Object;)V

    .line 39
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/kakao/sdk/friend/core/k/r;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/k/r;->a()V

    return-void

    .line 49
    :cond_3
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p2, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v1, v0, v1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
