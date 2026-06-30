.class public final Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;
.super Ljava/lang/Object;
.source "KGKakaoProfile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGKakaoFriendsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;",
        "",
        "totalCount",
        "",
        "friendList",
        "",
        "Lcom/kakaogame/KGKakaoProfile;",
        "<init>",
        "(ILjava/util/List;)V",
        "getTotalCount",
        "()I",
        "getFriendList",
        "()Ljava/util/List;",
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
.field public static final Companion:Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse$Companion;


# instance fields
.field private final friendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;->Companion:Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoProfile;",
            ">;)V"
        }
    .end annotation

    const v0, 0x543facda

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3349
    iput p1, p0, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;->totalCount:I

    .line 3409
    iput-object p2, p0, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;->friendList:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getFriendList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoProfile;",
            ">;"
        }
    .end annotation

    .line 3409
    iget-object v0, p0, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;->friendList:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTotalCount()I
    .locals 1

    .line 3349
    iget v0, p0, Lcom/kakaogame/KGKakaoProfile$KGKakaoFriendsResponse;->totalCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
