.class public final Lcom/kakaogame/web/protocol/InvitationLinkShareHandler;
.super Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.source "InvitationLinkShareHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/web/protocol/InvitationLinkShareHandler;",
        "Lcom/kakaogame/web/protocol/WebAppProtocolHandler;",
        "<init>",
        "()V",
        "handleInternal",
        "",
        "webView",
        "Landroid/webkit/WebView;",
        "webUri",
        "Landroid/net/Uri;",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x5d1ec107

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-direct {p0, v0}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/kakaogame/web/protocol/InvitationLinkShareHandler;->setWebAppProtocolHandler()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected handleInternal(Landroid/webkit/WebView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    .line 189
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "channel"

    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 209
    sget-object p2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object p2

    .line 219
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkInvite:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    invoke-virtual {p2, v0}, Lcom/kakaogame/promotion/SNSShareData;->getShareData(Lcom/kakaogame/promotion/SNSShareData$SNSShareType;)Lcom/kakaogame/promotion/SNSShareData$ShareInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa2

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 249
    :cond_0
    invoke-virtual {p2}, Lcom/kakaogame/promotion/SNSShareData;->getSeq()J

    move-result-wide v1

    .line 259
    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->getFirstHashtag()Ljava/lang/String;

    move-result-object v0

    .line 289
    move-object v11, p1

    check-cast v11, Landroid/content/Context;

    const v4, 0x6d0daec0

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const v5, -0x4518e31f

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x336c4c2b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x6d0d91c0

    invoke-static {v7}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    .line 279
    invoke-static/range {v3 .. v10}, Lcom/kakaogame/log/service/BasicLogService;->writeBasicActionLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2, v0}, Lcom/kakaogame/idp/ChannelConnectHelper;->facebookShareLink(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 409
    sget-object p2, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkInvite:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    const/4 v0, 0x0

    invoke-static {v1, v2, p2, v0}, Lcom/kakaogame/promotion/PromotionService;->sendRequestSNSShareReward(JLcom/kakaogame/promotion/SNSShareData$SNSShareType;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 419
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const v4, 0x6d0daec0

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x2254ba5e

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x336c4c2b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x6d0d91c0

    invoke-static {v7}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    .line 429
    invoke-static/range {v3 .. v10}, Lcom/kakaogame/log/service/BasicLogService;->writeBasicActionLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 569
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toJSONString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
