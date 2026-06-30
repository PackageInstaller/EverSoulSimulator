.class public final Lcom/kakaogame/KGSNSShare;
.super Ljava/lang/Object;
.source "KGSNSShare.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGSNSShare$KGEventListener;,
        Lcom/kakaogame/KGSNSShare$KGJoinerCount;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGSNSShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGSNSShare.kt\ncom/kakaogame/KGSNSShare\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,942:1\n1#2:943\n37#3:944\n36#3,3:945\n*S KotlinDebug\n*F\n+ 1 KGSNSShare.kt\ncom/kakaogame/KGSNSShare\n*L\n531#1:944\n531#1:945,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000245B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\u000cJ\"\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0007J\u0012\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J.\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H\u0007J$\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0011H\u0007J$\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H\u0007J\u001a\u0010\u001b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u001c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J$\u0010\u001d\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H\u0007J$\u0010\u001e\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H\u0007J\u001a\u0010\u001f\u001a\u00020\u000c2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0011H\u0007J\u001a\u0010 \u001a\u00020\u000c2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010!\u0018\u00010\u0011H\u0007J*\u0010\"\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u001c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0005H\u0002J\u0010\u0010&\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0005H\u0002J\u0010\u0010(\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J*\u0010*\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00052\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0011H\u0002J\u001a\u0010+\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0002J*\u0010.\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00052\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0011H\u0002J*\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010/\u001a\u00020\u00192\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0011H\u0002J4\u00100\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u00101\u001a\u0002022\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011H\u0002J\u0008\u00103\u001a\u00020\u000cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\u00198BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u00066"
    }
    d2 = {
        "Lcom/kakaogame/KGSNSShare;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CLASS_NAME_KEY",
        "REWARD_SHOW_KEY",
        "NEW_REWARD_SHOW_KEY",
        "EVENT_SCREEN_SHOT",
        "",
        "initialize",
        "",
        "shareScreenShot",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/kakaogame/KGResultCallback;",
        "Ljava/lang/Void;",
        "registerEventListener",
        "listener",
        "Lcom/kakaogame/KGSNSShare$KGEventListener;",
        "shareContentsLink",
        "code",
        "loadShareRewardInfo",
        "",
        "showInvitationView",
        "dataCheck",
        "Lcom/kakaogame/KGResult;",
        "showInvitationRewardView",
        "showNewInvitationRewardView",
        "loadBadgeInfo",
        "loadJoinerCount",
        "Lcom/kakaogame/KGSNSShare$KGJoinerCount;",
        "showShareViewOnActivity",
        "seq",
        "",
        "baseUrl",
        "isAlreadyPlayerShowUI",
        "()Z",
        "isAlreadyPlayerReward",
        "getInvitationLinkReferrer",
        "showRewardView",
        "showAlertDialog",
        "parentDialog",
        "Lcom/kakaogame/web/WebDialog;",
        "showNewRewardView",
        "isNative",
        "showShareDialog",
        "data",
        "Lcom/kakaogame/promotion/SNSShareData;",
        "initInterfaceBroker",
        "KGJoinerCount",
        "KGEventListener",
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
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGSNSShare"

.field public static final EVENT_SCREEN_SHOT:I = 0x3e9

.field public static final INSTANCE:Lcom/kakaogame/KGSNSShare;

.field private static final NEW_REWARD_SHOW_KEY:Ljava/lang/String; = "Zinny://SNSShare.showNewInvitationRewardView"

.field private static final REWARD_SHOW_KEY:Ljava/lang/String; = "Zinny://SNSShare.showInvitationRewardView"

.field private static final TAG:Ljava/lang/String; = "KGSNSShare"


# direct methods
.method public static synthetic $r8$lambda$FXdfI5xUhjflZA8H4Hb79otPL04(Lcom/kakaogame/web/WebDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/KGSNSShare;->showAlertDialog$lambda$4(Lcom/kakaogame/web/WebDialog;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$Rc3SrrvNKOzIQZZAIzGrHPThCNs(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/KGSNSShare;->showAlertDialog$lambda$3(Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/KGSNSShare;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare;-><init>()V

    sput-object v0, Lcom/kakaogame/KGSNSShare;->INSTANCE:Lcom/kakaogame/KGSNSShare;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$dataCheck(Lcom/kakaogame/KGSNSShare;Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 0

    .line 589
    invoke-direct {p0, p1}, Lcom/kakaogame/KGSNSShare;->dataCheck(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$shareScreenShot(Lcom/kakaogame/KGSNSShare;Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/KGSNSShare;->shareScreenShot(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showAlertDialog(Lcom/kakaogame/KGSNSShare;Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;)V
    .locals 0

    .line 589
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/KGSNSShare;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final dataCheck(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2259
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2269
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2279
    :cond_0
    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData;->getInvitationHostUrl()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2289
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2309
    :cond_1
    invoke-direct {p0, p1}, Lcom/kakaogame/KGSNSShare;->getInvitationLinkReferrer(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 2319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData;->getInvitationHostUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2329
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x543c2032

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2319
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2339
    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData;->getSeq()J

    move-result-wide v2

    .line 2349
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/kakaogame/KGSNSShare;->showShareViewOnActivity(Landroid/app/Activity;JLjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final getInvitationLinkReferrer(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .line 5619
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/kakaogame/invite/InviteDataManager;->loadReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5629
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d77df15

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d71b74d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5639
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, ""

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    const v2, 0x5d17f11f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 5689
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v2, v1, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const v1, 0x5d17f11f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 5699
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3

    nop

    .array-data 1
    .end array-data
.end method

.method private final initInterfaceBroker()V
    .locals 2

    .line 7619
    new-instance v0, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$1;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$1;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x54388f8a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7749
    new-instance v0, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$2;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$2;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x6d0d93f0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 7889
    new-instance v0, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$3;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$3;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x2254869e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8089
    new-instance v0, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$4;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$4;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x5d11a12f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8219
    new-instance v0, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$5;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$5;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x224378a4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8349
    new-instance v0, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$6;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$6;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, -0x4518df77

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8479
    new-instance v0, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$7;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$7;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x33632d73

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    .line 8669
    new-instance v0, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$8;

    invoke-direct {v0}, Lcom/kakaogame/KGSNSShare$initInterfaceBroker$8;-><init>()V

    check-cast v0, Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;

    const v1, 0x54388832

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kakaogame/broker/InterfaceBrokerHandler;->registerInterfaceBroker(Ljava/lang/String;Lcom/kakaogame/broker/InterfaceBrokerHandler$InterfaceBroker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final isAlreadyPlayerReward(Landroid/app/Activity;)Z
    .locals 5

    .line 5439
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    .line 5449
    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/kakaogame/invite/InviteDataManager;->isPlayerReward(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 5489
    :cond_0
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->getPlayerReward()Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 5499
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    .line 5529
    :cond_1
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5549
    invoke-static {p1, v0}, Lcom/kakaogame/invite/InviteDataManager;->savePlayerRewardData(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    :cond_2
    return v4

    .array-data 1
    .end array-data
.end method

.method private final isAlreadyPlayerShowUI()Z
    .locals 3

    .line 5199
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, -0x224378a4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGLocalPlayer;->getCustomProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5209
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v1, 0x22546766

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 5239
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method private final isAlreadyPlayerShowUI(Ljava/lang/String;)Z
    .locals 8

    .line 5279
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, -0x4518df77

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGLocalPlayer;->getCustomProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5289
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    return v7

    .line 5319
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x22505926

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-array v2, v7, [Ljava/lang/String;

    .line 9479
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 5319
    check-cast v1, [Ljava/lang/String;

    .line 5329
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x6d0d9668

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, -0x2243429c    # -1.700017E18f

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7d71b74d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5339
    array-length v0, v1

    move v2, v7

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, v1, v2

    .line 5349
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5359
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, -0x22434d5c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v7

    .array-data 1
    .end array-data
.end method

.method public static final loadBadgeInfo(Lcom/kakaogame/KGResultCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 3849
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x5d17f2ff

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d71b74d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 3859
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->getSNSShareJoinerCount()Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 3869
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3879
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 3889
    invoke-interface {p0, v1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 3899
    :cond_0
    invoke-virtual {v0, v1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 3929
    :cond_1
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 3939
    new-instance v1, Lcom/kakaogame/KGSNSShare$KGJoinerCount;

    invoke-direct {v1, v5, v6}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;-><init>(J)V

    .line 3949
    invoke-virtual {v1}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;->hasNewJoiner()Z

    move-result v1

    .line 3969
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3979
    invoke-virtual {v3}, Lcom/kakaogame/promotion/SNSShareData;->getSeq()J

    move-result-wide v5

    .line 3989
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    .line 3999
    sget-object v7, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v7}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/kakaogame/invite/InviteDataManager;->loadInvitationSeq(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 4009
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x22548dae

    invoke-static {v10}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x5d11ad9f

    invoke-static {v10}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v2, v9}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4029
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    cmp-long v3, v7, v5

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1

    if-eqz p0, :cond_4

    .line 4039
    invoke-interface {p0, v1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 4049
    :cond_4
    invoke-virtual {v0, v1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    goto :goto_0

    .line 4069
    :cond_5
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v1

    if-eqz p0, :cond_6

    .line 4079
    invoke-interface {p0, v1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 4089
    :cond_6
    invoke-virtual {v0, v1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadJoinerCount(Lcom/kakaogame/KGResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGSNSShare$KGJoinerCount;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4199
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x7d71b74d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x22434c74

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 4219
    :try_start_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v3, v1, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4229
    sget-object v2, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v3, Lcom/kakaogame/core/FeatureManager$Feature;->snsShare:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v2, v3}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4239
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "SNS Share Feature is not enabled. Check your game settings on the admin page."

    invoke-virtual {v2, v1, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4249
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v3, 0x1389

    invoke-virtual {v2, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v2

    if-eqz p0, :cond_0

    .line 4259
    invoke-interface {p0, v2}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 4269
    :cond_0
    invoke-virtual {v0, v2}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 4299
    :cond_1
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->getSNSShareJoinerCount()Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 4309
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4319
    sget-object v3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v2

    if-eqz p0, :cond_2

    .line 4329
    invoke-interface {p0, v2}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 4339
    :cond_2
    invoke-virtual {v0, v2}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 4369
    :cond_3
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 4379
    sget-object v4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v5, Lcom/kakaogame/KGSNSShare$KGJoinerCount;

    invoke-direct {v5, v2, v3}, Lcom/kakaogame/KGSNSShare$KGJoinerCount;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v2

    if-eqz p0, :cond_4

    .line 4389
    invoke-interface {p0, v2}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 4399
    :cond_4
    invoke-virtual {v0, v2}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4419
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v1, v4, v5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4429
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v3, 0xfa1

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v1

    if-eqz p0, :cond_5

    .line 4439
    invoke-interface {p0, v1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 4449
    :cond_5
    invoke-virtual {v0, v1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loadShareRewardInfo(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x6d0d9840

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 1459
    sget-object v1, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v2, 0x7d7186ed

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d71b74d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v1

    .line 1479
    :try_start_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    sget-object v0, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v2, Lcom/kakaogame/core/FeatureManager$Feature;->snsShare:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v0, v2}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "SNS Share Feature is not enabled. Check your game settings on the admin page."

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x1389

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 1519
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1529
    :cond_0
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 1559
    :cond_1
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1579
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 1589
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1599
    :cond_2
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 1649
    :cond_3
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->sendSavedRequestSNSShareReward()Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 1659
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1669
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_4

    .line 1679
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1689
    :cond_4
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 1719
    :cond_5
    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData;->getSeq()J

    move-result-wide v4

    .line 1729
    sget-object v0, Lcom/kakaogame/promotion/SNSShareData$SNSShareType;->linkShare:Lcom/kakaogame/promotion/SNSShareData$SNSShareType;

    invoke-static {v4, v5, v0, p0}, Lcom/kakaogame/promotion/PromotionService;->checkSNSShareRewarded(JLcom/kakaogame/promotion/SNSShareData$SNSShareType;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_6

    .line 1739
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1749
    :cond_6
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1769
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v2, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1779
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_7

    .line 1789
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1799
    :cond_7
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final registerEventListener(Lcom/kakaogame/KGSNSShare$KGEventListener;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 869
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kakaogame/core/CoreManager;->putEventListener(Lcom/kakaogame/KGSNSShare$KGEventListener;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final shareContentsLink(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x5438846a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    sget-object v1, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v2, 0x5d11aef7    # 6.5609996E17f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d71b74d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v1

    .line 1009
    :try_start_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sget-object v0, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v2, Lcom/kakaogame/core/FeatureManager$Feature;->snsShare:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v0, v2}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p1, "SNS Share Feature is not enabled. Check your game settings on the admin page."

    invoke-virtual {p0, v3, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x1389

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 1049
    invoke-interface {p2, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1059
    :cond_0
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    :cond_1
    if-eqz p0, :cond_5

    .line 1099
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1169
    :cond_2
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1189
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p2, :cond_3

    .line 1199
    invoke-interface {p2, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1209
    :cond_3
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 1239
    :cond_4
    sget-object v2, Lcom/kakaogame/KGSNSShare;->INSTANCE:Lcom/kakaogame/KGSNSShare;

    new-instance v4, Lcom/kakaogame/KGSNSShare$shareContentsLink$1;

    invoke-direct {v4, p2, v1}, Lcom/kakaogame/KGSNSShare$shareContentsLink$1;-><init>(Lcom/kakaogame/KGResultCallback;Lcom/kakaogame/log/FirebaseEvent;)V

    check-cast v4, Lcom/kakaogame/KGResultCallback;

    invoke-direct {v2, p0, v0, p1, v4}, Lcom/kakaogame/KGSNSShare;->showShareDialog(Landroid/app/Activity;Lcom/kakaogame/promotion/SNSShareData;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    goto :goto_1

    .line 1109
    :cond_5
    :goto_0
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p1, "shareContentsLink: activity is null or finishing."

    invoke-virtual {p0, v3, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p1, "activity is null or finishing."

    const/16 v0, 0xfa0

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p2, :cond_6

    .line 1129
    invoke-interface {p2, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1139
    :cond_6
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1309
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p1, v3, v0, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1319
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p2, :cond_7

    .line 1329
    invoke-interface {p2, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1339
    :cond_7
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :goto_1
    return-void

    .array-data 1
    .end array-data
.end method

.method public static final shareScreenShot(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    sget-object v0, Lcom/kakaogame/KGSNSShare;->INSTANCE:Lcom/kakaogame/KGSNSShare;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/kakaogame/KGSNSShare;->shareScreenShot(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final shareScreenShot(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 6829
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x7d71b74d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x4518ef1f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 6849
    :try_start_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v3, v1, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6859
    sget-object v2, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v3, Lcom/kakaogame/core/FeatureManager$Feature;->snsShare:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v2, v3}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6869
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "SNS Share Feature is not enabled. Check your game settings on the admin page."

    invoke-virtual {p1, v1, p2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6879
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x1389

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6889
    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 6899
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 6929
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 7009
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/kakaogame/KGSNSShare$shareScreenShot$1;-><init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Lcom/kakaogame/log/FirebaseEvent;Lkotlin/coroutines/Continuation;)V

    move-object v6, v11

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    .line 6939
    :cond_3
    :goto_0
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "shareScreenShot: activity is null or finishing"

    invoke-virtual {p1, v1, p2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6949
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "activity is null or finishing."

    const/16 v2, 0xfa0

    invoke-virtual {p1, v2, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    if-eqz p3, :cond_4

    .line 6959
    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 6969
    :cond_4
    invoke-virtual {v0, p1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7179
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p2, v1, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7189
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    if-eqz p3, :cond_5

    .line 7199
    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 7209
    :cond_5
    invoke-virtual {v0, p1}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/web/WebDialog;)V
    .locals 7

    .line 6279
    invoke-static {p1}, Lcom/kakaogame/ui/DialogManager;->createAlertDialogBuilder(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6289
    invoke-direct {p0, p1}, Lcom/kakaogame/KGSNSShare;->getInvitationLinkReferrer(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 6299
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6309
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const v3, -0x224349a4

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6329
    :cond_0
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const v3, 0x5d11ab27

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6349
    :goto_0
    check-cast p1, Landroid/content/Context;

    const v3, 0x7d719c85

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6359
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7d719d5d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 6369
    invoke-static {p1, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const v1, -0x224356a4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 6389
    invoke-static {p1, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6409
    :goto_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6419
    check-cast v3, Ljava/lang/CharSequence;

    new-instance v1, Lcom/kakaogame/KGSNSShare$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/kakaogame/KGSNSShare$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6429
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v1, Lcom/kakaogame/KGSNSShare$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/kakaogame/KGSNSShare$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/web/WebDialog;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6469
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance p1, Lcom/kakaogame/KGSNSShare$showAlertDialog$3;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/kakaogame/KGSNSShare$showAlertDialog$3;-><init>(Landroid/app/AlertDialog$Builder;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showAlertDialog$lambda$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6419
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showAlertDialog$lambda$4(Lcom/kakaogame/web/WebDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6439
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6449
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/web/WebDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final showInvitationRewardView(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2459
    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v1, 0x7d71b74d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x33633d93

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v0

    .line 2479
    :try_start_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v3, v1, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2489
    sget-object v2, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v3, Lcom/kakaogame/core/FeatureManager$Feature;->snsShare:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v2, v3}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2499
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "SNS Share Feature is not enabled. Check your game settings on the admin page."

    invoke-virtual {p0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0x1389

    invoke-virtual {p0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 2519
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 2529
    :cond_0
    invoke-virtual {v0, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    :cond_1
    if-eqz p0, :cond_9

    .line 2559
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 2629
    :cond_2
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v2

    if-nez v2, :cond_4

    .line 2649
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 2659
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 2669
    :cond_3
    invoke-virtual {v0, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 2699
    :cond_4
    invoke-virtual {v2}, Lcom/kakaogame/promotion/SNSShareData;->getInvitationGuestUrl()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_8

    .line 2709
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_7

    .line 2719
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 2729
    :cond_7
    invoke-virtual {v0, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 2759
    :cond_8
    invoke-virtual {v2}, Lcom/kakaogame/promotion/SNSShareData;->getInvitationGuestUrl()Ljava/lang/String;

    move-result-object v2

    .line 2769
    sget-object v3, Lcom/kakaogame/KGSNSShare;->INSTANCE:Lcom/kakaogame/KGSNSShare;

    new-instance v4, Lcom/kakaogame/KGSNSShare$showInvitationRewardView$1;

    invoke-direct {v4, p1, v0}, Lcom/kakaogame/KGSNSShare$showInvitationRewardView$1;-><init>(Lcom/kakaogame/KGResultCallback;Lcom/kakaogame/log/FirebaseEvent;)V

    check-cast v4, Lcom/kakaogame/KGResultCallback;

    invoke-direct {v3, p0, v2, v4}, Lcom/kakaogame/KGSNSShare;->showRewardView(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    goto :goto_3

    .line 2569
    :cond_9
    :goto_2
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "showInvitationRewardView: activity is null or finishing."

    invoke-virtual {p0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v2, "activity is null or finishing."

    const/16 v3, 0xfa0

    invoke-virtual {p0, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_a

    .line 2589
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 2599
    :cond_a
    invoke-virtual {v0, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2849
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2859
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_b

    .line 2869
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 2879
    :cond_b
    invoke-virtual {v0, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :goto_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final showInvitationView(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x225493c6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 1919
    sget-object v1, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v2, 0x6d0d86c0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d71b74d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v1

    .line 1939
    :try_start_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer;->getRegistTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    sget-object v0, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v2, Lcom/kakaogame/core/FeatureManager$Feature;->snsShare:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v0, v2}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1959
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "SNS Share Feature is not enabled. Check your game settings on the admin page."

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x1389

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 1979
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 1989
    :cond_1
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    :cond_2
    if-eqz p0, :cond_4

    .line 2029
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2099
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Lcom/kakaogame/KGSNSShare$showInvitationView$1;

    invoke-direct {v0, p0, p1, v1, v5}, Lcom/kakaogame/KGSNSShare$showInvitationView$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;Lcom/kakaogame/log/FirebaseEvent;Lkotlin/coroutines/Continuation;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2

    .line 2039
    :cond_4
    :goto_1
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "showInvitationView: activity is null or finishing."

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v0, "activity is null or finishing."

    const/16 v2, 0xfa0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_5

    .line 2059
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 2069
    :cond_5
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2179
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v2, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2189
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_6

    .line 2199
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 2209
    :cond_6
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :goto_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final showNewInvitationRewardView(Landroid/app/Activity;Lcom/kakaogame/KGResultCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, -0x4518df77

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 2999
    sget-object v1, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    const v2, 0x7d71b74d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x33633f6b

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object v1

    .line 3019
    :try_start_0
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v4, v2, v3}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    sget-object v3, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v4, Lcom/kakaogame/core/FeatureManager$Feature;->snsShare:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {v3, v4}, Lcom/kakaogame/core/FeatureManager;->isNotSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3039
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "SNS Share Feature is not enabled. Check your game settings on the admin page."

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x1389

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 3059
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 3069
    :cond_0
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    :cond_1
    if-eqz p0, :cond_f

    .line 3099
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 3169
    :cond_2
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v3

    if-nez v3, :cond_4

    .line 3189
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 3199
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 3209
    :cond_3
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 3239
    :cond_4
    invoke-virtual {v3}, Lcom/kakaogame/promotion/SNSShareData;->getInvitationGuestUrl()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/16 v5, 0xc8

    if-eqz v4, :cond_8

    .line 3249
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v5}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_7

    .line 3259
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 3269
    :cond_7
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 3299
    :cond_8
    invoke-virtual {v3}, Lcom/kakaogame/promotion/SNSShareData;->getSeq()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 3309
    sget-object v6, Lcom/kakaogame/KGSNSShare;->INSTANCE:Lcom/kakaogame/KGSNSShare;

    invoke-direct {v6, v4}, Lcom/kakaogame/KGSNSShare;->isAlreadyPlayerShowUI(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3319
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v5}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_9

    .line 3329
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 3339
    :cond_9
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 3369
    :cond_a
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->requestInvitationCheckIn()Lcom/kakaogame/KGResult;

    move-result-object v7

    .line 3399
    invoke-virtual {v7}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v8

    if-nez v8, :cond_e

    .line 3419
    invoke-virtual {v7}, Lcom/kakaogame/KGResult;->isNetworkError()Z

    move-result p0

    if-nez p0, :cond_c

    .line 3429
    invoke-virtual {v7}, Lcom/kakaogame/KGResult;->isNeedToWaitError()Z

    move-result p0

    if-nez p0, :cond_c

    .line 3439
    sget-object p0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGLocalPlayer;->getCustomProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3449
    move-object v3, p0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3459
    sget-object p0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v4}, Lcom/kakaogame/KGLocalPlayer;->saveCustomProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    goto :goto_2

    .line 3479
    :cond_b
    sget-object v3, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v6, 0x2c

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Lcom/kakaogame/KGLocalPlayer;->saveCustomProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    .line 3509
    :cond_c
    :goto_2
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v5}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_d

    .line 3519
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 3529
    :cond_d
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    return-void

    .line 3559
    :cond_e
    invoke-virtual {v3}, Lcom/kakaogame/promotion/SNSShareData;->getInvitationGuestUrl()Ljava/lang/String;

    move-result-object v0

    .line 3569
    new-instance v3, Lcom/kakaogame/KGSNSShare$showNewInvitationRewardView$1;

    invoke-direct {v3, v4, p1, v1}, Lcom/kakaogame/KGSNSShare$showNewInvitationRewardView$1;-><init>(Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lcom/kakaogame/log/FirebaseEvent;)V

    check-cast v3, Lcom/kakaogame/KGResultCallback;

    invoke-direct {v6, p0, v0, v3}, Lcom/kakaogame/KGSNSShare;->showNewRewardView(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    goto :goto_4

    .line 3109
    :cond_f
    :goto_3
    sget-object p0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "showInvitationRewardView: activity is null or finishing."

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v0, "activity is null or finishing."

    const/16 v3, 0xfa0

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_10

    .line 3129
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 3139
    :cond_10
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3709
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3719
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_11

    .line 3729
    invoke-interface {p1, p0}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    .line 3739
    :cond_11
    invoke-virtual {v1, p0}, Lcom/kakaogame/log/FirebaseEvent;->setResult(Lcom/kakaogame/KGResult;)V

    :goto_4
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showNewRewardView(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7d77c365

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 6609
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-string v2, "sdk_invitation_portrait_reward_width"

    invoke-static {v1, v2, v0}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6619
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const-string v3, "sdk_invitation_portrait_reward_height"

    invoke-static {v2, v3, v0}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 6629
    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    const-string v4, "sdk_invitation_landscape_reward_width"

    invoke-static {v3, v4, v0}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6639
    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    const-string v5, "sdk_invitation_landscape_reward_height"

    invoke-static {v4, v5, v0}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6649
    new-instance v4, Lcom/kakaogame/web/WebDialog$Settings$Builder;

    invoke-direct {v4}, Lcom/kakaogame/web/WebDialog$Settings$Builder;-><init>()V

    .line 6659
    invoke-virtual {v4}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedTitle()Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v4

    .line 6669
    invoke-virtual {v4, v1, v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPortSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v1

    .line 6679
    invoke-virtual {v1, v3, v0}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setLandSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 6689
    invoke-virtual {v0, v1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedFontSize(Z)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    .line 6699
    invoke-virtual {v0}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->build()Lcom/kakaogame/web/WebDialog$Settings;

    move-result-object v0

    new-instance v1, Lcom/kakaogame/KGSNSShare$showNewRewardView$1;

    invoke-direct {v1, p3}, Lcom/kakaogame/KGSNSShare$showNewRewardView$1;-><init>(Lcom/kakaogame/KGResultCallback;)V

    check-cast v1, Lcom/kakaogame/KGResultCallback;

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Lcom/kakaogame/web/WebDialogManager;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;ZLcom/kakaogame/KGResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6759
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const v2, 0x7d71b74d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6769
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 6779
    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_0
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showRewardView(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7d77c365

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 5759
    :try_start_0
    invoke-direct {p0}, Lcom/kakaogame/KGSNSShare;->isAlreadyPlayerShowUI()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    const/16 v3, 0xc8

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 5769
    :try_start_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "Already showInvitationRewardView. No need to show invitation reward view"

    invoke-virtual {p1, v3, p2, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_0
    return-void

    .line 5799
    :cond_1
    invoke-direct {p0, p1}, Lcom/kakaogame/KGSNSShare;->isAlreadyPlayerReward(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 5809
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "Already get reward from referrer code. No need to show invitation reward view."

    invoke-virtual {p1, v3, p2, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_2
    return-void

    .line 5839
    :cond_3
    invoke-direct {p0, p1}, Lcom/kakaogame/KGSNSShare;->getInvitationLinkReferrer(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 5849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5859
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5869
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->isShowInvitationRewardNoReferrer()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 5909
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "No referrer found. No need to show invitation reward view."

    invoke-virtual {p1, v3, p2, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_5
    return-void

    :cond_6
    move-object p2, v4

    .line 5949
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-string v2, "sdk_invitation_portrait_reward_width"

    invoke-static {v1, v2, v0}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 5959
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const-string v3, "sdk_invitation_portrait_reward_height"

    invoke-static {v2, v3, v0}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 5969
    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    const-string v4, "sdk_invitation_landscape_reward_width"

    invoke-static {v3, v4, v0}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 5979
    move-object v4, p1

    check-cast v4, Landroid/content/Context;

    const-string v5, "sdk_invitation_landscape_reward_height"

    invoke-static {v4, v5, v0}, Lcom/kakaogame/util/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5989
    new-instance v4, Lcom/kakaogame/KGSNSShare$showRewardView$listener$1;

    invoke-direct {v4, p1}, Lcom/kakaogame/KGSNSShare$showRewardView$listener$1;-><init>(Landroid/app/Activity;)V

    check-cast v4, Lcom/kakaogame/web/WebDialog$OnCloseListener;

    .line 6039
    new-instance v5, Lcom/kakaogame/web/WebDialog$Settings$Builder;

    invoke-direct {v5}, Lcom/kakaogame/web/WebDialog$Settings$Builder;-><init>()V

    .line 6049
    invoke-virtual {v5}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedTitle()Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v5

    .line 6059
    invoke-virtual {v5, v1, v2}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setPortSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v1

    .line 6069
    invoke-virtual {v1, v3, v0}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setLandSize(II)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    .line 6079
    invoke-virtual {v0, v4}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setViewCloseListener(Lcom/kakaogame/web/WebDialog$OnCloseListener;)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 6089
    invoke-virtual {v0, v1}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->setFixedFontSize(Z)Lcom/kakaogame/web/WebDialog$Settings$Builder;

    move-result-object v0

    .line 6099
    invoke-virtual {v0}, Lcom/kakaogame/web/WebDialog$Settings$Builder;->build()Lcom/kakaogame/web/WebDialog$Settings;

    move-result-object v0

    new-instance v1, Lcom/kakaogame/KGSNSShare$showRewardView$1;

    invoke-direct {v1, p3}, Lcom/kakaogame/KGSNSShare$showRewardView$1;-><init>(Lcom/kakaogame/KGResultCallback;)V

    check-cast v1, Lcom/kakaogame/KGResultCallback;

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Lcom/kakaogame/web/WebDialogManager;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/web/WebDialog$Settings;ZLcom/kakaogame/KGResultCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6209
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    const v2, 0x7d71b74d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6219
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    if-eqz p3, :cond_7

    .line 6229
    invoke-interface {p3, p1}, Lcom/kakaogame/KGResultCallback;->onResult(Lcom/kakaogame/KGResult;)V

    :cond_7
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showShareDialog(Landroid/app/Activity;Lcom/kakaogame/promotion/SNSShareData;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/promotion/SNSShareData;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 7259
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/KGSNSShare$showShareDialog$1;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/kakaogame/KGSNSShare$showShareDialog$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/promotion/SNSShareData;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final showShareViewOnActivity(Landroid/app/Activity;JLjava/lang/String;)Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 4509
    :try_start_0
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->getSNSShareJoinerCount()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 4539
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4549
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 4559
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    .line 4569
    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Lcom/kakaogame/invite/InviteDataManager;->savePlayerInvitationCount(Landroid/content/Context;Ljava/lang/String;J)V

    .line 4579
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v2, p2, p3}, Lcom/kakaogame/invite/InviteDataManager;->saveInvitationSeq(Landroid/content/Context;Ljava/lang/String;J)V

    .line 4599
    :cond_0
    sget-object v0, Lcom/kakaogame/util/MutexLock;->Companion:Lcom/kakaogame/util/MutexLock$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock$Companion;->createLock()Lcom/kakaogame/util/MutexLock;

    move-result-object v0

    .line 4609
    new-instance v1, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;

    invoke-direct {v1, p4, v0, p2, p3}, Lcom/kakaogame/KGSNSShare$showShareViewOnActivity$listener$1;-><init>(Ljava/lang/String;Lcom/kakaogame/util/MutexLock;J)V

    check-cast v1, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    .line 4979
    sget-object v2, Lcom/kakaogame/KGAuthActivity;->Companion:Lcom/kakaogame/KGAuthActivity$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lcom/kakaogame/KGAuthActivity$Companion;->start$default(Lcom/kakaogame/KGAuthActivity$Companion;Landroid/app/Activity;Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;ILjava/lang/Object;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4989
    invoke-static {v0, p3, p4, v2, v3}, Lcom/kakaogame/util/MutexLock;->lock$default(Lcom/kakaogame/util/MutexLock;JILjava/lang/Object;)V

    .line 4999
    sget-object p3, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p3}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/kakaogame/auth/AuthActivityManager;->finishActivity(J)V

    .line 5009
    sget-object p1, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$Companion;->getInstance()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/kakaogame/auth/AuthActivityManager;->removeResultListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V

    .line 5019
    invoke-virtual {v0}, Lcom/kakaogame/util/MutexLock;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5039
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Ljava/lang/Throwable;

    const v0, 0x7d71b74d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5049
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final initialize()V
    .locals 0

    .line 659
    invoke-direct {p0}, Lcom/kakaogame/KGSNSShare;->initInterfaceBroker()V

    return-void

    .array-data 1
    .end array-data
.end method
