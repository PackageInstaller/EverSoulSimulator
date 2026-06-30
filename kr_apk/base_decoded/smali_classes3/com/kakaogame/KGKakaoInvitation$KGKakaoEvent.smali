.class public final Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;
.super Lcom/kakaogame/KGObject;
.source "KGKakaoInvitation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGKakaoEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u001f\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;",
        "Lcom/kakaogame/KGObject;",
        "event",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "eventId",
        "",
        "getEventId",
        "()I",
        "startTime",
        "",
        "getStartTime",
        "()J",
        "finishTime",
        "getFinishTime",
        "eventDescription",
        "getEventDescription",
        "()Ljava/lang/String;",
        "Companion",
        "idp_kakao_release"
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
.field public static final Companion:Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent$Companion;

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final EVENT_ID:Ljava/lang/String; = "invitationEventId"

.field public static final FINISH_TIME:Ljava/lang/String; = "endTime"

.field public static final START_TIME:Ljava/lang/String; = "beginTime"

.field public static final UNUTY_DESCRIPTION:Ljava/lang/String; = "eventDescription"

.field public static final UNUTY_EVENT_ID:Ljava/lang/String; = "eventId"

.field public static final UNUTY_FINISH_TIME:Ljava/lang/String; = "finishTime"

.field public static final UNUTY_START_TIME:Ljava/lang/String; = "startTime"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->Companion:Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5419
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    .line 6029
    invoke-virtual {p0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->getEventId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x543f22f2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6039
    invoke-virtual {p0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const v0, -0x2244e9cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6049
    invoke-virtual {p0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->getFinishTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const v0, 0x543f2392

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "eventDescription"

    .line 6059
    invoke-virtual {p0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->getEventDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getEventDescription()Ljava/lang/String;
    .locals 1

    const v0, 0x6d0a3cb8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 5889
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getEventId()I
    .locals 3

    const v0, 0x543f235a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 5489
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 5499
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 5509
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    :cond_1
    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFinishTime()J
    .locals 4

    const v0, -0x451f4d47

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 5759
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 5769
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 5779
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :cond_1
    return-wide v2

    .array-data 1
    .end array-data
.end method

.method public final getStartTime()J
    .locals 4

    const v0, -0x451f4d8f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 5619
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 5629
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitation$KGKakaoEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 5639
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :cond_1
    return-wide v2

    .array-data 1
    .end array-data
.end method
