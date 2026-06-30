.class public final Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;
.super Ljava/lang/Object;
.source "AuthApiManager.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/auth/AuthApiManager;->refreshToken$auth_release(Lcom/kakao/sdk/auth/model/OAuthToken;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/kakao/sdk/auth/model/AccessTokenResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001e\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J$\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/kakao/sdk/auth/AuthApiManager$refreshToken$1",
        "Lretrofit2/Callback;",
        "Lcom/kakao/sdk/auth/model/AccessTokenResponse;",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "t",
        "",
        "onResponse",
        "response",
        "Lretrofit2/Response;",
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $oldToken:Lcom/kakao/sdk/auth/model/OAuthToken;

.field final synthetic this$0:Lcom/kakao/sdk/auth/AuthApiManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/auth/model/OAuthToken;Lcom/kakao/sdk/auth/AuthApiManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "Lcom/kakao/sdk/auth/AuthApiManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->$callback:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->$oldToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    iput-object p3, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->this$0:Lcom/kakao/sdk/auth/AuthApiManager;

    .line 1649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/auth/model/AccessTokenResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    iget-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->$callback:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/kakao/sdk/auth/model/AccessTokenResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/kakao/sdk/auth/model/AccessTokenResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1739
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1749
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/auth/model/AccessTokenResponse;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->$oldToken:Lcom/kakao/sdk/auth/model/OAuthToken;

    iget-object v1, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->this$0:Lcom/kakao/sdk/auth/AuthApiManager;

    iget-object v2, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 1759
    sget-object v3, Lcom/kakao/sdk/auth/model/OAuthToken;->Companion:Lcom/kakao/sdk/auth/model/OAuthToken$Companion;

    invoke-virtual {v3, p1, p2}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;->fromResponse(Lcom/kakao/sdk/auth/model/AccessTokenResponse;Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1

    .line 1769
    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthApiManager;->getTokenManagerProvider()Lcom/kakao/sdk/auth/TokenManagerProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kakao/sdk/auth/TokenManagerProvider;->getManager()Lcom/kakao/sdk/auth/TokenManageable;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/kakao/sdk/auth/TokenManageable;->setToken(Lcom/kakao/sdk/auth/model/OAuthToken;)V

    .line 1779
    invoke-interface {v2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1809
    :cond_0
    iget-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->$callback:Lkotlin/jvm/functions/Function2;

    new-instance p2, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v1, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v2, "No body"

    invoke-direct {p2, v1, v2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1829
    :cond_1
    iget-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager$refreshToken$1;->$callback:Lkotlin/jvm/functions/Function2;

    sget-object v1, Lcom/kakao/sdk/auth/AuthApiManager;->Companion:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    new-instance v2, Lretrofit2/HttpException;

    invoke-direct {v2, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;->translateError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method
