.class public final Lcom/kakaogame/KGCustomUI$KGCustomAlert;
.super Lcom/kakaogame/KGObject;
.source "KGCustomUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGCustomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGCustomAlert"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0016\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aBO\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0010R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0010R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0010R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0010R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/kakaogame/KGCustomUI$KGCustomAlert;",
        "Lcom/kakaogame/KGObject;",
        "type",
        "Lcom/kakaogame/KGCustomUI$KGCustomAlertType;",
        "title",
        "",
        "message",
        "linkBtnLabel",
        "linkBtnAction",
        "closeBtnLabel",
        "closeBtnAction",
        "<init>",
        "(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getType",
        "()Lcom/kakaogame/KGCustomUI$KGCustomAlertType;",
        "getTitle",
        "()Ljava/lang/String;",
        "getMessage",
        "linkLabel",
        "getLinkLabel",
        "linkAction",
        "getLinkAction",
        "closeLabel",
        "getCloseLabel",
        "closeAction",
        "getCloseAction",
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
.field public static final Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

.field private static final KEY_ALERT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_CLOSE_BTN_ACTION:Ljava/lang/String; = "closeAction"

.field private static final KEY_CLOSE_BTN_LABEL:Ljava/lang/String; = "closeLabel"

.field private static final KEY_LINK_BTN_ACTION:Ljava/lang/String; = "linkAction"

.field private static final KEY_LINK_BTN_LABEL:Ljava/lang/String; = "linkLabel"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 439
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_0

    const v0, 0x6d0b0e48

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-virtual {p1}, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 979
    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "title"

    .line 989
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1009
    :cond_1
    move-object p1, p3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "message"

    .line 1019
    invoke-virtual {p0, p1, p3}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1039
    :cond_2
    move-object p1, p4

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "linkLabel"

    .line 1049
    invoke-virtual {p0, p1, p4}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    :cond_3
    move-object p1, p5

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "linkAction"

    .line 1079
    invoke-virtual {p0, p1, p5}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1099
    :cond_4
    move-object p1, p6

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "closeLabel"

    .line 1109
    invoke-virtual {p0, p1, p6}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1129
    :cond_5
    move-object p1, p7

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "closeAction"

    .line 1139
    invoke-virtual {p0, p1, p7}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;-><init>(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/kakaogame/KGCustomUI$KGCustomAlert$Companion;->makeAlert(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlert;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCloseAction()Ljava/lang/String;
    .locals 2

    const v0, 0x2252b92e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCloseLabel()Ljava/lang/String;
    .locals 2

    const v0, 0x6d0bacb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLinkAction()Ljava/lang/String;
    .locals 2

    const v0, 0x543eb352

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLinkLabel()Ljava/lang/String;
    .locals 2

    const v0, 0x6d0baff8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    const v0, -0x451edd5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    const v0, 0x6d0baf18

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getType()Lcom/kakaogame/KGCustomUI$KGCustomAlertType;
    .locals 2

    const v0, 0x6d0b0e48

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    sget-object v1, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->Companion:Lcom/kakaogame/KGCustomUI$KGCustomAlertType$Companion;

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlert;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGCustomUI$KGCustomAlertType$Companion;->getType(Ljava/lang/String;)Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_0
    sget-object v0, Lcom/kakaogame/KGCustomUI$KGCustomAlertType;->NOTICE:Lcom/kakaogame/KGCustomUI$KGCustomAlertType;

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
