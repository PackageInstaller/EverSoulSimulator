.class public final Lcom/kakaogame/KGKakaoInvitationHost;
.super Lcom/kakaogame/KGObject;
.source "KGKakaoInvitationHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoInvitationHost$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u001b\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoInvitationHost;",
        "Lcom/kakaogame/KGObject;",
        "player",
        "Lcom/kakaogame/KGPlayer;",
        "totalJoinerCount",
        "",
        "<init>",
        "(Lcom/kakaogame/KGPlayer;Ljava/lang/Integer;)V",
        "getPlayer",
        "()Lcom/kakaogame/KGPlayer;",
        "getTotalJoinerCount",
        "()I",
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
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGKakaoInvitationHost"

.field public static final Companion:Lcom/kakaogame/KGKakaoInvitationHost$Companion;

.field private static final KEY_PLAYER:Ljava/lang/String; = "player"

.field private static final KEY_TOTAL_JOINER_COUNT:Ljava/lang/String; = "totalJoinerCount"

.field private static final TAG:Ljava/lang/String; = "KGKakaoInvitationHost"

.field private static final serialVersionUID:J = -0x1299b6753ac0ae37L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoInvitationHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoInvitationHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoInvitationHost;->Companion:Lcom/kakaogame/KGKakaoInvitationHost$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Lcom/kakaogame/KGPlayer;Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 259
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x22528e2e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 2009
    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGKakaoInvitationHost;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p1, "totalJoinerCount"

    if-eqz p2, :cond_0

    .line 2029
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGKakaoInvitationHost;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2049
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/KGKakaoInvitationHost;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakaogame/KGPlayer;Ljava/lang/Integer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kakaogame/KGKakaoInvitationHost;-><init>(Lcom/kakaogame/KGPlayer;Ljava/lang/Integer;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loadInvitationHost(ILcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGKakaoInvitationHost;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGKakaoInvitationHost;->Companion:Lcom/kakaogame/KGKakaoInvitationHost$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/KGKakaoInvitationHost$Companion;->loadInvitationHost(ILcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loadInvitationHosts(ILcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kakaogame/KGResultCallback<",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoInvitationHost;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGKakaoInvitationHost;->Companion:Lcom/kakaogame/KGKakaoInvitationHost$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/KGKakaoInvitationHost$Companion;->loadInvitationHosts(ILcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getPlayer()Lcom/kakaogame/KGPlayer;
    .locals 1

    const v0, 0x22528e2e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationHost;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGPlayer;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getTotalJoinerCount()I
    .locals 2

    const v0, 0x7d76140d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoInvitationHost;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244dc24

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method
