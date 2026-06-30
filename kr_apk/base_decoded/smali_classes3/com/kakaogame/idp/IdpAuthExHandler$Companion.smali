.class public final Lcom/kakaogame/idp/IdpAuthExHandler$Companion;
.super Ljava/lang/Object;
.source "IdpAuthExHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/idp/IdpAuthExHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/idp/IdpAuthExHandler$Companion;",
        "",
        "<init>",
        "()V",
        "KEY_IDP_CODE",
        "",
        "KEY_USER_ID",
        "KEY_ACCESS_TOKEN",
        "KEY_PLAYER_ID",
        "KEY_CI",
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
.field static final synthetic $$INSTANCE:Lcom/kakaogame/idp/IdpAuthExHandler$Companion;

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "idpAccessToken"

.field public static final KEY_CI:Ljava/lang/String; = "ci"

.field public static final KEY_IDP_CODE:Ljava/lang/String; = "idpCode"

.field public static final KEY_PLAYER_ID:Ljava/lang/String; = "playerId"

.field public static final KEY_USER_ID:Ljava/lang/String; = "idpUserId"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/idp/IdpAuthExHandler$Companion;

    invoke-direct {v0}, Lcom/kakaogame/idp/IdpAuthExHandler$Companion;-><init>()V

    sput-object v0, Lcom/kakaogame/idp/IdpAuthExHandler$Companion;->$$INSTANCE:Lcom/kakaogame/idp/IdpAuthExHandler$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
