.class final Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RequiredScopesInterceptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "agt",
        "",
        "agtError",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $err:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $requiredScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $token:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/kakao/sdk/auth/model/OAuthToken;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$err:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->this$0:Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;

    iput-object p4, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$requiredScopes:Ljava/util/List;

    iput-object p5, p0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$token:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 679
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->invoke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    .line 699
    iget-object v2, v0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$err:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 709
    iget-object v1, v0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 729
    :cond_0
    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->codeVerifier()Ljava/lang/String;

    move-result-object v11

    .line 739
    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->Companion:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v1}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->getInstance()Lcom/kakao/sdk/auth/AuthCodeClient;

    move-result-object v2

    .line 749
    iget-object v1, v0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->this$0:Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;

    invoke-static {v1}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;->access$getContextInfo$p(Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor;)Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 759
    iget-object v5, v0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$requiredScopes:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 739
    new-instance v1, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1$1;

    iget-object v7, v0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$err:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    iget-object v14, v0, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1;->$token:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1, v7, v13, v11, v14}, Lcom/kakao/sdk/auth/network/RequiredScopesInterceptor$intercept$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v13, v1

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/16 v14, 0x2ea

    const/4 v15, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v15}, Lcom/kakao/sdk/auth/AuthCodeClient;->authorizeWithKakaoAccount$default(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
