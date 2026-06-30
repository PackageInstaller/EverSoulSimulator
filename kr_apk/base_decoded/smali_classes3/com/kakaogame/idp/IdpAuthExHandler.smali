.class public interface abstract Lcom/kakaogame/idp/IdpAuthExHandler;
.super Ljava/lang/Object;
.source "IdpAuthExHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/idp/IdpAuthExHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakaogame/idp/IdpAuthExHandler;",
        "",
        "localIdpProfile",
        "Lcom/kakaogame/KGIdpProfile;",
        "getLocalIdpProfile",
        "()Lcom/kakaogame/KGIdpProfile;",
        "getAccessToken",
        "",
        "activity",
        "Landroid/app/Activity;",
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
.field public static final Companion:Lcom/kakaogame/idp/IdpAuthExHandler$Companion;

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "idpAccessToken"

.field public static final KEY_CI:Ljava/lang/String; = "ci"

.field public static final KEY_IDP_CODE:Ljava/lang/String; = "idpCode"

.field public static final KEY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field public static final KEY_USER_ID:Ljava/lang/String; = "idpUserId"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/kakaogame/idp/IdpAuthExHandler$Companion;->$$INSTANCE:Lcom/kakaogame/idp/IdpAuthExHandler$Companion;

    sput-object v0, Lcom/kakaogame/idp/IdpAuthExHandler;->Companion:Lcom/kakaogame/idp/IdpAuthExHandler$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public abstract getAccessToken(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract getLocalIdpProfile()Lcom/kakaogame/KGIdpProfile;
.end method
