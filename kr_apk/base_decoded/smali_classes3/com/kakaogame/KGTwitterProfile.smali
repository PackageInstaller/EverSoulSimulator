.class public final Lcom/kakaogame/KGTwitterProfile;
.super Lcom/kakaogame/KGIdpProfile;
.source "KGTwitterProfile.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGTwitterProfile$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u001f\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u0008\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\n0\tH\u0016R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/kakaogame/KGTwitterProfile;",
        "Lcom/kakaogame/KGIdpProfile;",
        "content",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "loadFriendProfiles",
        "Lcom/kakaogame/KGResult;",
        "",
        "screenName",
        "getScreenName",
        "()Ljava/lang/String;",
        "profileImageUrl",
        "getProfileImageUrl",
        "Companion",
        "idp_twitter_release"
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
.field public static final Companion:Lcom/kakaogame/KGTwitterProfile$Companion;

.field private static final serialVersionUID:J = -0x27e8603e417b35c6L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGTwitterProfile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGTwitterProfile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGTwitterProfile;->Companion:Lcom/kakaogame/KGTwitterProfile$Companion;

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

    .line 109
    invoke-direct {p0, p1}, Lcom/kakaogame/KGIdpProfile;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getProfileImageUrl()Ljava/lang/String;
    .locals 1

    const v0, 0x5d1688c7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGTwitterProfile;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getScreenName()Ljava/lang/String;
    .locals 1

    const v0, 0x336294bb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGTwitterProfile;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public loadFriendProfiles()Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGIdpProfile;",
            ">;>;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
