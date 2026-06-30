.class public final Lcom/kakao/sdk/partner/auth/AuthApiClientKt;
.super Ljava/lang/Object;
.source "AuthApiClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u001aN\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042:\u0010\u0005\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0015\u0012\u0013\u0018\u00010\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "issueAccessToken",
        "",
        "Lcom/kakao/sdk/auth/AuthApiClient;",
        "groupRefreshToken",
        "",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "Lkotlin/ParameterName;",
        "name",
        "token",
        "",
        "error",
        "partner-auth_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final issueAccessToken(Lcom/kakao/sdk/auth/AuthApiClient;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/auth/AuthApiClient;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "groupRefreshToken"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    sget-object p0, Lcom/kakao/sdk/auth/AuthApiManager;->Companion:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    invoke-virtual {p0}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthApiManager;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/kakao/sdk/partner/auth/AuthApiManagerKt;->issueAccessToken(Lcom/kakao/sdk/auth/AuthApiManager;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
