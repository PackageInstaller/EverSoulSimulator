.class public abstract Lcom/kakaogame/KGIdpProfile;
.super Lcom/kakaogame/KGObject;
.source "KGIdpProfile.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGIdpProfile$Companion;,
        Lcom/kakaogame/KGIdpProfile$KGIdpCode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B!\u0008\u0004\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001c\u0010\u0015\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00170\u0016H&R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000eR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kakaogame/KGIdpProfile;",
        "Lcom/kakaogame/KGObject;",
        "content",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "idpCode",
        "Lcom/kakaogame/KGIdpProfile$KGIdpCode;",
        "getIdpCode",
        "()Lcom/kakaogame/KGIdpProfile$KGIdpCode;",
        "idpUserId",
        "getIdpUserId",
        "()Ljava/lang/String;",
        "idpAccessToken",
        "getIdpAccessToken",
        "playerId",
        "getPlayerId",
        "accountType",
        "getAccountType",
        "loadFriendProfiles",
        "Lcom/kakaogame/KGResult;",
        "",
        "KGIdpCode",
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
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGIdpProfile"

.field public static final Companion:Lcom/kakaogame/KGIdpProfile$Companion;

.field private static final TAG:Ljava/lang/String; = "KGIdpProfile"

.field private static final serialVersionUID:J = -0x5229bfd7a5c5651bL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGIdpProfile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGIdpProfile$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGIdpProfile;->Companion:Lcom/kakaogame/KGIdpProfile$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>(Ljava/util/Map;)V
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

    .line 239
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final getLocalIdpProfile()Lcom/kakaogame/KGIdpProfile;
    .locals 1

    sget-object v0, Lcom/kakaogame/KGIdpProfile;->Companion:Lcom/kakaogame/KGIdpProfile$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGIdpProfile$Companion;->getLocalIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final initialize()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGIdpProfile;->Companion:Lcom/kakaogame/KGIdpProfile$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGIdpProfile$Companion;->initialize()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final refreshLocalIdpProfile(Lcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGIdpProfile;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGIdpProfile;->Companion:Lcom/kakaogame/KGIdpProfile$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/KGIdpProfile$Companion;->refreshLocalIdpProfile(Lcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getIdpAccessToken()Ljava/lang/String;
    .locals 1

    const v0, -0x451ea8af

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGIdpProfile;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;
    .locals 2

    const v0, 0x6d0bddd0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGIdpProfile;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 769
    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Companion:Lcom/kakaogame/KGIdpProfile$KGIdpCode$Companion;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGIdpProfile$KGIdpCode$Companion;->get(Ljava/lang/String;)Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getIdpUserId()Ljava/lang/String;
    .locals 1

    const v0, 0x33656483

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGIdpProfile;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 1019
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGIdpProfile;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public abstract loadFriendProfiles()Lcom/kakaogame/KGResult;
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
.end method
