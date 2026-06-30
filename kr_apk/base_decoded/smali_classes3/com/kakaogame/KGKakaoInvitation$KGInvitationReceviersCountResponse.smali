.class public final Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse;
.super Ljava/lang/Object;
.source "KGKakaoInvitation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGInvitationReceviersCountResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse;",
        "",
        "totalReceiversCount",
        "",
        "joinersCount",
        "<init>",
        "(II)V",
        "getTotalReceiversCount",
        "()I",
        "getJoinersCount",
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
.field public static final Companion:Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse$Companion;


# instance fields
.field private final joinersCount:I

.field private final totalReceiversCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse;->Companion:Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 6129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6189
    iput p1, p0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse;->totalReceiversCount:I

    .line 6259
    iput p2, p0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse;->joinersCount:I

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getJoinersCount()I
    .locals 1

    .line 6259
    iget v0, p0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse;->joinersCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTotalReceiversCount()I
    .locals 1

    .line 6189
    iget v0, p0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersCountResponse;->totalReceiversCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
