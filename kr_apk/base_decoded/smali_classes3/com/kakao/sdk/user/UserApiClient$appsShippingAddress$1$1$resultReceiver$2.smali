.class final Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UserApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1;->invoke(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "uri",
        "Landroid/net/Uri;",
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


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;

    invoke-direct {v0}, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;-><init>()V

    sput-object v0, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;->INSTANCE:Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4279
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/user/UserApiClient$appsShippingAddress$1$1$resultReceiver$2;->invoke(Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invoke(Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 3

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error_code"

    .line 4359
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_msg"

    .line 4379
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4399
    sget-object v1, Lcom/kakao/sdk/common/model/AppsError;->Companion:Lcom/kakao/sdk/common/model/AppsError$Companion;

    const/16 v2, 0x12e

    invoke-virtual {v1, v2, v0, p1}, Lcom/kakao/sdk/common/model/AppsError$Companion;->create(ILjava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/model/AppsError;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
