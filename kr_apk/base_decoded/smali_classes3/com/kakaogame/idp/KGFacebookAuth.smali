.class public final Lcom/kakaogame/idp/KGFacebookAuth;
.super Ljava/lang/Object;
.source "KGFacebookAuth.kt"

# interfaces
.implements Lcom/kakaogame/idp/IdpAuthHandler;
.implements Lcom/kakaogame/idp/IdpAuthExHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/idp/KGFacebookAuth$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGFacebookAuth.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGFacebookAuth.kt\ncom/kakaogame/idp/KGFacebookAuth\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,298:1\n1#2:299\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 .2\u00020\u00012\u00020\u0002:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0012J2\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2 \u0010\u0015\u001a\u001c\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000c\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00140\u0016H\u0002J*\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u000e\u0010\u001f\u001a\u00020 H\u0082@\u00a2\u0006\u0002\u0010!J\u001c\u0010\"\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00140#H\u0002J*\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010%\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u000cH\u0002J\u0010\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH\u0016J\u0010\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000cH\u0016J\u0010\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u000cH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010*\u001a\u0004\u0018\u00010+8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lcom/kakaogame/idp/KGFacebookAuth;",
        "Lcom/kakaogame/idp/IdpAuthHandler;",
        "Lcom/kakaogame/idp/IdpAuthExHandler;",
        "<init>",
        "()V",
        "callbackManager",
        "Lcom/facebook/CallbackManager;",
        "profile",
        "Lcom/facebook/Profile;",
        "accessToken",
        "Lcom/facebook/AccessToken;",
        "initialize",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "activity",
        "Landroid/app/Activity;",
        "loginFacebookSync",
        "Lcom/facebook/login/LoginResult;",
        "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loginFacebook",
        "",
        "callback",
        "Lkotlin/Function2;",
        "",
        "idpLogin",
        "Lcom/kakaogame/idp/IdpAccount;",
        "extras",
        "",
        "traceJobId",
        "",
        "getAccessToken",
        "refreshTokenSync",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshToken",
        "Lkotlin/Function1;",
        "checkAuth",
        "authData",
        "autoLogin",
        "logout",
        "unregister",
        "loadProfile",
        "localIdpProfile",
        "Lcom/kakaogame/KGIdpProfile;",
        "getLocalIdpProfile",
        "()Lcom/kakaogame/KGIdpProfile;",
        "Companion",
        "idp_facebook_release"
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
.field public static final Companion:Lcom/kakaogame/idp/KGFacebookAuth$Companion;

.field public static final KEY_EXPIRE_TIME:Ljava/lang/String; = "expireTime"

.field public static final KEY_GRAPH_DOMAIN:Ljava/lang/String; = "graphDomain"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final KEY_PROFILE_IMAGE_URL:Ljava/lang/String; = "profileImageUrl"

.field public static final KEY_REFRESH_TIME:Ljava/lang/String; = "refreshTime"

.field private static final TAG:Ljava/lang/String; = "KGFacebookAuth"

