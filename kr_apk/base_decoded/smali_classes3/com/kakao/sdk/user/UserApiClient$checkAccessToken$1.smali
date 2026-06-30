.class public final Lcom/kakao/sdk/user/UserApiClient$checkAccessToken$1;
.super Lcom/kakao/sdk/network/ApiCallback;
.source "UserApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/user/UserApiClient;->checkAccessToken$user_release(Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/sdk/network/ApiCallback<",
        "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/kakao/sdk/user/UserApiClient$checkAccessToken$1",
        "Lcom/kakao/sdk/network/ApiCallback;",
        "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
        "onComplete",
        "",
        "model",
        "error",
        "",
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


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/user/model/AccessTokenInfo;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakao/sdk/user/UserApiClient$checkAccessToken$1;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    .line 4529
    invoke-direct {p0, p1}, Lcom/kakao/sdk/network/ApiCallback;-><init>(Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onComplete(Lcom/kakao/sdk/user/model/AccessTokenInfo;Ljava/lang/Throwable;)V
    .locals 1

    .line 4549
    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient$checkAccessToken$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 4529
    check-cast p1, Lcom/kakao/sdk/user/model/AccessTokenInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/user/UserApiClient$checkAccessToken$1;->onComplete(Lcom/kakao/sdk/user/model/AccessTokenInfo;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method
