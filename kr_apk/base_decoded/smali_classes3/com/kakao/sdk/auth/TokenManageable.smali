.class public interface abstract Lcom/kakao/sdk/auth/TokenManageable;
.super Ljava/lang/Object;
.source "TokenManageable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/TokenManageable;",
        "",
        "clear",
        "",
        "getToken",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "setToken",
        "token",
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


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getToken()Lcom/kakao/sdk/auth/model/OAuthToken;
.end method

.method public abstract setToken(Lcom/kakao/sdk/auth/model/OAuthToken;)V
.end method