.field private static final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private profile:Lcom/facebook/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/idp/KGFacebookAuth$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/idp/KGFacebookAuth$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/idp/KGFacebookAuth;->Companion:Lcom/kakaogame/idp/KGFacebookAuth$Companion;

    .line 2969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/kakaogame/idp/KGFacebookAuth;->permissions:Ljava/util/List;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/idp/KGFacebookAuth;->callbackManager:Lcom/facebook/CallbackManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCallbackManager$p(Lcom/kakaogame/idp/KGFacebookAuth;)Lcom/facebook/CallbackManager;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/kakaogame/idp/KGFacebookAuth;->callbackManager:Lcom/facebook/CallbackManager;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getPermissions$cp()Ljava/util/List;
    .locals 1

    .line 369
    sget-object v0, Lcom/kakaogame/idp/KGFacebookAuth;->permissions:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$loginFacebookSync(Lcom/kakaogame/idp/KGFacebookAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/idp/KGFacebookAuth;->loginFacebookSync(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$refreshTokenSync(Lcom/kakaogame/idp/KGFacebookAuth;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 369
    invoke-direct {p0, p1}, Lcom/kakaogame/idp/KGFacebookAuth;->refreshTokenSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final autoLogin()Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;"
        }
    .end annotation

    const v0, -0x451b1bef

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 2079
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x2257782e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x451b377f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    :try_start_0
    new-instance v1, Lcom/kakaogame/idp/KGFacebookAuth$autoLogin$isSuccess$1;

    const/4 v2, 0x0

    const-wide/16 v4, 0x7530

    invoke-direct {v1, v4, v5, p0, v2}, Lcom/kakaogame/idp/KGFacebookAuth$autoLogin$isSuccess$1;-><init>(JLcom/kakaogame/idp/KGFacebookAuth;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    invoke-static {v2, v1, v4, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0xfaa

    if-nez v1, :cond_0

    .line 2189
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v1, "refresh AccessToken Failure."

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2209
    :cond_0
    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 2219
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 2239
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v1, "new access token is null."

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2259
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 2269
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 2279
    sget-object v2, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/idp/IdpAccount$Companion;->createFacebookAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object v0

    .line 2289
    invoke-direct {p0}, Lcom/kakaogame/idp/KGFacebookAuth;->loadProfile()Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 2299
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2309
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2329
    :cond_2
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Profile;

    iput-object v1, p0, Lcom/kakaogame/idp/KGFacebookAuth;->profile:Lcom/facebook/Profile;

    .line 2339
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2359
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2369
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final loadProfile()Lcom/kakaogame/KGResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Lcom/facebook/Profile;",
            ">;"
        }
    .end annotation

    .line 2579
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/facebook/internal/Utility;->awaitGetGraphMeRequestWithCache(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x543effa2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 2599
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2609
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x270f

    const v2, 0x7d725865

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    :cond_1
    const v1, 0x6d0e6720

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 2619
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2629
    new-instance v12, Lcom/facebook/Profile;

    const v2, 0x6d0e44e0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 2639
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v2, 0x3360fd4b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v2, 0x3360fed3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v2, -0x451eea5f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 2649
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object v2, v12

    .line 2629
    invoke-direct/range {v2 .. v11}, Lcom/facebook/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2669
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v12}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 2589
    :cond_2
    :goto_0
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfaa

    const v2, 0x2257538e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final loginFacebook(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/facebook/login/LoginResult;",
            ">;-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 709
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 719
    sget-object v1, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v1}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kakaogame/idp/KGFacebookAuth;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/kakaogame/idp/KGFacebookAuth$loginFacebook$1;

    invoke-direct {v3, p2, v0}, Lcom/kakaogame/idp/KGFacebookAuth$loginFacebook$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$LongRef;)V

    check-cast v3, Lcom/facebook/FacebookCallback;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 939
    new-instance v1, Lcom/kakaogame/idp/KGFacebookAuth$loginFacebook$eventListener$1;

    invoke-direct {v1, p2, v0, p0}, Lcom/kakaogame/idp/KGFacebookAuth$loginFacebook$eventListener$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$LongRef;Lcom/kakaogame/idp/KGFacebookAuth;)V

    move-object v4, v1

    check-cast v4, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    .line 1169
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

.method private final loginFacebookSync(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/facebook/login/LoginResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 629
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 639
    new-instance v2, Lcom/kakaogame/idp/KGFacebookAuth$loginFacebookSync$2$1;

    invoke-direct {v2, v1}, Lcom/kakaogame/idp/KGFacebookAuth$loginFacebookSync$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, v2}, Lcom/kakaogame/idp/KGFacebookAuth;->loginFacebook(Landroid/app/Activity;Lkotlin/jvm/functions/Function2;)V

    .line 629
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final refreshToken(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1819
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    new-instance v1, Lcom/kakaogame/idp/KGFacebookAuth$refreshToken$1;

    invoke-direct {v1, p1}, Lcom/kakaogame/idp/KGFacebookAuth$refreshToken$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/AccessToken$Companion;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final refreshTokenSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1749
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 1759
    new-instance v2, Lcom/kakaogame/idp/KGFacebookAuth$refreshTokenSync$2$1;

    invoke-direct {v2, v1}, Lcom/kakaogame/idp/KGFacebookAuth$refreshTokenSync$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v2}, Lcom/kakaogame/idp/KGFacebookAuth;->refreshToken(Lkotlin/jvm/functions/Function1;)V

    .line 1749
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public checkAuth(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;
    .locals 3
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

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1959
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "KGFacebookAuth"

    const v0, 0x3360fe3b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    sget-object p1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object p2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 1979
    invoke-direct {p0}, Lcom/kakaogame/idp/KGFacebookAuth;->autoLogin()Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1989
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 1999
    sget-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 2009
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    .line 2019
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1989
    :cond_0
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public getAccessToken(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 1719
    sget-object p1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {p1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalIdpProfile()Lcom/kakaogame/KGIdpProfile;
    .locals 5

    .line 2719
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2729
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 2739
    sget-object v2, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v2}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const v3, 0x6d0bddd0

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x543ec9ca

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    .line 2749
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x33656483

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    .line 2759
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, -0x451ea8af

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    .line 2769
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 2789
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x5d127217

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, -0x2245723c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 2799
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2809
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x22575276

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d0e49d0

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    .line 2819
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getGraphDomain()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    :cond_1
    iget-object v2, p0, Lcom/kakaogame/idp/KGFacebookAuth;->profile:Lcom/facebook/Profile;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, -0x451eea5f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    sget-object v2, Lcom/facebook/internal/ImageRequest;->Companion:Lcom/facebook/internal/ImageRequest$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpUserId()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x32

    invoke-virtual {v2, v0, v3, v3}, Lcom/facebook/internal/ImageRequest$Companion;->getProfilePictureUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x5d1688c7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2859
    new-instance v0, Lcom/kakaogame/KGFacebookProfile;

    invoke-direct {v0, v1}, Lcom/kakaogame/KGFacebookProfile;-><init>(Ljava/util/Map;)V

    check-cast v0, Lcom/kakaogame/KGIdpProfile;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public idpLogin(Landroid/app/Activity;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 5
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

    const-string p2, "idpLoginResult: "

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x6d0e4248

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x451b377f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :try_start_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0, p3, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 1239
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1259
    invoke-direct {p0}, Lcom/kakaogame/idp/KGFacebookAuth;->autoLogin()Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1269
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 1279
    sget-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 1289
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    .line 1299
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1269
    :cond_0
    invoke-virtual {p2, p3, v0, v1, v3}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    return-object p1

    .line 1349
    :cond_1
    new-instance v0, Lcom/kakaogame/idp/KGFacebookAuth$idpLogin$idpLoginResult$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kakaogame/idp/KGFacebookAuth$idpLogin$idpLoginResult$1;-><init>(Lcom/kakaogame/idp/KGFacebookAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    .line 1379
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    sget-object p2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 1399
    sget-object v0, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 1409
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    .line 1419
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1389
    :cond_2
    invoke-virtual {p2, p3, v0, v1, v3}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 1439
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1449
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1469
    :cond_3
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/facebook/login/LoginResult;

    .line 1489
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/idp/KGFacebookAuth;->accessToken:Lcom/facebook/AccessToken;

    .line 1499
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 1509
    iget-object p2, p0, Lcom/kakaogame/idp/KGFacebookAuth;->accessToken:Lcom/facebook/AccessToken;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p2

    .line 1519
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0, p3, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 1529
    sget-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/idp/IdpAccount$Companion;->createFacebookAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p1

    .line 1539
    invoke-direct {p0}, Lcom/kakaogame/idp/KGFacebookAuth;->loadProfile()Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 1549
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 1559
    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_PROFILE:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 1569
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v3

    .line 1579
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1549
    :cond_4
    invoke-virtual {v0, p3, v1, v3, v4}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 1599
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1609
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1629
    :cond_5
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/Profile;

    iput-object p2, p0, Lcom/kakaogame/idp/KGFacebookAuth;->profile:Lcom/facebook/Profile;

    .line 1639
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1659
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, p3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1669
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public initialize(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 5
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

    const v0, -0x451b377f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x22409d14

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/kakaogame/KGAuthActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/kakaogame/util/AndroidManifestUtil;->checkActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xbb8

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 469
    :cond_0
    sget-object v2, Lcom/kakaogame/idp/KGFacebookAuth;->permissions:Ljava/util/List;

    const-string v3, "public_profile"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "email"

    .line 479
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    move-object v3, p1

    check-cast v3, Landroid/content/Context;

    const-string v4, "facebook_read_pemissions"

    invoke-static {v3, v4}, Lcom/kakaogame/util/ResourceUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-static {v3}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 529
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 559
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 579
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public logout()Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2419
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x6d0d8e58

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x451b377f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    :try_start_0
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 2449
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2469
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2479
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public unregister()Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2529
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451b377f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5438ed52

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Lcom/kakaogame/idp/KGFacebookAuth;->logout()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
