.class public final Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse;
.super Ljava/lang/Object;
.source "KGKakaoInvitation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGInvitationReceviersResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB#\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse;",
        "",
        "joiners",
        "",
        "Lcom/kakaogame/KGPlayer;",
        "invitees",
        "Lcom/kakaogame/KGKakaoProfile;",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;)V",
        "getJoiners",
        "()Ljava/util/List;",
        "getInvitees",
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
.field public static final Companion:Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse$Companion;


# instance fields
.field private final invitees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final joiners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse;->Companion:Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/kakaogame/KGPlayer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoProfile;",
            ">;)V"
        }
    .end annotation

    const v0, 0x5d160e9f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x336484c3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6439
    iput-object p1, p0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse;->joiners:Ljava/util/List;

    .line 6499
    iput-object p2, p0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse;->invitees:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getInvitees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoProfile;",
            ">;"
        }
    .end annotation

    .line 6499
    iget-object v0, p0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse;->invitees:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getJoiners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGPlayer;",
            ">;"
        }
    .end annotation

    .line 6439
    iget-object v0, p0, Lcom/kakaogame/KGKakaoInvitation$KGInvitationReceviersResponse;->joiners:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
