.class public final Lcom/kakaogame/KGMessage;
.super Lcom/kakaogame/KGObject;
.source "KGMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGMessage$Companion;,
        Lcom/kakaogame/KGMessage$KGMessageResponse;,
        Lcom/kakaogame/KGMessage$KGMessageResultCode;,
        Lcom/kakaogame/KGMessage$KGMessageState;,
        Lcom/kakaogame/KGMessage$MessageCount;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGMessage.kt\ncom/kakaogame/KGMessage\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,658:1\n535#2:659\n520#2,6:660\n126#3:666\n153#3,3:667\n*S KotlinDebug\n*F\n+ 1 KGMessage.kt\ncom/kakaogame/KGMessage\n*L\n98#1:659\n98#1:660,6\n100#1:666\n100#1:667,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 82\u00020\u0001:\u000545678B!\u0008\u0000\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\rR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\rR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\rR\u001f\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001dR\u0011\u0010 \u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001dR\u0011\u0010\"\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u001dR\u0011\u0010$\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001dR$\u0010&\u001a\u00020\'2\u0006\u0010&\u001a\u00020\'8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0017\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\n0-8F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0014\u00100\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\u00a8\u00069"
    }
    d2 = {
        "Lcom/kakaogame/KGMessage;",
        "Lcom/kakaogame/KGObject;",
        "messagePacket",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "itemList",
        "",
        "Lcom/kakaogame/KGItem;",
        "senderId",
        "getSenderId",
        "()Ljava/lang/String;",
        "messageId",
        "getMessageId",
        "messageBoxId",
        "getMessageBoxId",
        "title",
        "getTitle",
        "body",
        "getBody",
        "resourceMap",
        "",
        "getResourceMap",
        "()Ljava/util/Map;",
        "readTime",
        "",
        "getReadTime",
        "()J",
        "expiryTime",
        "getExpiryTime",
        "deliverySeq",
        "getDeliverySeq",
        "modTime",
        "getModTime",
        "regTime",
        "getRegTime",
        "state",
        "Lcom/kakaogame/KGMessage$KGMessageState;",
        "getState",
        "()Lcom/kakaogame/KGMessage$KGMessageState;",
        "setState",
        "(Lcom/kakaogame/KGMessage$KGMessageState;)V",
        "items",
        "",
        "getItems",
        "()Ljava/util/List;",
        "message",
        "Lcom/kakaogame/util/json/JSONObject;",
        "getMessage",
        "()Lcom/kakaogame/util/json/JSONObject;",
        "KGMessageState",
        "KGMessageResponse",
        "MessageCount",
        "KGMessageResultCode",
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
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGMessage"

.field public static final Companion:Lcom/kakaogame/KGMessage$Companion;

.field private static final MESSAGEBOX_ID_INBOX:Ljava/lang/String; = "inbox"

.field public static final PAGE_KEY_END:J = -0x1L

.field public static final PAGE_KEY_INIT:J = 0x7fffffffffffffffL

.field public static final SENDER_ID_ACHIEVEMENT:Ljava/lang/String; = "achievement"

.field public static final SENDER_ID_ADMIN:Ljava/lang/String; = "admin"

.field public static final SENDER_ID_COUPON:Ljava/lang/String; = "coupon"

.field public static final SENDER_ID_NOTICE:Ljava/lang/String; = "notice"

.field public static final SENDER_ID_PROMOTION:Ljava/lang/String; = "promotion"

.field public static final SENDER_ID_TOURNAMENT:Ljava/lang/String; = "tournament"

.field private static final TAG:Ljava/lang/String; = "KGMessage"

.field private static final messageCountCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGMessage$MessageCount;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3c1b85f13db326faL


# instance fields
.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    .line 2909
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/kakaogame/KGMessage;->messageCountCache:Ljava/util/Map;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    .line 379
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/kakaogame/KGMessage;->itemList:Ljava/util/List;

    const-string p1, "items"

    .line 399
    invoke-virtual {p0, p1}, Lcom/kakaogame/KGMessage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/kakaogame/util/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/kakaogame/util/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 419
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 429
    new-instance v2, Lcom/kakaogame/KGItem;

    invoke-virtual {p1, v1}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7d711d75

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/kakaogame/util/json/JSONObject;

    check-cast v3, Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/kakaogame/KGItem;-><init>(Ljava/util/Map;)V

    .line 439
    iget-object v3, p0, Lcom/kakaogame/KGMessage;->itemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getMessageCountCache$cp()Ljava/util/Map;
    .locals 1

    .line 369
    sget-object v0, Lcom/kakaogame/KGMessage;->messageCountCache:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final deleteMessages(Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMessage;",
            ">;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/KGMessage$Companion;->deleteMessages(Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getMessage()Lcom/kakaogame/util/json/JSONObject;
    .locals 2

    .line 1759
    new-instance v0, Lcom/kakaogame/util/json/JSONObject;

    const v1, -0x451edd5f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kakaogame/KGMessage;->getJsonObject(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakaogame/util/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadMessages(Ljava/lang/String;Ljava/util/List;JILcom/kakaogame/KGResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/kakaogame/KGMessage$KGMessageState;",
            ">;JI",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGMessage$KGMessageResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/kakaogame/KGMessage$Companion;->loadMessages(Ljava/lang/String;Ljava/util/List;JILcom/kakaogame/KGResultCallback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadUnreadMessageCount(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/KGMessage$Companion;->loadUnreadMessageCount(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final markAsReadMessages(Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMessage;",
            ">;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/KGMessage$Companion;->markAsReadMessages(Ljava/util/List;Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final updateAction()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGMessage$Companion;->updateAction()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 2

    .line 869
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x3365c943

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getDeliverySeq()J
    .locals 2

    .line 1299
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x7d7118ad

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getExpiryTime()J
    .locals 2

    .line 1219
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x2252d98e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGItem;",
            ">;"
        }
    .end annotation

    .line 1729
    iget-object v0, p0, Lcom/kakaogame/KGMessage;->itemList:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMessageBoxId()Ljava/lang/String;
    .locals 2

    .line 709
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x7d710675

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMessageId()Ljava/lang/String;
    .locals 2

    .line 629
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x6d0d05a0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getModTime()J
    .locals 2

    .line 1379
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x3363bc03

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getReadTime()J
    .locals 2

    .line 1139
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, -0x4518763f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRegTime()J
    .locals 2

    .line 1459
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x3363bdbb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getResourceMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 969
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, -0x45187697

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 979
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 6599
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 6609
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 999
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6629
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6669
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 6679
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1019
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const v4, -0x2244b41c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 6689
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6699
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 989
    check-cast v0, Ljava/lang/Iterable;

    .line 1029
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    goto :goto_2

    .line 1039
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    :cond_5
    :goto_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSenderId()Ljava/lang/String;
    .locals 2

    const v0, 0x225413ce

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGMessage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getState()Lcom/kakaogame/KGMessage$KGMessageState;
    .locals 5

    .line 1549
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x543ed30a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1559
    :goto_0
    invoke-static {}, Lcom/kakaogame/KGMessage$KGMessageState;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/KGMessage$KGMessageState;

    .line 1569
    invoke-virtual {v2}, Lcom/kakaogame/KGMessage$KGMessageState;->getValue$gamesdk_release()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 1609
    :cond_2
    sget-object v0, Lcom/kakaogame/KGMessage$KGMessageState;->EXPIRED:Lcom/kakaogame/KGMessage$KGMessageState;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 789
    invoke-direct {p0}, Lcom/kakaogame/KGMessage;->getMessage()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const v1, 0x6d0baf18

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final setState(Lcom/kakaogame/KGMessage$KGMessageState;)V
    .locals 1

    const v0, 0x543ed30a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1639
    invoke-virtual {p1}, Lcom/kakaogame/KGMessage$KGMessageState;->getValue$gamesdk_release()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method
