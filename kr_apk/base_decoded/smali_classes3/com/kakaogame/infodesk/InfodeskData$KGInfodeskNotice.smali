.class public final Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;
.super Lcom/kakaogame/KGObject;
.source "InfodeskData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/infodesk/InfodeskData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGInfodeskNotice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$Companion;,
        Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;,
        Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0003\u001b\u001c\u001dB\u001f\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;",
        "Lcom/kakaogame/KGObject;",
        "m",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "noticeId",
        "getNoticeId",
        "()Ljava/lang/String;",
        "message",
        "getMessage",
        "link",
        "getLink",
        "startTime",
        "",
        "getStartTime",
        "()J",
        "actionOnClose",
        "Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;",
        "getActionOnClose",
        "()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;",
        "displayRule",
        "Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;",
        "getDisplayRule",
        "()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;",
        "InfodeskNoticeActionOnClose",
        "InfodeskNoticeDisplayRule",
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
.field public static final Companion:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$Companion;

.field private static final serialVersionUID:J = -0x1cd59e2308d0fe50L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->Companion:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 919
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getActionOnClose()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;
    .locals 7

    const v0, 0x6d0ee7b8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 1029
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1039
    invoke-static {}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->values()[Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1049
    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;->NONE:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeActionOnClose;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDisplayRule()Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;
    .locals 7

    const v0, -0x224033bc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1139
    invoke-static {}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;->values()[Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1149
    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1189
    :cond_1
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;->ALWAYS:Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice$InfodeskNoticeDisplayRule;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    const v0, 0x6d0e6720

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    const v0, 0x5439325a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getNoticeId()Ljava/lang/String;
    .locals 1

    const v0, 0x2257f296

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getStartTime()J
    .locals 2

    const v0, 0x6d0ee648

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 999
    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskData$KGInfodeskNotice;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3364b21b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method
