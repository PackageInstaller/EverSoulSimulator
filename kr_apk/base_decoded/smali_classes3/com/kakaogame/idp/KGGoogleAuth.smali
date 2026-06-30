.class public final Lcom/kakaogame/idp/KGGoogleAuth;
.super Ljava/lang/Object;
.source "KGGoogleAuth.kt"

# interfaces
.implements Lcom/kakaogame/idp/IdpAuthHandler;
.implements Lcom/kakaogame/idp/IdpAuthExHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/idp/KGGoogleAuth$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGGoogleAuth.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGGoogleAuth.kt\ncom/kakaogame/idp/KGGoogleAuth\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,388:1\n314#2,11:389\n*S KotlinDebug\n*F\n+ 1 KGGoogleAuth.kt\ncom/kakaogame/idp/KGGoogleAuth\n*L\n196#1:389,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 +2\u00020\u00012\u00020\u0002:\u0001+B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J*\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0002J\u001e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010\u001cJ*\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010\u001cJ\u001e\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0082@\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016J\u0016\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0082@\u00a2\u0006\u0002\u0010#J\u0010\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016J\u0016\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0082@\u00a2\u0006\u0002\u0010#J\u0014\u0010*\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\u0004\u0018\u00010\'8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/kakaogame/idp/KGGoogleAuth;",
        "Lcom/kakaogame/idp/IdpAuthHandler;",
        "Lcom/kakaogame/idp/IdpAuthExHandler;",
        "<init>",
        "()V",
        "activity",
        "Landroid/app/Activity;",
        "serverClientId",
        "",
        "permissions",
        "",
        "credentialManager",
        "Landroidx/credentials/CredentialManager;",
        "accessToken",
        "initialize",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "idpLogin",
        "Lcom/kakaogame/idp/IdpAccount;",
        "extras",
        "traceJobId",
        "",
        "handleSignIn",
        "result",
        "Landroidx/credentials/GetCredentialResponse;",
        "getIdpID",
        "idToken",
        "signIn",
        "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkAuth",
        "authData",
        "showLoginAlertDialog",
        "silentSignIn",
        "logout",
        "signOut",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unregister",
        "revokeAccess",
        "localIdpProfile",
        "Lcom/kakaogame/KGIdpProfile;",
        "getLocalIdpProfile",
        "()Lcom/kakaogame/KGIdpProfile;",
        "getAccessToken",
        "Companion",
        "idp_google_release"
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
.field public static final Companion:Lcom/kakaogame/idp/KGGoogleAuth$Companion;

.field private static final TAG:Ljava/lang/String; = "KGGoogleAuth"

