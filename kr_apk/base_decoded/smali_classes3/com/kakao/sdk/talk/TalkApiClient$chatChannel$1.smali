.class final Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TalkApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/talk/TalkApiClient;->chatChannel(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $channelPublicId:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $talkNotInstallError:Lcom/kakao/sdk/common/model/ClientError;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/Context;Lcom/kakao/sdk/common/model/ClientError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/common/model/ClientError;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$channelPublicId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$talkNotInstallError:Lcom/kakao/sdk/common/model/ClientError;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3519
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3539
    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3589
    :cond_0
    iget-object p1, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$channelPublicId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kakaoplus://plusfriend//talk/chat/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3599
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3629
    :try_start_0
    iget-object p1, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3649
    :catch_0
    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$talkNotInstallError:Lcom/kakao/sdk/common/model/ClientError;

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->e(Ljava/lang/Object;)V

    .line 3659
    iget-object p1, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient$chatChannel$1;->$talkNotInstallError:Lcom/kakao/sdk/common/model/ClientError;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
