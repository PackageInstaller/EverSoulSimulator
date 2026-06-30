.class public final Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse$Companion;
.super Ljava/lang/Object;
.source "KGKakaoProfile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse$Companion;",
        "",
        "<init>",
        "()V",
        "emptyResponse",
        "Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;",
        "getEmptyResponse",
        "()Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getEmptyResponse()Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;
    .locals 3

    .line 3439
    new-instance v0, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;-><init>(ILjava/util/List;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
