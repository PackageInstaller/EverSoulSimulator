.class public final Lcom/kakaogame/twitter/TwitterSSOAuthHandler;
.super Ljava/lang/Object;
.source "TwitterSSOAuthHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakaogame/twitter/TwitterSSOAuthHandler;",
        "",
        "<init>",
        "()V",
        "EXTRA_TOKEN",
        "",
        "EXTRA_TOKEN_SECRET",
        "TWITTER_PACKAGE_NAME",
        "SSO_CLASS_NAME",
        "EXTRA_CONSUMER_KEY",
        "EXTRA_CONSUMER_SECRET",
        "handleOnActivityResult",
        "Ltwitter4j/Twitter;",
        "CONSUMER_KEY",
        "CONSUMER_SECRET",
        "data",
        "Landroid/content/Intent;",
        "startAuthActivityForResult",
        "",
        "activity",
        "Landroid/app/Activity;",
        "intent",
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
.field private static final EXTRA_CONSUMER_KEY:Ljava/lang/String; = "ck"

.field private static final EXTRA_CONSUMER_SECRET:Ljava/lang/String; = "cs"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "tk"

.field public static final EXTRA_TOKEN_SECRET:Ljava/lang/String; = "ts"

.field public static final INSTANCE:Lcom/kakaogame/twitter/TwitterSSOAuthHandler;

.field public static final SSO_CLASS_NAME:Ljava/lang/String; = "com.twitter.android.SingleSignOnActivity"

.field public static final TWITTER_PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/twitter/TwitterSSOAuthHandler;

    invoke-direct {v0}, Lcom/kakaogame/twitter/TwitterSSOAuthHandler;-><init>()V

    sput-object v0, Lcom/kakaogame/twitter/TwitterSSOAuthHandler;->INSTANCE:Lcom/kakaogame/twitter/TwitterSSOAuthHandler;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final handleOnActivityResult(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Ltwitter4j/Twitter;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x7d778fe5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5436c41a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d03db70

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 259
    new-instance v1, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v1}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 269
    invoke-virtual {v1, p0}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 279
    invoke-virtual {v1, p1}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 289
    invoke-virtual {v1, v0}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 299
    invoke-virtual {v1, p2}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthAccessTokenSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 309
    invoke-virtual {v1}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object p0

    .line 319
    new-instance p1, Ltwitter4j/TwitterFactory;

    invoke-direct {p1, p0}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 329
    invoke-virtual {p1}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object p0

    const-string p1, "getInstance(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final startAuthActivityForResult(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d156ea7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/kakaogame/idp/KGTwitterAuth;->Companion:Lcom/kakaogame/idp/KGTwitterAuth$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/idp/KGTwitterAuth$Companion;->getCONSUMER_KEY()Ljava/lang/String;

    move-result-object v0

    const v1, 0x5436c45a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 389
    sget-object v1, Lcom/kakaogame/idp/KGTwitterAuth;->Companion:Lcom/kakaogame/idp/KGTwitterAuth$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/idp/KGTwitterAuth$Companion;->getCONSUMER_SECRET()Ljava/lang/String;

    move-result-object v1

    const v2, -0x224d0f8c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x8d

    .line 399
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
