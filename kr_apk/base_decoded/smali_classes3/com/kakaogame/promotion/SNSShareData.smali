.class public final Lcom/kakaogame/promotion/SNSShareData;
.super Ljava/lang/Object;
.source "SNSShareData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/promotion/SNSShareData$Companion;,
        Lcom/kakaogame/promotion/SNSShareData$SNSShareChannel;,
        Lcom/kakaogame/promotion/SNSShareData$SNSShareType;,
        Lcom/kakaogame/promotion/SNSShareData$ShareInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 %2\u00020\u0001:\u0004\"#$%B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0014\u0010\u001f\u001a\u0008\u0018\u00010\tR\u00020\u00002\u0006\u0010 \u001a\u00020!R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0008\u0012\u00060\tR\u00020\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/kakaogame/promotion/SNSShareData;",
        "",
        "data",
        "Lcom/kakaogame/util/json/JSONObject;",
        "<init>",
        "(Lcom/kakaogame/util/json/JSONObject;)V",
        "shareInfoMap",
        "",
        "",
        "Lcom/kakaogame/promotion/SNSShareData$ShareInfo;",
        "invitationHostUrl",
        "getInvitationHostUrl",
        "()Ljava/lang/String;",
        "invitationGuestUrl",
        "getInvitationGuestUrl",
        "loadDataTime",
        "",
        "seq",
        "getSeq",
        "()J",
        "setSeq",
        "(J)V",
        "KEY_SHARE_TYPE",
        "KEY_HASH_TAGS",
        "KEY_LINK_URL",
        "KEY_REWARD",
        "REPLACE_CODE_APP_ID",
        "REPLACE_CODE_REFERRER",
        "REPLACE_CODE_CUSTOM_CODE",
        "needRefresh",
        "",
        "getShareData",
        "type",
        "Lcom/kakaogame/promotion/SNSShareData$SNSShareType;",
        "SNSShareType",
        "SNSShareChannel",
        "ShareInfo",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/promotion/SNSShareData$Companion;

.field private static final KEY_GUEST_URL:Ljava/lang/String; = "snsShareGuestUrl"

.field private static final KEY_HOST_URL:Ljava/lang/String; = "snsShareHostUrl"

.field private static final KEY_SEQ:Ljava/lang/String; = "seq"

.field private static final KEY_SHARE_INFO_MAP:Ljava/lang/String; = "shareInfoMap"

.field private static final KEY_WEB_URL_MAP:Ljava/lang/String; = "webUrlMap"

.field private static final TAG:Ljava/lang/String; = "SNSShareData"


# instance fields
.field private final KEY_HASH_TAGS:Ljava/lang/String;

.field private final KEY_LINK_URL:Ljava/lang/String;

.field private final KEY_REWARD:Ljava/lang/String;

.field private final KEY_SHARE_TYPE:Ljava/lang/String;

.field private final REPLACE_CODE_APP_ID:Ljava/lang/String;

.field private final REPLACE_CODE_CUSTOM_CODE:Ljava/lang/String;

.field private final REPLACE_CODE_REFERRER:Ljava/lang/String;

.field private final invitationGuestUrl:Ljava/lang/String;

.field private final invitationHostUrl:Ljava/lang/String;

.field private loadDataTime:J

.field private seq:J

.field private final shareInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kakaogame/promotion/SNSShareData$ShareInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/promotion/SNSShareData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/promotion/SNSShareData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/promotion/SNSShareData;->Companion:Lcom/kakaogame/promotion/SNSShareData$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/util/json/JSONObject;)V
    .locals 6

    const v0, 0x7d778fe5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->shareInfoMap:Ljava/util/Map;

    const v0, -0x224e917c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->KEY_SHARE_TYPE:Ljava/lang/String;

    const v0, 0x225951a6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->KEY_HASH_TAGS:Ljava/lang/String;

    const v0, -0x224ed4e4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->KEY_LINK_URL:Ljava/lang/String;

    const v0, 0x54355a42

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->KEY_REWARD:Ljava/lang/String;

    const v0, -0x224e9074

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->REPLACE_CODE_APP_ID:Ljava/lang/String;

    const v0, 0x5d1c700f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->REPLACE_CODE_REFERRER:Ljava/lang/String;

    const v0, 0x54355b2a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->REPLACE_CODE_CUSTOM_CODE:Ljava/lang/String;

    const v0, 0x5d1c737f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 1969
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    .line 1979
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/util/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1989
    iget-object v3, p0, Lcom/kakaogame/promotion/SNSShareData;->shareInfoMap:Ljava/util/Map;

    new-instance v4, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;

    invoke-virtual {v0, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {v4, p0, v5}, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;-><init>(Lcom/kakaogame/promotion/SNSShareData;Lcom/kakaogame/util/json/JSONObject;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const v0, 0x6d004740

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 2009
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    .line 2019
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, -0x45144c4f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/kakaogame/promotion/SNSShareData;->invitationHostUrl:Ljava/lang/String;

    const v1, 0x5434204a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 2029
    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->invitationGuestUrl:Ljava/lang/String;

    .line 2039
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakaogame/promotion/SNSShareData;->loadDataTime:J

    const v0, 0x5d115a9f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 2049
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_1

    .line 2059
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lcom/kakaogame/promotion/SNSShareData;->seq:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getKEY_HASH_TAGS$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/kakaogame/promotion/SNSShareData;->KEY_HASH_TAGS:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getKEY_LINK_URL$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/kakaogame/promotion/SNSShareData;->KEY_LINK_URL:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getKEY_REWARD$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/kakaogame/promotion/SNSShareData;->KEY_REWARD:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getKEY_SHARE_TYPE$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/kakaogame/promotion/SNSShareData;->KEY_SHARE_TYPE:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getREPLACE_CODE_APP_ID$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/kakaogame/promotion/SNSShareData;->REPLACE_CODE_APP_ID:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getREPLACE_CODE_CUSTOM_CODE$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/kakaogame/promotion/SNSShareData;->REPLACE_CODE_CUSTOM_CODE:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getREPLACE_CODE_REFERRER$p(Lcom/kakaogame/promotion/SNSShareData;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/kakaogame/promotion/SNSShareData;->REPLACE_CODE_REFERRER:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadData()Lcom/kakaogame/promotion/SNSShareData;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/promotion/SNSShareData;->Companion:Lcom/kakaogame/promotion/SNSShareData$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData$Companion;->loadData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getInvitationGuestUrl()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->invitationGuestUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getInvitationHostUrl()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->invitationHostUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSeq()J
    .locals 2

    .line 369
    iget-wide v0, p0, Lcom/kakaogame/promotion/SNSShareData;->seq:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getShareData(Lcom/kakaogame/promotion/SNSShareData$SNSShareType;)Lcom/kakaogame/promotion/SNSShareData$ShareInfo;
    .locals 1

    const v0, 0x6d0b0e48

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/kakaogame/promotion/SNSShareData;->shareInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/promotion/SNSShareData$ShareInfo;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final needRefresh()Z
    .locals 4

    .line 739
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    .line 749
    iget-wide v2, p0, Lcom/kakaogame/promotion/SNSShareData;->loadDataTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final setSeq(J)V
    .locals 0

    .line 369
    iput-wide p1, p0, Lcom/kakaogame/promotion/SNSShareData;->seq:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method
