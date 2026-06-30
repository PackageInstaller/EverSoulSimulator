.class public final Lcom/kakaogame/idp/KGTwitterAuth;
.super Ljava/lang/Object;
.source "KGTwitterAuth.kt"

# interfaces
.implements Lcom/kakaogame/idp/IdpAuthHandler;
.implements Lcom/kakaogame/idp/IdpAuthExHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/idp/KGTwitterAuth$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGTwitterAuth.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGTwitterAuth.kt\ncom/kakaogame/idp/KGTwitterAuth\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,385:1\n1#2:386\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 =2\u00020\u00012\u00020\u0002:\u0001=B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J*\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u00082\u0006\u0010!\u001a\u00020\"H\u0016J&\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020%H\u0082@\u00a2\u0006\u0002\u0010&J\u001e\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH\u0082@\u00a2\u0006\u0002\u0010(J2\u0010)\u001a\u00020*2\u0006\u0010\u001c\u001a\u00020\u001d2 \u0010+\u001a\u001c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u001a\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020*0,H\u0002J\u0010\u0010\u000f\u001a\u00020*2\u0006\u0010!\u001a\u00020\"H\u0002J*\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010/\u001a\u0004\u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001aH\u0016J\u0010\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001aH\u0016J\u0014\u00106\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u00107\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ<\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020\"2\u0006\u0010:\u001a\u00020\"2\u0008\u0010;\u001a\u0004\u0018\u00010%2\u001a\u0010+\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u001a\u0012\u0004\u0012\u00020*0<R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0016\u00102\u001a\u0004\u0018\u0001038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105\u00a8\u0006>"
    }
    d2 = {
        "Lcom/kakaogame/idp/KGTwitterAuth;",
        "Lcom/kakaogame/idp/IdpAuthHandler;",
        "Lcom/kakaogame/idp/IdpAuthExHandler;",
        "<init>",
        "()V",
        "twitter",
        "Ltwitter4j/Twitter;",
        "callbackUrl",
        "",
        "requestToken",
        "Ltwitter4j/auth/RequestToken;",
        "accessToken",
        "Ltwitter4j/auth/AccessToken;",
        "user",
        "Ltwitter4j/User;",
        "getUser",
        "()Ltwitter4j/User;",
        "setUser",
        "(Ltwitter4j/User;)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "initialize",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "activity",
        "Landroid/app/Activity;",
        "idpLogin",
        "Lcom/kakaogame/idp/IdpAccount;",
        "extras",
        "traceJobId",
        "",
        "idpLoginWithTwitterSync",
        "intent",
        "Landroid/content/Intent;",
        "(Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "idpLoginWithWebViewSync",
        "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "idpLoginWithWebView",
        "",
        "callback",
        "Lkotlin/Function2;",
        "",
        "checkAuth",
        "authData",
        "logout",
        "unregister",
        "localIdpProfile",
        "Lcom/kakaogame/KGIdpProfile;",
        "getLocalIdpProfile",
        "()Lcom/kakaogame/KGIdpProfile;",
        "getAccessToken",
        "getAccessTokenSecret",
        "activityResultOnIdpLogin",
        "requestCode",
        "resultCode",
        "data",
        "Lkotlin/Function1;",
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
.field private static CONSUMER_KEY:Ljava/lang/String; = null

.field private static CONSUMER_SECRET:Ljava/lang/String; = null

.field public static final Companion:Lcom/kakaogame/idp/KGTwitterAuth$Companion;

.field public static final KEY_AUTH_ERROR:Ljava/lang/String; = "oauth_error"

.field public static final KEY_AUTH_VERIFIER:Ljava/lang/String; = "oauth_verifier"

.field public static final KEY_CONSUMER_KEY:Ljava/lang/String; = "consumerKey"

.field public static final KEY_CONSUMER_SECRET:Ljava/lang/String; = "consumerSecret"

.field public static final KEY_PROFILE_URL:Ljava/lang/String; = "profileImageUrl"

.field public static final KEY_SCREEN_NAME:Ljava/lang/String; = "screenName"

.field public static final KEY_TOKEN_SECRET:Ljava/lang/String; = "idpAccessTokenSecret"

.field public static final SSOAUTH_REQUEST_CODE:I = 0x8d

.field private static final TAG:Ljava/lang/String; = "KGTwitterAuth"

.field public static final WEBLOGIN_REQUEST_CODE:I = 0x8c


# instance fields
.field private accessToken:Ltwitter4j/auth/AccessToken;

.field private final callbackUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private requestToken:Ltwitter4j/auth/RequestToken;

.field private twitter:Ltwitter4j/Twitter;

.field private user:Ltwitter4j/User;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/idp/KGTwitterAuth$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/idp/KGTwitterAuth$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/idp/KGTwitterAuth;->Companion:Lcom/kakaogame/idp/KGTwitterAuth$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x22402584

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    iput-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->callbackUrl:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getAccessToken$p(Lcom/kakaogame/idp/KGTwitterAuth;)Ltwitter4j/auth/AccessToken;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->accessToken:Ltwitter4j/auth/AccessToken;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCONSUMER_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 469
    sget-object v0, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCONSUMER_SECRET$cp()Ljava/lang/String;
    .locals 1

    .line 469
    sget-object v0, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getRequestToken$p(Lcom/kakaogame/idp/KGTwitterAuth;)Ltwitter4j/auth/RequestToken;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->requestToken:Ltwitter4j/auth/RequestToken;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTwitter$p(Lcom/kakaogame/idp/KGTwitterAuth;)Ltwitter4j/Twitter;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$idpLoginWithTwitterSync(Lcom/kakaogame/idp/KGTwitterAuth;Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/idp/KGTwitterAuth;->idpLoginWithTwitterSync(Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$idpLoginWithWebViewSync(Lcom/kakaogame/idp/KGTwitterAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/idp/KGTwitterAuth;->idpLoginWithWebViewSync(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setAccessToken$p(Lcom/kakaogame/idp/KGTwitterAuth;Ltwitter4j/auth/AccessToken;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->accessToken:Ltwitter4j/auth/AccessToken;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setCONSUMER_KEY$cp(Ljava/lang/String;)V
    .locals 0

    .line 469
    sput-object p0, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setCONSUMER_SECRET$cp(Ljava/lang/String;)V
    .locals 0

    .line 469
    sput-object p0, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final getUser(I)V
    .locals 4

    .line 1969
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0, p1, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 1979
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_0

    .line 1999
    :try_start_0
    invoke-interface {v0}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->user:Ltwitter4j/User;

    .line 2009
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 2019
    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    const-string v2, "Success"

    const/16 v3, 0xc8

    .line 2009
    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2069
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, -0x451e20f7

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x22579a26

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2079
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 2089
    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 2099
    sget-object v2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    const/16 v3, 0xd1

    invoke-virtual {v2, p1, v3}, Lcom/kakaogame/log/tracer/Tracer;->makeCustomErrorCode(II)I

    move-result v2

    const v3, -0x2240243c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 2079
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final idpLoginWithTwitterSync(Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1269
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 1279
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 1289
    new-instance v3, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;

    invoke-direct {v3, p2, p0, v2, v1}, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithTwitterSync$2$eventListener$1;-><init>(Landroid/content/Intent;Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    move-object v6, v3

    check-cast v6, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    .line 1459
    sget-object v4, Lcom/kakaogame/KGAuthActivity;->Companion:Lcom/kakaogame/KGAuthActivity$Companion;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kakaogame/KGAuthActivity$Companion;->start$default(Lcom/kakaogame/KGAuthActivity$Companion;Landroid/app/Activity;Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;ILjava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1269
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final idpLoginWithWebView(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1709
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 1719
    new-instance v1, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebView$eventListener$1;-><init>(Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object v4, v1

    check-cast v4, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    .line 1929
    sget-object v2, Lcom/kakaogame/KGAuthActivity;->Companion:Lcom/kakaogame/KGAuthActivity$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/kakaogame/KGAuthActivity$Companion;->start$default(Lcom/kakaogame/KGAuthActivity$Companion;Landroid/app/Activity;Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;ILjava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    return-void

    .array-data 1
    .end array-data
.end method

.method private final idpLoginWithWebViewSync(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1489
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 1499
    new-instance v2, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {v2}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 1509
    sget-object v3, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 1519
    sget-object v3, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 1529
    invoke-virtual {v2}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object v2

    .line 1539
    new-instance v3, Ltwitter4j/TwitterFactory;

    invoke-direct {v3, v2}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 1549
    invoke-virtual {v3}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v2

    iput-object v2, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1569
    :try_start_0
    iget-object v4, p0, Lcom/kakaogame/idp/KGTwitterAuth;->callbackUrl:Ljava/lang/String;

    invoke-interface {v2, v4}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v2
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1559
    :catch_0
    :cond_0
    iput-object v3, p0, Lcom/kakaogame/idp/KGTwitterAuth;->requestToken:Ltwitter4j/auth/RequestToken;

    if-eqz v3, :cond_1

    .line 1629
    new-instance v2, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebViewSync$2$1$1;

    invoke-direct {v2, v1}, Lcom/kakaogame/idp/KGTwitterAuth$idpLoginWithWebViewSync$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, v2}, Lcom/kakaogame/idp/KGTwitterAuth;->idpLoginWithWebView(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 1669
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/kakaogame/idp/KGTwitterAuth;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1489
    :goto_0
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final activityResultOnIdpLogin(IILandroid/content/Intent;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ltwitter4j/auth/AccessToken;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const v0, 0x6d0d7b60

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3229
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d77b805

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d179617

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x22579a26

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8c

    const-string v1, ""

    const/4 v2, -0x1

    const/16 v3, 0xfaa

    const/16 v4, 0x2329

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8d

    if-eq p1, v0, :cond_0

    .line 3679
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    if-eq p2, v2, :cond_4

    if-eqz p2, :cond_3

    .line 3639
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :cond_2
    :goto_0
    invoke-virtual {p1, v3, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3629
    :cond_3
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3559
    :cond_4
    sget-object p1, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    sget-object p2, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Lcom/kakaogame/twitter/TwitterSSOAuthHandler;->handleOnActivityResult(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Ltwitter4j/Twitter;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    .line 3579
    :try_start_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    iget-object p2, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3599
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ltwitter4j/TwitterException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 3659
    :goto_1
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    if-eq p2, v2, :cond_9

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    .line 3499
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3459
    :cond_6
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    if-eqz p3, :cond_7

    .line 3479
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_7
    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const-string p1, "oauth_error"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3459
    :goto_2
    invoke-virtual {p2, v3, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3279
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p2, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;

    invoke-direct {p2, p3, p4, p0, p1}, Lcom/kakaogame/idp/KGTwitterAuth$activityResultOnIdpLogin$1;-><init>(Landroid/content/Intent;Lkotlin/jvm/functions/Function1;Lcom/kakaogame/idp/KGTwitterAuth;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_3
    return-void

    .array-data 1
    .end array-data
.end method

.method public checkAuth(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/idp/IdpAccount;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2179
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x3360fe3b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x22579a26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    new-instance p1, Ltwitter4j/conf/ConfigurationBuilder;

    invoke-direct {p1}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V

    .line 2199
    sget-object v0, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 2209
    sget-object v0, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 2219
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/kakaogame/idp/IdpAccount;->getIdpAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 2229
    invoke-virtual {p2}, Lcom/kakaogame/idp/IdpAccount;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthAccessTokenSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;

    .line 2239
    invoke-virtual {p1}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;

    move-result-object p1

    .line 2249
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0, p1}, Ltwitter4j/TwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 2259
    invoke-virtual {v0}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    if-eqz p1, :cond_0

    .line 2289
    :try_start_0
    invoke-direct {p0, p3}, Lcom/kakaogame/idp/KGTwitterAuth;->getUser(I)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2319
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ltwitter4j/TwitterException;->toString()Ljava/lang/String;

    move-result-object p3

    const v0, -0x451e20f7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p2, v1, p3, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2329
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfaa

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2349
    :cond_0
    :goto_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getAccessToken(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 3149
    iget-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final getAccessTokenSecret(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 3189
    iget-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object p1

    const v0, 0x5d12c7ff

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->context:Landroid/content/Context;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalIdpProfile()Lcom/kakaogame/KGIdpProfile;
    .locals 6

    .line 2979
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2989
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 2999
    iget-object v2, p0, Lcom/kakaogame/idp/KGTwitterAuth;->user:Ltwitter4j/User;

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v3

    .line 3009
    :cond_2
    iget-object v4, p0, Lcom/kakaogame/idp/KGTwitterAuth;->user:Ltwitter4j/User;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ltwitter4j/User;->getProfileImageURL()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :cond_4
    :goto_0
    const v4, 0x6d0bddd0

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x3365602b

    invoke-static {v5}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v5

    .line 3019
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x33656483

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    .line 3029
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, -0x451ea8af

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    .line 3039
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x543bedc2

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    .line 3049
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x5d12618f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3059
    sget-object v4, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, -0x22408024

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 3069
    sget-object v4, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x336294bb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3079
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x5d1688c7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 3089
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    new-instance v0, Lcom/kakaogame/KGTwitterProfile;

    invoke-direct {v0, v1}, Lcom/kakaogame/KGTwitterProfile;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/kakaogame/KGIdpProfile;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUser()Ltwitter4j/User;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->user:Ltwitter4j/User;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public idpLogin(Landroid/app/Activity;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;"
        }
    .end annotation

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 729
    new-instance v0, Landroid/content/ComponentName;

    const v1, 0x5d12c157

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2257e17e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x5d12c0af

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 749
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    const v1, 0x543be802

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v1, p3, v2}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 789
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 799
    new-instance p2, Lcom/kakaogame/idp/KGTwitterAuth$idpLogin$result$1;

    invoke-direct {p2, p0, p1, v2}, Lcom/kakaogame/idp/KGTwitterAuth$idpLogin$result$1;-><init>(Lcom/kakaogame/idp/KGTwitterAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, p2, v1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    .line 829
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 839
    sget-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 849
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    .line 859
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v2

    .line 829
    :cond_0
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 879
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_3

    .line 889
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 929
    :cond_1
    new-instance p2, Lcom/kakaogame/idp/KGTwitterAuth$idpLogin$result$2;

    invoke-direct {p2, p0, p1, v0, v2}, Lcom/kakaogame/idp/KGTwitterAuth$idpLogin$result$2;-><init>(Lcom/kakaogame/idp/KGTwitterAuth;Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, p2, v1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    .line 959
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 969
    sget-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 979
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    .line 989
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v2

    .line 959
    :cond_2
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 1009
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1029
    :try_start_0
    iget-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->accessToken:Ltwitter4j/auth/AccessToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1049
    invoke-virtual {p1}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 1129
    :cond_3
    :goto_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/kakaogame/idp/KGTwitterAuth;->getUser(I)V
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1149
    invoke-virtual {p1}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 1169
    :goto_1
    sget-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    .line 1179
    iget-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getUserId()J

    move-result-wide v1

    .line 1189
    iget-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    const-string p1, "getToken(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1199
    iget-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v4

    .line 1209
    sget-object v5, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    .line 1219
    sget-object v6, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    .line 1169
    invoke-virtual/range {v0 .. v6}, Lcom/kakaogame/idp/IdpAccount$Companion;->createTwitterAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p1

    .line 1239
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1079
    :cond_4
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public initialize(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, -0x22402214

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    const v1, 0x543be6b2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    .line 569
    sget-object v1, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_KEY:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0xbb8

    if-nez v1, :cond_2

    sget-object v1, Lcom/kakaogame/idp/KGTwitterAuth;->CONSUMER_SECRET:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 629
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->context:Landroid/content/Context;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 639
    const-class v1, Lcom/kakaogame/KGAuthActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const-class v1, Lcom/kakaogame/twitter/TwitterOAuthActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, p1, v3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 649
    invoke-static {v0, p1}, Lcom/kakaogame/util/AndroidManifestUtil;->checkActivities(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 669
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 679
    :cond_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    .line 579
    :cond_2
    :goto_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string/jumbo v0, "\ud2b8\uc704\ud130 \uc571\uc5d0 \ub300\ud55c \ucee8\uc288\uba38 \ud0a4\uc640 \ucee8\uc288\uba38 \uc2dc\ud06c\ub9bf \ud544\uc694\ud568!!"

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public logout()Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2399
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ltwitter4j/Twitter;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    const v1, 0x5d12cdbf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ltwitter4j/auth/OAuthAuthorization;

    .line 2419
    new-instance v7, Ltwitter4j/HttpRequest;

    .line 2429
    sget-object v2, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    const v3, -0x22402e4c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2459
    move-object v5, v0

    check-cast v5, Ltwitter4j/auth/Authorization;

    const/4 v6, 0x0

    move-object v1, v7

    .line 2419
    invoke-direct/range {v1 .. v6}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    .line 2409
    invoke-virtual {v0, v7}, Ltwitter4j/auth/OAuthAuthorization;->getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 2499
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const v2, 0x5d122347

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 2509
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2559
    sget-object v0, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    const v2, -0x22402e4c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2519
    invoke-static {v2, v1, v3, v0}, Lcom/kakaogame/server/http/HttpService;->requestPOST(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v0

    .line 2579
    invoke-virtual {v0}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2619
    :cond_0
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x22579a26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543be25a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2599
    :cond_1
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 2639
    :cond_2
    :goto_0
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->context:Landroid/content/Context;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setUser(Ltwitter4j/User;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/kakaogame/idp/KGTwitterAuth;->user:Ltwitter4j/User;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public unregister()Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2689
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ltwitter4j/Twitter;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    const v1, 0x5d12cdbf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ltwitter4j/auth/OAuthAuthorization;

    .line 2709
    new-instance v7, Ltwitter4j/HttpRequest;

    .line 2719
    sget-object v2, Ltwitter4j/RequestMethod;->POST:Ltwitter4j/RequestMethod;

    const v3, -0x22402e4c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2749
    move-object v5, v0

    check-cast v5, Ltwitter4j/auth/Authorization;

    const/4 v6, 0x0

    move-object v1, v7

    .line 2709
    invoke-direct/range {v1 .. v6}, Ltwitter4j/HttpRequest;-><init>(Ltwitter4j/RequestMethod;Ljava/lang/String;[Ltwitter4j/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V

    .line 2699
    invoke-virtual {v0, v7}, Ltwitter4j/auth/OAuthAuthorization;->getAuthorizationHeader(Ltwitter4j/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    .line 2789
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const v2, 0x5d122347

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 2799
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    sget-object v0, Lcom/kakaogame/server/http/HttpService$HttpContentType;->STRING:Lcom/kakaogame/server/http/HttpService$HttpContentType;

    const v2, -0x22402e4c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2809
    invoke-static {v2, v1, v3, v0}, Lcom/kakaogame/server/http/HttpService;->requestPOST(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/kakaogame/server/http/HttpService$HttpContentType;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v0

    .line 2869
    invoke-virtual {v0}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2909
    :cond_0
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x22579a26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543be25a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2889
    :cond_1
    iget-object v0, p0, Lcom/kakaogame/idp/KGTwitterAuth;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 2929
    :cond_2
    :goto_0
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
