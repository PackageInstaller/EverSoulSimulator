.class public final Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;
.super Ljava/lang/Object;
.source "TournamentJoinDialogURIBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTournamentJoinDialogURIBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TournamentJoinDialogURIBuilder.kt\ncom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J-\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008\u000bJ%\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;",
        "",
        "()V",
        "baseUriBuilder",
        "Landroid/net/Uri$Builder;",
        "bundle",
        "Landroid/os/Bundle;",
        "appID",
        "",
        "tournamentID",
        "payload",
        "bundle$facebook_gamingservices_release",
        "uri",
        "Landroid/net/Uri;",
        "uri$facebook_gamingservices_release",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;

    invoke-direct {v0}, Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;-><init>()V

    sput-object v0, Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;->INSTANCE:Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final baseUriBuilder()Landroid/net/Uri$Builder;
    .locals 2

    .line 13
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 14
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getFacebookGamingDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dialog"

    .line 16
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "join_tournament"

    .line 17
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "Builder()\n                .scheme(\"https\")\n                .authority(FacebookSdk.getFacebookGamingDomain())\n                .appendPath(\"dialog\")\n                .appendPath(\"join_tournament\")"

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic bundle$facebook_gamingservices_release$default(Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 33
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;->bundle$facebook_gamingservices_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic uri$facebook_gamingservices_release$default(Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 21
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;->uri$facebook_gamingservices_release(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final bundle$facebook_gamingservices_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "appID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "deeplink"

    const-string v2, "INSTANT_TOURNAMENT"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "tournament_id"

    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "payload"

    .line 42
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final uri$facebook_gamingservices_release(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/facebook/gamingservices/internal/TournamentJoinDialogURIBuilder;->baseUriBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "tournament_id"

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "payload"

    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .array-data 1
    .end array-data
.end method
