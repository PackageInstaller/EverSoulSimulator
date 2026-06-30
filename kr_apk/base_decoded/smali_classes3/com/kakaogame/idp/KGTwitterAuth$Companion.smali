.class public final Lcom/kakaogame/idp/KGTwitterAuth$Companion;
.super Ljava/lang/Object;
.source "KGTwitterAuth.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/idp/KGTwitterAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kakaogame/idp/KGTwitterAuth$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CONSUMER_KEY",
        "getCONSUMER_KEY",
        "()Ljava/lang/String;",
        "setCONSUMER_KEY",
        "(Ljava/lang/String;)V",
        "CONSUMER_SECRET",
        "getCONSUMER_SECRET",
        "setCONSUMER_SECRET",
        "KEY_AUTH_VERIFIER",
        "KEY_AUTH_ERROR",
        "KEY_TOKEN_SECRET",
        "KEY_CONSUMER_KEY",
        "KEY_CONSUMER_SECRET",
        "KEY_SCREEN_NAME",
        "KEY_PROFILE_URL",
        "WEBLOGIN_REQUEST_CODE",
        "",
        "SSOAUTH_REQUEST_CODE",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/idp/KGTwitterAuth$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCONSUMER_KEY()Ljava/lang/String;
    .locals 1

    .line 3739
    invoke-static {}, Lcom/kakaogame/idp/KGTwitterAuth;->access$getCONSUMER_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCONSUMER_SECRET()Ljava/lang/String;
    .locals 1

    .line 3749
    invoke-static {}, Lcom/kakaogame/idp/KGTwitterAuth;->access$getCONSUMER_SECRET$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCONSUMER_KEY(Ljava/lang/String;)V
    .locals 0

    .line 3739
    invoke-static {p1}, Lcom/kakaogame/idp/KGTwitterAuth;->access$setCONSUMER_KEY$cp(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final setCONSUMER_SECRET(Ljava/lang/String;)V
    .locals 0

    .line 3749
    invoke-static {p1}, Lcom/kakaogame/idp/KGTwitterAuth;->access$setCONSUMER_SECRET$cp(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
