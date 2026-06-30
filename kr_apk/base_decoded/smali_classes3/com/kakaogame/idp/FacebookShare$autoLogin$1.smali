.class public final Lcom/kakaogame/idp/FacebookShare$autoLogin$1;
.super Ljava/lang/Object;
.source "FacebookShare.kt"

# interfaces
.implements Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/idp/FacebookShare;->autoLogin()Lcom/kakaogame/KGResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/kakaogame/idp/FacebookShare$autoLogin$1",
        "Lcom/facebook/AccessToken$AccessTokenRefreshCallback;",
        "OnTokenRefreshed",
        "",
        "accessToken",
        "Lcom/facebook/AccessToken;",
        "OnTokenRefreshFailed",
        "exception",
        "Lcom/facebook/FacebookException;",
        "idp_facebook_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $refreshAccessTokenLock:Lcom/kakaogame/util/MutexLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kakaogame/util/MutexLock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/util/MutexLock<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakaogame/idp/FacebookShare$autoLogin$1;->$refreshAccessTokenLock:Lcom/kakaogame/util/MutexLock;

    .line 1699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 1779
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {}, Lcom/kakaogame/idp/FacebookShare;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const v1, 0x543b7942

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object p1, p0, Lcom/kakaogame/idp/FacebookShare$autoLogin$1;->$refreshAccessTokenLock:Lcom/kakaogame/util/MutexLock;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1799
    iget-object p1, p0, Lcom/kakaogame/idp/FacebookShare$autoLogin$1;->$refreshAccessTokenLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public OnTokenRefreshed(Lcom/facebook/AccessToken;)V
    .locals 4

    .line 1719
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-static {}, Lcom/kakaogame/idp/FacebookShare;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x451b1bef

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    iget-object p1, p0, Lcom/kakaogame/idp/FacebookShare$autoLogin$1;->$refreshAccessTokenLock:Lcom/kakaogame/util/MutexLock;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kakaogame/util/MutexLock;->setContent(Ljava/lang/Object;)V

    .line 1739
    iget-object p1, p0, Lcom/kakaogame/idp/FacebookShare$autoLogin$1;->$refreshAccessTokenLock:Lcom/kakaogame/util/MutexLock;

    invoke-virtual {p1}, Lcom/kakaogame/util/MutexLock;->unlock()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
