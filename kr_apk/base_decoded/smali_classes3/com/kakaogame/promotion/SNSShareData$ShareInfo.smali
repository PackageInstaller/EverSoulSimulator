.class public final Lcom/kakaogame/promotion/SNSShareData$ShareInfo;
.super Lcom/kakaogame/KGObject;
.source "SNSShareData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/promotion/SNSShareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShareInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000bR\u0011\u0010\u0006\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kakaogame/promotion/SNSShareData$ShareInfo;",
        "Lcom/kakaogame/KGObject;",
        "data",
        "Lcom/kakaogame/util/json/JSONObject;",
        "<init>",
        "(Lcom/kakaogame/promotion/SNSShareData;Lcom/kakaogame/util/json/JSONObject;)V",
        "type",
        "Lcom/kakaogame/promotion/SNSShareData$SNSShareType;",
        "getType",
        "()Lcom/kakaogame/promotion/SNSShareData$SNSShareType;",
        "firstHashtag",
        "",
        "getFirstHashtag",
        "()Ljava/lang/String;",
        "customCode",
        "linkUrl",
        "getLinkUrl",
        "code",
        "isReward",
        "",
        "()Z",
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


# instance fields
.field final synthetic this$0:Lcom/kakaogame/promotion/SNSShareData;


# direct methods
.method public constructor <init>(Lcom/kakaogame/promotion/SNSShareData;Lcom/kakaogame/util/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/util/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 869
    iput-object p1, p0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    check-cast p2, Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getFirstHashtag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1109
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->getFirstHashtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getFirstHashtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v0}, Lcom/kakaogame/promotion/SNSShareData;->access$getKEY_HASH_TAGS$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    .line 1219
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/json/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "default"

    .line 1269
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/util/json/JSONArray;

    if-eqz p1, :cond_2

    .line 1289
    invoke-virtual {p1}, Lcom/kakaogame/util/json/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1319
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, ""

    :goto_2
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLinkUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->getLinkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getLinkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1469
    iget-object v1, v0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v1}, Lcom/kakaogame/promotion/SNSShareData;->access$getKEY_LINK_URL$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 1479
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v3}, Lcom/kakaogame/promotion/SNSShareData;->access$getREPLACE_CODE_APP_ID$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v1, v3, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1489
    iget-object v1, v0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v1}, Lcom/kakaogame/promotion/SNSShareData;->access$getREPLACE_CODE_APP_ID$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v11, v2

    .line 1509
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v2}, Lcom/kakaogame/promotion/SNSShareData;->access$getREPLACE_CODE_REFERRER$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1519
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1529
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    .line 1539
    iget-object v3, v0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v3}, Lcom/kakaogame/promotion/SNSShareData;->access$getREPLACE_CODE_REFERRER$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v2}, Lcom/kakaogame/invite/InviteDataManager;->loadPlayerInvitationReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_1
    move-object v1, v11

    if-eqz p1, :cond_2

    .line 1569
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v3}, Lcom/kakaogame/promotion/SNSShareData;->access$getREPLACE_CODE_CUSTOM_CODE$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1589
    iget-object v2, v0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v2}, Lcom/kakaogame/promotion/SNSShareData;->access$getREPLACE_CODE_CUSTOM_CODE$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1609
    :cond_2
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, -0x4515305f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x54355f72

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getType()Lcom/kakaogame/promotion/SNSShareData$SNSShareType;
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v0}, Lcom/kakaogame/promotion/SNSShareData;->access$getKEY_SHARE_TYPE$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, -0x224e9734

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 949
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    sget-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkInvite:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    goto :goto_0

    :cond_0
    const v1, -0x224e97d4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    sget-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    goto :goto_0

    .line 999
    :cond_1
    sget-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->nonLinkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isReward()Z
    .locals 3

    .line 1709
    iget-object v0, p0, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->this$0:Lcom/kakaogame/promotion/SNSShareData;

    invoke-static {v0}, Lcom/kakaogame/promotion/SNSShareData;->access$getKEY_REWARD$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1719
    :cond_0
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 1729
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1

    nop

    .array-data 1
    .end array-data
.end method
