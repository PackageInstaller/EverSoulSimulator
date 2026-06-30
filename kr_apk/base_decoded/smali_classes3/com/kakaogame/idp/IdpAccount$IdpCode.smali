.class public final Lcom/kakaogame/idp/IdpAccount$IdpCode;
.super Ljava/lang/Object;
.source "IdpAccount.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/idp/IdpAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdpCode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kakaogame/idp/IdpAccount$IdpCode;",
        "",
        "<init>",
        "()V",
        "DEVICE",
        "",
        "FACEBOOK",
        "GOOGLE",
        "SigninWithApple",
        "Gamania",
        "Kakao",
        "TWITTER",
        "GooglePlayGames",
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
.field public static final DEVICE:Ljava/lang/String; = "zd3"

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final GOOGLE:Ljava/lang/String; = "google"

.field public static final Gamania:Ljava/lang/String; = "gamania"

.field public static final GooglePlayGames:Ljava/lang/String; = "gpg"

.field public static final INSTANCE:Lcom/kakaogame/idp/IdpAccount$IdpCode;

.field public static final Kakao:Ljava/lang/String; = "kakaocapri"

.field public static final SigninWithApple:Ljava/lang/String; = "siwa"

.field public static final TWITTER:Ljava/lang/String; = "twitter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/idp/IdpAccount$IdpCode;

    invoke-direct {v0}, Lcom/kakaogame/idp/IdpAccount$IdpCode;-><init>()V

    sput-object v0, Lcom/kakaogame/idp/IdpAccount$IdpCode;->INSTANCE:Lcom/kakaogame/idp/IdpAccount$IdpCode;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