.field private static final validationUri:Ljava/lang/String; = "v3/auth/getGoogleIdpId"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private credentialManager:Landroidx/credentials/CredentialManager;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverClientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/idp/KGGoogleAuth$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/idp/KGGoogleAuth$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/idp/KGGoogleAuth;->Companion:Lcom/kakaogame/idp/KGGoogleAuth$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 519
    iput-object v0, p0, Lcom/kakaogame/idp/KGGoogleAuth;->serverClientId:Ljava/lang/String;

    .line 529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/kakaogame/idp/KGGoogleAuth;->permissions:Ljava/util/List;

    .line 549
    iput-object v0, p0, Lcom/kakaogame/idp/KGGoogleAuth;->accessToken:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCredentialManager$p(Lcom/kakaogame/idp/KGGoogleAuth;)Landroidx/credentials/CredentialManager;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/kakaogame/idp/KGGoogleAuth;->credentialManager:Landroidx/credentials/CredentialManager;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getServerClientId$p(Lcom/kakaogame/idp/KGGoogleAuth;)Ljava/lang/String;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/kakaogame/idp/KGGoogleAuth;->serverClientId:Ljava/lang/String;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$handleSignIn(Lcom/kakaogame/idp/KGGoogleAuth;Landroidx/credentials/GetCredentialResponse;)Lcom/kakaogame/KGResult;
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Lcom/kakaogame/idp/KGGoogleAuth;->handleSignIn(Landroidx/credentials/GetCredentialResponse;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$revokeAccess(Lcom/kakaogame/idp/KGGoogleAuth;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Lcom/kakaogame/idp/KGGoogleAuth;->revokeAccess(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$showLoginAlertDialog(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/idp/KGGoogleAuth;->showLoginAlertDialog(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$signIn(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/idp/KGGoogleAuth;->signIn(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$signOut(Lcom/kakaogame/idp/KGGoogleAuth;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Lcom/kakaogame/idp/KGGoogleAuth;->signOut(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$silentSignIn(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/idp/KGGoogleAuth;->silentSignIn(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final getIdpID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    const-string/jumbo v1, "v3/auth/getGoogleIdpId"

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "appId"

    .line 1789
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "appSecret"

    .line 1799
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/config/Configuration;->getAppSecret()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "Content-Type"

    const-string v4, "application/json;charset=UTF-8"

    .line 1809
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 1779
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "idToken"

    .line 1829
    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 1759
    invoke-static {v1, v2, p1}, Lcom/kakaogame/server/openapi/OpenApiService;->requestOpenApi(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1849
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1859
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/kakaogame/util/json/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.kakaogame.util.json.JSONObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/kakaogame/util/json/JSONObject;

    const-string v1, "idpId"

    .line 1869
    invoke-virtual {p1, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final handleSignIn(Landroidx/credentials/GetCredentialResponse;)Lcom/kakaogame/KGResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/GetCredentialResponse;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;"
        }
    .end annotation

    .line 1129
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialResponse;->getCredential()Landroidx/credentials/Credential;

    move-result-object p1

    .line 1139
    instance-of v0, p1, Landroidx/credentials/PublicKeyCredential;

    const/16 v1, 0x1389

    if-eqz v0, :cond_0

    .line 1149
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_2

    .line 1179
    :cond_0
    instance-of v0, p1, Landroidx/credentials/PasswordCredential;

    if-eqz v0, :cond_1

    .line 1189
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_2

    .line 1219
    :cond_1
    instance-of v0, p1, Landroidx/credentials/CustomCredential;

    const v1, -0x22409d8c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfaa

    const v3, 0x543b5772

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_8

    .line 1229
    invoke-virtual {p1}, Landroidx/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v0

    const v4, -0x451b3977

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0xfa2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0x3360f403

    invoke-static {v7}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_4

    .line 1249
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->Companion:Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

    .line 1259
    invoke-virtual {p1}, Landroidx/credentials/Credential;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;->createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p1

    .line 1279
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakaogame/idp/KGGoogleAuth;->getIdpID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    if-eqz v5, :cond_3

    .line 1309
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_2

    .line 1329
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/idp/KGGoogleAuth;->accessToken:Ljava/lang/String;

    .line 1349
    sget-object p1, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    iget-object v1, p0, Lcom/kakaogame/idp/KGGoogleAuth;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/idp/IdpAccount$Companion;->createGoogleAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p1

    .line 1359
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/libraries/identity/googleid/GoogleIdTokenParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 1389
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v3, v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1399
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 1419
    :cond_4
    invoke-virtual {p1}, Landroidx/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v0

    const v8, 0x3360f693

    invoke-static {v8}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1439
    :try_start_1
    sget-object v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->Companion:Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

    .line 1449
    invoke-virtual {p1}, Landroidx/credentials/Credential;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;->createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p1

    .line 1469
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakaogame/idp/KGGoogleAuth;->getIdpID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    if-eqz v5, :cond_6

    .line 1499
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 1519
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->getIdToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/idp/KGGoogleAuth;->accessToken:Ljava/lang/String;

    .line 1539
    sget-object p1, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    iget-object v1, p0, Lcom/kakaogame/idp/KGGoogleAuth;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/idp/IdpAccount$Companion;->createGoogleAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p1

    .line 1549
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/android/libraries/identity/googleid/GoogleIdTokenParsingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1579
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v3, v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1589
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 1619
    :cond_7
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 1679
    :cond_8
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_2
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final revokeAccess(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3669
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 3679
    new-instance v2, Landroidx/credentials/ClearCredentialStateRequest;

    invoke-direct {v2}, Landroidx/credentials/ClearCredentialStateRequest;-><init>()V

    .line 3689
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Lcom/kakaogame/idp/KGGoogleAuth$revokeAccess$2$1;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v2, v1, v7}, Lcom/kakaogame/idp/KGGoogleAuth$revokeAccess$2$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroidx/credentials/ClearCredentialStateRequest;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3729
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v3, 0xfaa

    invoke-virtual {v2, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 3669
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

.method private final showLoginAlertDialog(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 2809
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 2819
    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    sget v4, Lcom/kakaogame/google/R$string;->kakao_game_google_login_alert_popup_title:I

    invoke-static {v3, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 2829
    sget v4, Lcom/kakaogame/google/R$string;->kakao_game_google_login_alert_popup_content:I

    invoke-static {v3, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 2839
    sget v4, Lcom/kakaogame/google/R$string;->kakao_game_google_login_alert_popup_close:I

    invoke-static {v3, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 2849
    sget v5, Lcom/kakaogame/google/R$string;->kakao_game_google_login_alert_popup_continue:I

    invoke-static {v3, v5}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 2859
    new-instance v15, Lcom/kakaogame/ui/DialogManager$Settings;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1ffa

    const/16 v21, 0x0

    move-object v5, v15

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    invoke-direct/range {v5 .. v20}, Lcom/kakaogame/ui/DialogManager$Settings;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2879
    new-instance v5, Lcom/kakaogame/idp/KGGoogleAuth$showLoginAlertDialog$2$1;

    invoke-direct {v5, v2}, Lcom/kakaogame/idp/KGGoogleAuth$showLoginAlertDialog$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v6, v22

    invoke-virtual {v6, v4, v5}, Lcom/kakaogame/ui/DialogManager$Settings;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2909
    new-instance v4, Lcom/kakaogame/idp/KGGoogleAuth$showLoginAlertDialog$2$2;

    invoke-direct {v4, v2}, Lcom/kakaogame/idp/KGGoogleAuth$showLoginAlertDialog$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v3, v4}, Lcom/kakaogame/ui/DialogManager$Settings;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2939
    new-instance v3, Lcom/kakaogame/idp/KGGoogleAuth$showLoginAlertDialog$2$3;

    invoke-direct {v3, v2}, Lcom/kakaogame/idp/KGGoogleAuth$showLoginAlertDialog$2$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v6, v3}, Lcom/kakaogame/ui/DialogManager$Settings;->setCancelable(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2969
    sget-object v2, Lcom/kakaogame/ui/DialogManager;->INSTANCE:Lcom/kakaogame/ui/DialogManager;

    invoke-virtual {v2, v0, v6}, Lcom/kakaogame/ui/DialogManager;->showAlertDialog(Landroid/app/Activity;Lcom/kakaogame/ui/DialogManager$Settings;)V

    .line 2809
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final signIn(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3909
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 3969
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3979
    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/CancellableContinuation;

    .line 1979
    new-instance v1, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;

    invoke-static {p0}, Lcom/kakaogame/idp/KGGoogleAuth;->access$getServerClientId$p(Lcom/kakaogame/idp/KGGoogleAuth;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;-><init>(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {v1}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;->build()Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption;

    move-result-object v1

    .line 2009
    new-instance v2, Landroidx/credentials/GetCredentialRequest$Builder;

    invoke-direct {v2}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    .line 2019
    check-cast v1, Landroidx/credentials/CredentialOption;

    invoke-virtual {v2, v1}, Landroidx/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;

    move-result-object v1

    .line 2029
    invoke-virtual {v1}, Landroidx/credentials/GetCredentialRequest$Builder;->build()Landroidx/credentials/GetCredentialRequest;

    move-result-object v6

    .line 2049
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v2, Lcom/kakaogame/idp/KGGoogleAuth$signIn$2$1;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/kakaogame/idp/KGGoogleAuth$signIn$2$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Landroidx/credentials/GetCredentialRequest;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/coroutines/Continuation;)V

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3989
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3899
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final signOut(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3449
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 3459
    new-instance v2, Landroidx/credentials/ClearCredentialStateRequest;

    invoke-direct {v2}, Landroidx/credentials/ClearCredentialStateRequest;-><init>()V

    .line 3469
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Lcom/kakaogame/idp/KGGoogleAuth$signOut$2$1;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v2, v1, v7}, Lcom/kakaogame/idp/KGGoogleAuth$signOut$2$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroidx/credentials/ClearCredentialStateRequest;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3449
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final silentSignIn(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/idp/IdpAccount;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3009
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 3019
    new-instance v1, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;

    invoke-direct {v1}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;-><init>()V

    const/4 v2, 0x0

    .line 3029
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->setFilterByAuthorizedAccounts(Z)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;

    move-result-object v1

    .line 3039
    iget-object v2, p0, Lcom/kakaogame/idp/KGGoogleAuth;->serverClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->setServerClientId(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 3049
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->setAutoSelectEnabled(Z)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;

    move-result-object v1

    .line 3059
    invoke-virtual {v1}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->build()Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;

    move-result-object v1

    .line 3079
    new-instance v2, Landroidx/credentials/GetCredentialRequest$Builder;

    invoke-direct {v2}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    .line 3089
    check-cast v1, Landroidx/credentials/CredentialOption;

    invoke-virtual {v2, v1}, Landroidx/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;

    move-result-object v1

    .line 3099
    invoke-virtual {v1}, Landroidx/credentials/GetCredentialRequest$Builder;->build()Landroidx/credentials/GetCredentialRequest;

    move-result-object v5

    .line 3119
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/kakaogame/idp/KGGoogleAuth$silentSignIn$2$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Landroidx/credentials/GetCredentialRequest;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 3009
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public checkAuth(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;
    .locals 9
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

    .line 2289
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x3360fe3b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543b5772

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    :try_start_0
    sget v0, Lcom/kakaogame/core/CoreManager;->testGoogleErrorCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 2319
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    const-string p2, "google"

    sget p3, Lcom/kakaogame/core/CoreManager;->testGoogleErrorCode:I

    invoke-virtual {p1, p2, p3}, Lcom/kakaogame/infodesk/InfodeskHelper;->isZrtError(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "Set Google error code for test."

    if-eqz p1, :cond_0

    .line 2329
    :try_start_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const p3, 0x30d40

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_2

    .line 2379
    :cond_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0x191

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_2

    .line 2439
    :cond_1
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0, p3, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 2449
    new-instance v0, Lcom/kakaogame/idp/KGGoogleAuth$checkAuth$signInResult$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kakaogame/idp/KGGoogleAuth$checkAuth$signInResult$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGResult;

    .line 2479
    sget-object v4, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 2489
    sget-object v5, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 2499
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v6

    .line 2509
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2479
    :cond_2
    invoke-virtual {v4, p3, v5, v6, v7}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 2539
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 2549
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "checkAuth: signInResult is success"

    invoke-virtual {p3, v2, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2559
    invoke-virtual {p2}, Lcom/kakaogame/idp/IdpAccount;->getIdpUserId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    move-object p3, v1

    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakaogame/idp/IdpAccount;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/kakaogame/idp/IdpAccount;->getIdpUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 2569
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v0, "checkAuth: authData.idpUserId is not same with signInResult.idpUserId"

    invoke-virtual {p3, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    new-instance p3, Lcom/kakaogame/idp/KGGoogleAuth$checkAuth$dialogResult$1;

    invoke-direct {p3, p0, p1, v1}, Lcom/kakaogame/idp/KGGoogleAuth$checkAuth$dialogResult$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p3, v3, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kakaogame/KGResult;

    .line 2609
    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 2629
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfaa

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2659
    :cond_5
    move-object v3, p0

    check-cast v3, Lcom/kakaogame/idp/IdpAuthHandler;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/kakaogame/idp/IdpAuthHandler$DefaultImpls;->checkAuth$default(Lcom/kakaogame/idp/IdpAuthHandler;Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;IILjava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2689
    :cond_6
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/kakaogame/core/CoreManager;->setLoggedInWithCredentialManager(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    move-object p1, v0

    :goto_2
    return-object p1

    :catch_0
    move-exception p1

    .line 2739
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, p3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2749
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getAccessToken(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 3869
    iget-object p1, p0, Lcom/kakaogame/idp/KGGoogleAuth;->accessToken:Ljava/lang/String;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public getLocalIdpProfile()Lcom/kakaogame/KGIdpProfile;
    .locals 4

    .line 3779
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    const v2, 0x6d0bddd0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x543ec93a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    .line 3799
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x33656483

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 3809
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, -0x451ea8af

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 3819
    invoke-virtual {v0}, Lcom/kakaogame/idp/IdpAccount;->getIdpAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 3789
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 3829
    new-instance v1, Lcom/kakaogame/KGGoogleProfile;

    invoke-direct {v1, v0}, Lcom/kakaogame/KGGoogleProfile;-><init>(Ljava/util/Map;)V

    check-cast v1, Lcom/kakaogame/KGIdpProfile;

    return-object v1

    .array-data 1
    .end array-data
.end method

.method public idpLogin(Landroid/app/Activity;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 6
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

    const-string p2, "signInResult: "

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x6d0e4248

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543b5772

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :try_start_0
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v0, p3, v1}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 939
    new-instance v0, Lcom/kakaogame/idp/KGGoogleAuth$idpLogin$signInResult$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kakaogame/idp/KGGoogleAuth$idpLogin$signInResult$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/KGResult;

    .line 969
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 979
    sget-object v3, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_IDP_LOGIN:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 989
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    .line 999
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v5

    .line 969
    :cond_0
    invoke-virtual {v1, p3, v3, v4, v5}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 1019
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1039
    sget-object p2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kakaogame/core/CoreManager;->setLoggedInWithCredentialManager(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1069
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, p3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1079
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

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

    .line 579
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x33655853

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543b5772

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :try_start_0
    iput-object p1, p0, Lcom/kakaogame/idp/KGGoogleAuth;->activity:Landroid/app/Activity;

    .line 609
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-string v1, "kg_google_web_app_client_id"

    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/idp/KGGoogleAuth;->serverClientId:Ljava/lang/String;

    .line 639
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 649
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string v0, "kg_google_web_app_client_id is not defined in res/values/kakao_game_sdk_google_auth.xml"

    const/16 v1, 0xbb8

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 699
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-string v3, "google_pemissions"

    invoke-static {v0, v3}, Lcom/kakaogame/util/ResourceUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/idp/KGGoogleAuth;->permissions:Ljava/util/List;

    const-string v0, "gsiToken"

    .line 729
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 739
    sget-object v1, Lcom/kakaogame/auth/AuthService$Settings;->INSTANCE:Lcom/kakaogame/auth/AuthService$Settings;

    invoke-virtual {v1}, Lcom/kakaogame/auth/AuthService$Settings;->getLoginParamMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 749
    sget-object v0, Landroidx/credentials/CredentialManager;->Companion:Landroidx/credentials/CredentialManager$Companion;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroidx/credentials/CredentialManager$Companion;->create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/idp/KGGoogleAuth;->credentialManager:Landroidx/credentials/CredentialManager;

    .line 759
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 809
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 819
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
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

    .line 3319
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x6d0d8e58

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543b5772

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    :try_start_0
    new-instance v0, Lcom/kakaogame/idp/KGGoogleAuth$logout$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kakaogame/idp/KGGoogleAuth$logout$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3369
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->setLoggedInWithCredentialManager(Z)V

    .line 3379
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3399
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3409
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public unregister()Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 3539
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5438ed52

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543b5772

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    :try_start_0
    new-instance v0, Lcom/kakaogame/idp/KGGoogleAuth$unregister$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kakaogame/idp/KGGoogleAuth$unregister$1;-><init>(Lcom/kakaogame/idp/KGGoogleAuth;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3589
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->setLoggedInWithCredentialManager(Z)V

    .line 3599
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3619
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3629
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method
