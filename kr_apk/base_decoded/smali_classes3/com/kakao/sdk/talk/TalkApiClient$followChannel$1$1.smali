.class final Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TalkApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1;->invoke(Lcom/kakao/sdk/auth/model/OAuthToken;Ljava/lang/Throwable;)V
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
        "<anonymous parameter 1>",
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $channelPublicId:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/kakao/sdk/talk/TalkApiClient;


# direct methods
.method constructor <init>(Lcom/kakao/sdk/talk/TalkApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/talk/TalkApiClient;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/talk/model/FollowChannelResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->this$0:Lcom/kakao/sdk/talk/TalkApiClient;

    iput-object p2, p0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->$channelPublicId:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->$callback:Lkotlin/jvm/functions/Function2;

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

    .line 2869
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->invoke(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 2879
    iget-object p2, p0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->this$0:Lcom/kakao/sdk/talk/TalkApiClient;

    iget-object v0, p0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->$channelPublicId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakao/sdk/talk/TalkApiClient$followChannel$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0, v1, p1, v2}, Lcom/kakao/sdk/talk/TalkApiClient;->access$followChannel(Lcom/kakao/sdk/talk/TalkApiClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method
