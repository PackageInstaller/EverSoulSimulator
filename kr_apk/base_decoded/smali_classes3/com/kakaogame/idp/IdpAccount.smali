.class public final Lcom/kakaogame/idp/IdpAccount;
.super Lcom/kakaogame/MapObject;
.source "IdpAccount.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/idp/IdpAccount$Companion;,
        Lcom/kakaogame/idp/IdpAccount$IdpCode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdpAccount.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdpAccount.kt\ncom/kakaogame/idp/IdpAccount\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,165:1\n1#2:166\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0018\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0002#$B\u001f\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0016J\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u0000R\u0011\u0010\u0008\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\nR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\nR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\nR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\nR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\nR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\nR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\n\u00a8\u0006%"
    }
    d2 = {
        "Lcom/kakaogame/idp/IdpAccount;",
        "Lcom/kakaogame/MapObject;",
        "m",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "idpCode",
        "getIdpCode",
        "()Ljava/lang/String;",
        "idpUserId",
        "getIdpUserId",
        "idpAccessToken",
        "getIdpAccessToken",
        "idpRefreshToken",
        "getIdpRefreshToken",
        "redirectUri",
        "getRedirectUri",
        "tokenSecret",
        "getTokenSecret",
        "consumerKey",
        "getConsumerKey",
        "consumerSecret",
        "getConsumerSecret",
        "idpLoginType",
        "getIdpLoginType",
        "serverAuthToken",
        "getServerAuthToken",
        "put",
        "",
        "key",
        "value",
        "update",
        "newData",
        "IdpCode",
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
.field public static final Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final KEY_CONSUMER_KEY:Ljava/lang/String; = "consumerKey"

.field public static final KEY_CONSUMER_SECRET:Ljava/lang/String; = "consumerSecret"

.field public static final KEY_IDP_CODE:Ljava/lang/String; = "idpCode"

.field public static final KEY_IDP_LOGIN_TYPE:Ljava/lang/String; = "idpLoginType"

.field public static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirectUri"

.field public static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field public static final KEY_SERVER_AUTH_TOKEN:Ljava/lang/String; = "serverAuthToken"

.field public static final KEY_TOKEN_SECRET:Ljava/lang/String; = "tokenSecret"

.field public static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field public static final LOGIN_TYPE_INSTALLED_APP:Ljava/lang/String; = "INSTALLED_APP"

.field public static final LOGIN_TYPE_INSTALLED_WEB:Ljava/lang/String; = "INSTALLED_WEB"

.field public static final LOGIN_TYPE_NOT_INSTALLED_WEB:Ljava/lang/String; = "NOT_INSTALLED_WEB"

.field private static final TAG:Ljava/lang/String; = "IdpAccount"

.field private static final serialVersionUID:J = -0x467e7b2371ee5bcfL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/idp/IdpAccount$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/idp/IdpAccount$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
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

    .line 79
    invoke-direct {p0, p1}, Lcom/kakaogame/MapObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final createDeviceAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/idp/IdpAccount$Companion;->createDeviceAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final createFacebookAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/idp/IdpAccount$Companion;->createFacebookAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final createGamaniaAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/idp/IdpAccount$Companion;->createGamaniaAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final createGoogleAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/idp/IdpAccount$Companion;->createGoogleAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final createSIWAAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/kakaogame/idp/IdpAccount$Companion;->createSIWAAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final createTwitterAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/idp/IdpAccount;->Companion:Lcom/kakaogame/idp/IdpAccount$Companion;

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/kakaogame/idp/IdpAccount$Companion;->createTwitterAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/idp/IdpAccount;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getConsumerKey()Ljava/lang/String;
    .locals 1

    const v0, 0x5d12618f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getConsumerSecret()Ljava/lang/String;
    .locals 1

    const v0, -0x22408024

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getIdpAccessToken()Ljava/lang/String;
    .locals 2

    const v0, 0x5d13f4d7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244b41c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getIdpCode()Ljava/lang/String;
    .locals 2

    const v0, 0x6d0bddd0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244b41c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getIdpLoginType()Ljava/lang/String;
    .locals 2

    const v0, 0x7d72497d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getIdpRefreshToken()Ljava/lang/String;
    .locals 1

    const v0, 0x5d109037

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getIdpUserId()Ljava/lang/String;
    .locals 2

    const v0, -0x4519b78f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244b41c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getRedirectUri()Ljava/lang/String;
    .locals 1

    const v0, 0x225743e6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getServerAuthToken()Ljava/lang/String;
    .locals 1

    const v0, 0x7d70bbd5    # 1.9999375E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getTokenSecret()Ljava/lang/String;
    .locals 1

    const v0, 0x543b480a    # 3.21747E12f

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/kakaogame/idp/IdpAccount;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const v0, 0x543dc3ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-super {p0, p1, p2}, Lcom/kakaogame/MapObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final update(Lcom/kakaogame/idp/IdpAccount;)V
    .locals 3

    const v0, 0x225584be

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getContent()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getContent()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {p0, v1, v2}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method
