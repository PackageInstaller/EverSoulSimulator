.class final Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UserApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1;->invoke(Lcom/kakao/sdk/auth/model/OAuthToken;Ljava/lang/Throwable;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserApiClient.kt\ncom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1\n+ 2 IntentFactory.kt\ncom/kakao/sdk/auth/IntentFactory\n*L\n1#1,467:1\n74#2,6:468\n*S KotlinDebug\n*F\n+ 1 UserApiClient.kt\ncom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1\n*L\n444#1:468,6\n*E\n"
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
.field final synthetic $addressId:Ljava/lang/Long;

.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$addressId:Ljava/lang/Long;

    iput-object p4, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$context:Landroid/content/Context;

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

    .line 4179
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->invoke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4199
    iget-object p1, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4239
    :cond_0
    new-instance p2, Lcom/kakao/sdk/user/UriUtility;

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v0}, Lcom/kakao/sdk/user/UriUtility;-><init>(Lcom/kakao/sdk/common/model/ServerHosts;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4249
    iget-object v2, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$addressId:Ljava/lang/Long;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v8}, Lcom/kakao/sdk/user/UriUtility;->shippingAddressUrl$default(Lcom/kakao/sdk/user/UriUtility;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    .line 4259
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "continueUrl.toString()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/user/UriUtility;->kpidtUrl$default(Lcom/kakao/sdk/user/UriUtility;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object p1

    .line 4279
    sget-object v0, Lcom/kakao/sdk/auth/SingleResultReceiver;->Companion:Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;

    .line 4289
    iget-object v1, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    const-string v2, "Apps"

    .line 4279
    sget-object p2, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$1;->INSTANCE:Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$1;

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    sget-object p2, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;->INSTANCE:Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function1;

    sget-object p2, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$3;->INSTANCE:Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$3;

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v0 .. v5}, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;->create(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/kakao/sdk/auth/SingleResultReceiver;

    move-result-object p2

    .line 4449
    sget-object v0, Lcom/kakao/sdk/auth/IntentFactory;->INSTANCE:Lcom/kakao/sdk/auth/IntentFactory;

    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$context:Landroid/content/Context;

    .line 4689
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kakao/sdk/auth/AppsHandlerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4699
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4709
    check-cast p2, Landroid/os/ResultReceiver;

    check-cast p2, Landroid/os/Parcelable;

    const-string v2, "key.result.receiver"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "key.full_authorize_uri"

    .line 4719
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "key.bundle"

    .line 4699
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 4739
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(context, T::class\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4459
    iget-object p2, p0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .array-data 1
    .end array-data
.end method
