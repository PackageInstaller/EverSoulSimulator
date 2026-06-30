.class public final Lcom/kakaogame/auth/AuthImpl;
.super Ljava/lang/Object;
.source "AuthImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/auth/AuthImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthImpl.kt\ncom/kakaogame/auth/AuthImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,835:1\n1#2:836\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u001e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J.\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J \u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J0\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001e\u001a\u00020\u0008J8\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016J2\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J6\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0019H\u0002J\u0016\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014J \u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J0\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u0008J:\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J:\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J*\u0010+\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\"\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010-\u001a\u00020\u0008H\u0007J \u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u0008H\u0007JD\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u00100\u001a\u0004\u0018\u00010\"2\u000e\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001020\u00112\u0006\u0010#\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u0007J\u0008\u00106\u001a\u00020\u000fH\u0002J \u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u00108\u001a\u000209H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R&\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00088\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\t\u0010\u000bR&\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00088\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000c\u0010\u000bR\u0016\u00103\u001a\u0004\u0018\u00010\"8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105\u00a8\u0006:"
    }
    d2 = {
        "Lcom/kakaogame/auth/AuthImpl;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "LOCATION_US",
        "value",
        "",
        "isLoginProcess",
        "isLoginProcess$annotations",
        "()Z",
        "isConnectProcess",
        "isConnectProcess$annotations",
        "initialize",
        "",
        "loginWithUI",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "activity",
        "Landroid/app/Activity;",
        "traceJobId",
        "",
        "showLogin",
        "idpCodes",
        "",
        "showCOPPA",
        "loginWithoutUI",
        "idpCode",
        "extras",
        "skipStart",
        "loginImpl",
        "loginInternal",
        "account",
        "Lcom/kakaogame/idp/IdpAccount;",
        "saveAccount",
        "getAllowedIdpList",
        "connectWithUI",
        "connectWithUIImpl",
        "connectWithoutUI",
        "logoutAlreadyUsedIdp",
        "connectWithoutUIImpl",
        "connectImpl",
        "connectInternal",
        "logout",
        "showUI",
        "unregister",
        "handleLoginResult",
        "authData",
        "loginResult",
        "Lcom/kakaogame/auth/LoginData;",
        "idpAccount",
        "getIdpAccount",
        "()Lcom/kakaogame/idp/IdpAccount;",
        "onLogout",
        "chooseIdpAccount",
        "idpChoiceMode",
        "Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;",
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
.field public static final INSTANCE:Lcom/kakaogame/auth/AuthImpl;

.field private static final LOCATION_US:Ljava/lang/String; = "us"

.field private static final TAG:Ljava/lang/String; = "AuthImpl"

.field private static isConnectProcess:Z

.field private static isLoginProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/auth/AuthImpl;

    invoke-direct {v0}, Lcom/kakaogame/auth/AuthImpl;-><init>()V

    sput-object v0, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final chooseIdpAccount(Landroid/app/Activity;Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;)Lcom/kakaogame/KGResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543966aa

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d706475

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x45190a47

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x543d14da

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x2242af7c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8089
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x6d0c7b48

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x543965a2

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8109
    :try_start_0
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getTempAccount()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v3

    .line 8119
    sget-object v4, Lcom/kakaogame/auth/AuthImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/kakaogame/KGSessionForCustomUI$KGIdpChoiceMode;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 8179
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->logout()Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 8189
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v5, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8199
    sget-object v6, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, v3

    invoke-static/range {v6 .. v12}, Lcom/kakaogame/auth/AuthImpl;->loginInternal$default(Lcom/kakaogame/auth/AuthImpl;Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;ZIILjava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 8209
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8219
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8229
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 8259
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/kakaogame/idp/ChannelConnectHelper;->checkGoogleGame(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)V

    goto :goto_0

    .line 8119
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 8139
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, v3}, Lcom/kakaogame/idp/IdpAuthManager;->logout(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 8149
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8289
    :goto_0
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/kakaogame/auth/AuthDataManager;->clearTempAccount(Landroid/content/Context;)V

    .line 8299
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8319
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p1, v5, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8329
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final connectImpl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543965a2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x45190a47

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x2242aee4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x225569de

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x543d14da

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x6d0bddd0

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5229
    :try_start_0
    invoke-static {p0, p1, p2, p4}, Lcom/kakaogame/idp/IdpAuthManager;->idpLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 5289
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5299
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5309
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 5329
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/idp/IdpAccount;

    .line 5339
    sget-object p2, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    invoke-direct {p2, p0, p1, p4}, Lcom/kakaogame/auth/AuthImpl;->connectInternal(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 5389
    sget-object p4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5399
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p4

    if-eqz p4, :cond_2

    if-nez p3, :cond_1

    .line 5409
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p3

    const/16 p4, 0x196

    if-ne p3, p4, :cond_1

    .line 5419
    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/kakaogame/auth/AuthDataManager;->setTempAccount(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;)V

    goto :goto_0

    .line 5439
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/kakaogame/idp/IdpAuthManager;->logout(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 5449
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5469
    :goto_0
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 5509
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/kakaogame/idp/ChannelConnectHelper;->checkGoogleGame(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)V

    .line 5519
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5539
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    move-object p3, p0

    check-cast p3, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, p2, p3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5549
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_1
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final connectInternal(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/idp/IdpAccount;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, -0x2242aee4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d1049cf

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 5629
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x5d10480f

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x543965a2

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5659
    :try_start_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "account is null"

    const/16 p3, 0xfa0

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 5679
    :cond_0
    sget-object v2, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5699
    sget-object v2, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;->CONNECT:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    invoke-static {p1, p2, v2, p3}, Lcom/kakaogame/auth/agreement/AgreementManager;->checkAgreement(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 5709
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5719
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5729
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 5759
    :cond_1
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, p3}, Lcom/kakaogame/core/CoreManager;->connect(Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 5809
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5819
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5829
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 5849
    :cond_2
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/kakaogame/auth/agreement/AgreementManager;->saveAgreementInfo(Landroid/content/Context;I)Lcom/kakaogame/KGResult;

    .line 5859
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5879
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2, v4, p3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5889
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final connectWithUIImpl(Landroid/app/Activity;I)Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 3919
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x2242a894

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543965a2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3939
    :try_start_0
    sput-boolean v0, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 3949
    sput-boolean v0, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    .line 3969
    invoke-direct {p0}, Lcom/kakaogame/auth/AuthImpl;->getAllowedIdpList()Ljava/util/List;

    move-result-object v3

    .line 3979
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3989
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "idpCodes is empty"

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4309
    :goto_0
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 4319
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    return-object p1

    .line 4009
    :cond_0
    :try_start_1
    new-instance v4, Lcom/kakaogame/auth/AuthImpl$connectWithUIImpl$connectCheckResult$1;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/kakaogame/auth/AuthImpl$connectWithUIImpl$connectCheckResult$1;-><init>(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v0, v5}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kakaogame/KGResult;

    .line 4069
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4079
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 4099
    :cond_1
    new-instance v4, Lcom/kakaogame/auth/AuthImpl$connectWithUIImpl$connectResult$1;

    invoke-direct {v4, p1, v3, p2, v5}, Lcom/kakaogame/auth/AuthImpl$connectWithUIImpl$connectResult$1;-><init>(Landroid/app/Activity;Ljava/util/List;ILkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v4, v0, v5}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakaogame/KGResult;

    .line 4179
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4189
    sget-object v0, Lcom/kakaogame/core/CoreImpl;->INSTANCE:Lcom/kakaogame/core/CoreImpl;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreImpl;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4199
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 4209
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    .line 4219
    invoke-static {p1}, Lcom/kakaogame/core/CoreImpl;->resume(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    .line 4239
    :cond_2
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 4259
    :cond_3
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4279
    :try_start_2
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, v0, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4289
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xfa1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4309
    :goto_1
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 4319
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    return-object p1

    .line 4309
    :goto_2
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 4319
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    throw p1

    .array-data 1
    .end array-data
.end method

.method private final connectWithoutUIImpl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 4779
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x543960fa

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x543965a2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4799
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, -0x2242aa6c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    const/4 v1, 0x1

    .line 4819
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 4829
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    const/4 v1, 0x0

    .line 4849
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/kakaogame/auth/AuthImpl;->connectImpl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 4919
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4929
    sget-object p3, Lcom/kakaogame/core/CoreImpl;->INSTANCE:Lcom/kakaogame/core/CoreImpl;

    invoke-virtual {p3}, Lcom/kakaogame/core/CoreImpl;->isPaused()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4939
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 4949
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    .line 4959
    invoke-static {p1}, Lcom/kakaogame/core/CoreImpl;->resume(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    .line 4989
    :cond_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p3

    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5039
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 5049
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide p3

    invoke-static {p2, p1, p3, p4}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 5059
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 5069
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5009
    :try_start_1
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, p3, p4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5019
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xfa1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5039
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 5049
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lcom/kakaogame/KGResult;

    goto :goto_0

    :goto_1
    return-object p1

    .line 5039
    :goto_2
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 5049
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    move-object p4, p3

    check-cast p4, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide p4

    invoke-static {p2, p3, p4, p5}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 5059
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 5069
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final getAllowedIdpList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 3589
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSupportedIdpCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3599
    sget-object v3, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    invoke-virtual {v3, v2}, Lcom/kakaogame/core/FeatureManager;->allowConnectTo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3609
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final getIdpAccount()Lcom/kakaogame/idp/IdpAccount;
    .locals 4

    .line 7949
    :try_start_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7979
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const v3, 0x543965a2

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final handleLoginResult(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/KGResult;ZI)Lcom/kakaogame/KGResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/idp/IdpAccount;",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/auth/LoginData;",
            ">;ZI)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x22556a76

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x4519131f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d706475

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x6d0c6160

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x543d14da

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, -0x2242b45c

    invoke-static {v4}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7049
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x54397f32

    invoke-static {v6}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x543965a2

    invoke-static {v6}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7059
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    const/16 v5, 0x1ee

    const/16 v7, 0x26ac

    const v8, 0x3362da9b

    invoke-static {v8}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v8

    const v9, -0x4519119f

    invoke-static {v9}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v9

    if-eq v4, v5, :cond_7

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 v4, 0x1cf

    if-nez p1, :cond_0

    .line 7319
    :try_start_0
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 7339
    :cond_0
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/kakaogame/auth/LoginData;

    .line 7349
    new-instance v5, Lcom/kakaogame/auth/AuthImpl$handleLoginResult$showResult$1;

    const/4 v7, 0x0

    invoke-direct {v5, p0, p2, v7}, Lcom/kakaogame/auth/AuthImpl$handleLoginResult$showResult$1;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/LoginData;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    invoke-static {v7, v5, p0, v7}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kakaogame/KGResult;

    .line 7379
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7389
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7409
    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->getPlayerId()Ljava/lang/String;

    move-result-object p0

    .line 7419
    invoke-static {p0, p4}, Lcom/kakaogame/player/LocalPlayerService;->cancelForRemove(Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 7429
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7439
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7449
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 7469
    :cond_1
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v1}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "refreshToken"

    .line 7479
    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->getSiwaRefreshToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7499
    :cond_2
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4}, Lcom/kakaogame/core/CoreManager;->authorize(Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 7549
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7559
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 7569
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 7609
    :cond_3
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object p0

    sget-object p3, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {p3}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 7619
    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->getSiwaRefreshToken()Ljava/lang/String;

    move-result-object p0

    .line 7629
    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->getPlayerId()Ljava/lang/String;

    move-result-object p2

    .line 7639
    sget-object p3, Lcom/kakaogame/auth/AuthService;->INSTANCE:Lcom/kakaogame/auth/AuthService;

    invoke-virtual {p3, p2, p0}, Lcom/kakaogame/auth/AuthService;->revokeSIWA(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 7649
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v6, p0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7679
    :cond_4
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/kakaogame/core/CoreManager;->idpLogout(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 7689
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v6, p0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7699
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 7819
    :pswitch_1
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/auth/LoginData;

    .line 7829
    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/LoginUIManager;->showProtection(Landroid/app/Activity;Lcom/kakaogame/auth/LoginData;)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 7839
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v6, p0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7849
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v7}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 7089
    :pswitch_2
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/kakaogame/auth/LoginData;

    if-nez p1, :cond_5

    .line 7109
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getAccount()Lcom/kakaogame/idp/IdpAccount;

    move-result-object p1

    .line 7149
    :cond_5
    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->isMarketRefund()Z

    move-result p4

    if-eqz p4, :cond_6

    sget-object p4, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p4}, Lcom/kakaogame/infodesk/InfodeskHelper;->getUseCustomMarketRefundUIGooglePlay()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 7159
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/kakaogame/core/CoreManager;->idpLogout(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 7169
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v6, p0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7189
    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->getMarketRefundInfoList()Ljava/util/List;

    move-result-object p0

    .line 7199
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/kakaogame/core/CoreManager;->setMarketRefundInfoList(Ljava/util/List;)V

    .line 7209
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p1, "restrReason"

    .line 7229
    invoke-virtual {p2, p1}, Lcom/kakaogame/auth/LoginData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    const/16 p2, 0xfdc

    .line 7209
    invoke-virtual {p0, p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 7259
    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/LoginUIManager;->showPunishment(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/LoginData;Z)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 7269
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7279
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    .line 7739
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getAccount()Lcom/kakaogame/idp/IdpAccount;

    move-result-object p1

    .line 7759
    :cond_8
    sget-object p2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kakaogame/core/CoreManager;->idpLogout(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 7769
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7779
    invoke-static {p0}, Lcom/kakaogame/auth/view/LoginUIManager;->showRestrictAdolescent(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 7789
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v6, p0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7799
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v7}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 7879
    :goto_1
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p1, v6, p2, p0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7899
    :cond_9
    :goto_2
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1cd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public static synthetic handleLoginResult$default(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/KGResult;ZIILjava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, -0x1

    .line 6959
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kakaogame/auth/AuthImpl;->handleLoginResult(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/KGResult;ZI)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final initialize()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 699
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    new-instance v1, Lcom/kakaogame/auth/AuthImpl$initialize$1;

    invoke-direct {v1}, Lcom/kakaogame/auth/AuthImpl$initialize$1;-><init>()V

    check-cast v1, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/core/CoreManager;->addCoreStateListener(Lcom/kakaogame/core/CoreManager$CoreStateListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final isConnectProcess()Z
    .locals 1

    .line 639
    sget-boolean v0, Lcom/kakaogame/auth/AuthImpl;->isConnectProcess:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isConnectProcess$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final isLoginProcess()Z
    .locals 1

    .line 609
    sget-boolean v0, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isLoginProcess$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loginImpl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/kakaogame/KGResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543965a2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3362dbeb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x225569de

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x543d14da

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x6d0bddd0

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2479
    :try_start_0
    sget-object v3, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2489
    sget-object v3, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    invoke-direct {v3}, Lcom/kakaogame/auth/AuthImpl;->getIdpAccount()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v4

    .line 2499
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2509
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 2529
    :cond_0
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->logout()Lcom/kakaogame/KGResult;

    move-result-object v4

    .line 2539
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2549
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 2569
    :cond_1
    invoke-direct {v3}, Lcom/kakaogame/auth/AuthImpl;->onLogout()V

    .line 2599
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/idp/IdpAuthManager;->idpLogin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 2609
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2629
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 2649
    :cond_3
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/idp/IdpAccount;

    .line 2659
    sget-object v2, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    invoke-static/range {v2 .. v8}, Lcom/kakaogame/auth/AuthImpl;->loginInternal$default(Lcom/kakaogame/auth/AuthImpl;Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;ZIILjava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 2709
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2729
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .line 2769
    :cond_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/kakaogame/idp/ChannelConnectHelper;->checkGoogleGame(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)V

    .line 2779
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2799
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    move-object p3, p0

    check-cast p3, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, p2, p3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2809
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xfa1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final loginInternal(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/idp/IdpAccount;",
            "ZI)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d707f0d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0b61e8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d1049cf

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 2909
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, -0x451910c7

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x543965a2

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 2939
    :try_start_0
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "account is null"

    const/16 p3, 0xfa0

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2959
    :cond_0
    sget-object v3, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v3}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2969
    sget-object v3, Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;->LOGIN:Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;

    invoke-static {p1, p2, v3, p4}, Lcom/kakaogame/auth/agreement/AgreementManager;->checkAgreement(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/agreement/AgreementManager$AgreementCheckType;I)Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 2979
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2999
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 3029
    :cond_1
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/kakaogame/core/CoreManager;->authorize(Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 3079
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3089
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/kakaogame/auth/LoginData;

    invoke-virtual {p2}, Lcom/kakaogame/auth/LoginData;->getPlayer()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3099
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3109
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 3129
    :cond_2
    sget-object p2, Lcom/kakaogame/auth/agreement/AgreementManager;->INSTANCE:Lcom/kakaogame/auth/agreement/AgreementManager;

    move-object p3, p1

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/kakaogame/auth/agreement/AgreementManager;->getAgreementInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 3159
    :goto_0
    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_4

    .line 3169
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string/jumbo p3, "y"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3179
    sget-object p2, Lcom/kakaogame/push/PushPermissionManager;->INSTANCE:Lcom/kakaogame/push/PushPermissionManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/kakaogame/push/PushPermissionManager;->requestPushPermission(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;

    .line 3239
    :cond_4
    sget-object p2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/kakaogame/auth/agreement/AgreementManager;->saveAgreementInfo(Landroid/content/Context;I)Lcom/kakaogame/KGResult;

    .line 3249
    invoke-static {p1}, Lcom/kakaogame/promotion/UrlPromotionManager;->checkUrlPromotion(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    .line 3259
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3279
    :cond_5
    invoke-static {p1, p2, v2, p3, p4}, Lcom/kakaogame/auth/AuthImpl;->handleLoginResult(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/KGResult;ZI)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 3349
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p2

    const/16 p3, 0x1cf

    if-ne p2, p3, :cond_8

    .line 3359
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3369
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3389
    :cond_6
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p2

    if-ne p2, p3, :cond_7

    .line 3399
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x2329

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3419
    :cond_7
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3459
    :cond_8
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 3469
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3479
    :cond_9
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p1, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3519
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Ljava/lang/Throwable;

    invoke-virtual {p2, v5, p3, p4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3529
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method static synthetic loginInternal$default(Lcom/kakaogame/auth/AuthImpl;Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;ZIILjava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, -0x1

    .line 2849
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/auth/AuthImpl;->loginInternal(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final loginWithUI(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 9
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceJobCode;->SDK_LOGIN:Lcom/kakaogame/log/tracer/TraceJobCode;

    invoke-virtual {v0, v1}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Lcom/kakaogame/log/tracer/TraceJobCode;)I

    move-result v3

    .line 889
    sget-object v0, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    invoke-virtual {v0, p0, v3}, Lcom/kakaogame/auth/AuthImpl;->loginWithUI(Landroid/app/Activity;I)Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 899
    sget-object v2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/kakaogame/log/tracer/Tracer;->finish$default(Lcom/kakaogame/log/tracer/Tracer;IILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static final logout(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 5979
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d0c65b0

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x543965a2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5999
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, 0x7d707805

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 6019
    :try_start_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6029
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0xbba

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6369
    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6379
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p1, p0, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p0

    .line 6049
    :cond_0
    :try_start_1
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_1

    .line 6089
    sget-object v3, Lcom/kakaogame/auth/view/LogoutUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LogoutUIManager;

    sget-object v4, Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;->LOGOUT:Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;

    invoke-virtual {v3, p0, v1, v4}, Lcom/kakaogame/auth/view/LogoutUIManager;->showLogoutPopup(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 6099
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6109
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 6139
    :cond_1
    new-instance v1, Lcom/kakaogame/ui/CustomProgressDialog;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/kakaogame/ui/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_2

    .line 6159
    invoke-virtual {v1}, Lcom/kakaogame/ui/CustomProgressDialog;->show()V

    .line 6179
    :cond_2
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->logout()Lcom/kakaogame/KGResult;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 6199
    invoke-virtual {v1}, Lcom/kakaogame/ui/CustomProgressDialog;->dismiss()V

    .line 6219
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6229
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 6259
    :cond_4
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->logout()Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 6269
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6279
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 6309
    :cond_5
    sget-object p0, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    invoke-direct {p0}, Lcom/kakaogame/auth/AuthImpl;->onLogout()V

    .line 6319
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6369
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6379
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 6339
    :try_start_2
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p1, v2, v1, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6349
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xfa1

    invoke-virtual {p1, v1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6369
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6379
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGResult;

    :goto_1
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p1, p0, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    return-object p0

    .line 6369
    :goto_2
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6379
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw p0

    .array-data 1
    .end array-data
.end method

.method private final onLogout()V
    .locals 1

    .line 8029
    sget-object v0, Lcom/kakaogame/core/CoreImpl;->INSTANCE:Lcom/kakaogame/core/CoreImpl;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreImpl;->onLogout()V

    .line 8039
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/auth/agreement/AgreementManager;->clearPreference(Landroid/content/Context;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final showCOPPA(Landroid/app/Activity;I)Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1529
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getUserAgeCheck()I

    move-result v0

    .line 1539
    invoke-static {}, Lcom/kakaogame/KGSystem;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-gtz v0, :cond_0

    .line 1559
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_2

    .line 1569
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_2

    .line 1579
    :cond_3
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0bd780

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x5d10501f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 1599
    :cond_4
    sget-object v1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v2, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_COPPA_UI:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    invoke-virtual {v1, p2, v2}, Lcom/kakaogame/log/tracer/Tracer;->startAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;)V

    .line 1609
    new-instance v1, Lcom/kakaogame/auth/AuthImpl$showCOPPA$checkAgeResult$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/kakaogame/auth/AuthImpl$showCOPPA$checkAgeResult$1;-><init>(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v3, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/KGResult;

    .line 1639
    sget-object v4, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    .line 1649
    sget-object v5, Lcom/kakaogame/log/tracer/TraceLoginActionCode;->SDK_COPPA_UI:Lcom/kakaogame/log/tracer/TraceLoginActionCode;

    .line 1659
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v6

    .line 1669
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1639
    :cond_5
    invoke-virtual {v4, p2, v5, v6, v7}, Lcom/kakaogame/log/tracer/Tracer;->finishAction(ILcom/kakaogame/log/tracer/TraceLoginActionCode;ILjava/lang/String;)V

    .line 1689
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1699
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x2329

    const v0, 0x7d7079d5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 1729
    :cond_6
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    .line 1749
    new-instance p2, Lcom/kakaogame/auth/AuthImpl$showCOPPA$1;

    invoke-direct {p2, p1, v0, v2}, Lcom/kakaogame/auth/AuthImpl$showCOPPA$1;-><init>(Landroid/app/Activity;ILkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, p2, v3, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1779
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x26ac

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_2

    .line 1799
    :cond_7
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_2
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final showLogin(Landroid/app/Activity;Ljava/util/List;I)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1309
    :try_start_0
    sput-boolean v0, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 1319
    invoke-direct {p0, p1, p3}, Lcom/kakaogame/auth/AuthImpl;->showCOPPA(Landroid/app/Activity;I)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 1329
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1469
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    return-object v2

    .line 1349
    :cond_0
    :try_start_1
    new-instance v2, Lcom/kakaogame/auth/AuthImpl$showLogin$loginResult$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/kakaogame/auth/AuthImpl$showLogin$loginResult$1;-><init>(Landroid/app/Activity;Ljava/util/List;ILkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/KGResult;

    .line 1379
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1389
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    .line 1409
    :cond_1
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1439
    :try_start_2
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p3, "AuthImpl"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v0, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1449
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xfa1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1469
    :goto_0
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    return-object p1

    :goto_1
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    throw p1

    .array-data 1
    .end array-data
.end method

.method public static final unregister(Landroid/app/Activity;Z)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6469
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x45191437

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x543965a2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6489
    sget-object v0, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v1, -0x451914a7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object v0

    .line 6519
    :try_start_0
    sget-boolean v1, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    if-nez v1, :cond_0

    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p1, 0x1389

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto/16 :goto_0

    .line 6529
    :cond_0
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    const/16 v3, 0xbba

    if-eqz v1, :cond_1

    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto/16 :goto_0

    .line 6539
    :cond_1
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_5

    .line 6559
    sget-object p1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object p1

    .line 6569
    sget-object v1, Lcom/kakaogame/auth/view/LogoutUIManager;->INSTANCE:Lcom/kakaogame/auth/view/LogoutUIManager;

    sget-object v3, Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;->UNREGISTER:Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;

    invoke-virtual {v1, p0, p1, v3}, Lcom/kakaogame/auth/view/LogoutUIManager;->showLogoutPopup(Landroid/app/Activity;Ljava/lang/String;Lcom/kakaogame/auth/view/LogoutUIManager$RequestType;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 6579
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6589
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 6609
    :cond_3
    new-instance p1, Lcom/kakaogame/ui/CustomProgressDialog;

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/kakaogame/ui/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    .line 6619
    invoke-virtual {p1}, Lcom/kakaogame/ui/CustomProgressDialog;->show()V

    .line 6629
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->requestUnregister()Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 6639
    invoke-virtual {p1}, Lcom/kakaogame/ui/CustomProgressDialog;->dismiss()V

    .line 6649
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6659
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    .line 6689
    :cond_4
    sget-object p0, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    invoke-direct {p0}, Lcom/kakaogame/auth/AuthImpl;->onLogout()V

    .line 6699
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0

    goto :goto_0

    .line 6739
    :cond_5
    sget-object p0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->requestUnregister()Lcom/kakaogame/KGResult;

    move-result-object p0

    .line 6749
    invoke-virtual {p0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6759
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    .line 6789
    :cond_6
    sget-object p0, Lcom/kakaogame/auth/AuthImpl;->INSTANCE:Lcom/kakaogame/auth/AuthImpl;

    invoke-direct {p0}, Lcom/kakaogame/auth/AuthImpl;->onLogout()V

    .line 6799
    sget-object p0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6879
    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6889
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v0

    invoke-static {p1, p0, v0, v1}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 6849
    :try_start_1
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p1, v2, v1, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6859
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xfa1

    invoke-virtual {p1, v1, p0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6879
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6889
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGResult;

    goto :goto_1

    :goto_2
    return-object p0

    .line 6879
    :goto_3
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 6889
    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/kakaogame/KGResult;

    invoke-virtual {v0}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    throw p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final connectWithUI(Landroid/app/Activity;)Lcom/kakaogame/KGResult;
    .locals 9
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

    .line 3729
    sget-object v0, Lcom/kakaogame/core/CoreImpl;->INSTANCE:Lcom/kakaogame/core/CoreImpl;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreImpl;->isStarting()Z

    move-result v0

    const/16 v1, 0xfa3

    if-eqz v0, :cond_0

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v0, 0x7d70748d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_1

    .line 3739
    :cond_0
    sget-boolean v0, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 3749
    sput-boolean p1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 3759
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v0, -0x45191ba7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_1

    .line 3779
    :cond_1
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    const/16 v1, 0xfa2

    if-eqz v0, :cond_2

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v0, -0x2242bc14

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3789
    :cond_2
    sget-object v0, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v2, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kakaogame/core/FeatureManager;->allowConnectFrom(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3799
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    .line 3809
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x54397762

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3799
    invoke-virtual {p1, v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3829
    :cond_4
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceJobCode;->SDK_CONNECT:Lcom/kakaogame/log/tracer/TraceJobCode;

    invoke-virtual {v0, v1}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Lcom/kakaogame/log/tracer/TraceJobCode;)I

    move-result v3

    .line 3839
    invoke-direct {p0, p1, v3}, Lcom/kakaogame/auth/AuthImpl;->connectWithUIImpl(Landroid/app/Activity;I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 3849
    sget-object v2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/kakaogame/log/tracer/Tracer;->finish$default(Lcom/kakaogame/log/tracer/Tracer;IILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final connectWithoutUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Lcom/kakaogame/KGResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0bddd0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4459
    sget-object v0, Lcom/kakaogame/core/CoreImpl;->INSTANCE:Lcom/kakaogame/core/CoreImpl;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreImpl;->isStarting()Z

    move-result v0

    const/16 v1, 0xfa3

    if-eqz v0, :cond_0

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "starting"

    invoke-virtual {p1, v1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_1

    .line 4469
    :cond_0
    sget-boolean v0, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4479
    sput-boolean v2, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 4489
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "login/connect already called"

    invoke-virtual {p1, v1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_1

    .line 4509
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/16 v0, 0xfa0

    if-eqz v2, :cond_3

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p2, "idpCode is null"

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_1

    .line 4519
    :cond_3
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xbba

    const-string p3, "not authorized"

    invoke-virtual {p1, p2, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto/16 :goto_1

    .line 4529
    :cond_4
    sget-object v1, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object v2, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/core/FeatureManager;->allowConnectFrom(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4539
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    .line 4549
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "current account is not support to connect other idp: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {p3}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/kakaogame/KGLocalPlayer;->getIdpProfile()Lcom/kakaogame/KGIdpProfile;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/kakaogame/KGIdpProfile;->getIdpCode()Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    move-result-object v3

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xfa2

    .line 4539
    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 4559
    :cond_7
    sget-object v1, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    invoke-virtual {v1, p2}, Lcom/kakaogame/core/FeatureManager;->allowConnectTo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " idp is not supported to connect"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 4579
    :cond_8
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceJobCode;->SDK_CONNECT:Lcom/kakaogame/log/tracer/TraceJobCode;

    invoke-virtual {v0, v1}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Lcom/kakaogame/log/tracer/TraceJobCode;)I

    move-result v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v0

    .line 4589
    invoke-direct/range {v2 .. v7}, Lcom/kakaogame/auth/AuthImpl;->connectWithoutUIImpl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 4649
    sget-object v2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_9
    move-object v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/kakaogame/log/tracer/Tracer;->finish$default(Lcom/kakaogame/log/tracer/Tracer;IILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final loginWithUI(Landroid/app/Activity;I)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5439753a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543965a2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 999
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreImpl;->INSTANCE:Lcom/kakaogame/core/CoreImpl;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreImpl;->isStarting()Z

    move-result v0

    const/16 v1, 0xfa3

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v3, 0x7d70748d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 1009
    :cond_1
    sget-boolean v0, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1019
    sput-boolean v3, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 1029
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v3, -0x45191ba7

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 1049
    :cond_2
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 1059
    :cond_3
    sget-boolean v0, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    if-eqz v0, :cond_4

    .line 1069
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xbb9

    const v3, 0x6d0c6dc8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 1079
    :cond_4
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kakaogame/core/CoreManager;->loadInfodesk(Z)Lcom/kakaogame/KGResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1089
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0x3e9

    const v3, 0x543973b2

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 1109
    :cond_5
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getServerConnectionType()Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;->https:Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    if-ne v0, v1, :cond_6

    const/4 v3, 0x1

    .line 1119
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/kakaogame/core/ConnectionManager;->setConnectionType(Landroid/content/Context;Lcom/kakaogame/config/Configuration;Z)V

    .line 1129
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 1169
    :goto_0
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    .line 1199
    :cond_7
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getSupportedIdpCodes()Ljava/util/List;

    move-result-object v0

    .line 1209
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1219
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p2, "loginWithUI: idpCode list is null. Check infodesk data on your game."

    invoke-virtual {p1, v2, p2}, Lcom/kakaogame/Logger;->he(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xbb8

    const v0, -0x2242bb64

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 1249
    :cond_8
    invoke-direct {p0, p1, v0, p2}, Lcom/kakaogame/auth/AuthImpl;->showLogin(Landroid/app/Activity;Ljava/util/List;I)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final loginWithoutUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)Lcom/kakaogame/KGResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0bddd0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1889
    sget-object v0, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object v1, Lcom/kakaogame/log/tracer/TraceJobCode;->SDK_LOGIN:Lcom/kakaogame/log/tracer/TraceJobCode;

    invoke-virtual {v0, v1}, Lcom/kakaogame/log/tracer/Tracer;->makeJob(Lcom/kakaogame/log/tracer/TraceJobCode;)I

    move-result v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v0

    .line 1899
    invoke-virtual/range {v2 .. v7}, Lcom/kakaogame/auth/AuthImpl;->loginWithoutUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 1909
    sget-object v2, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/kakaogame/log/tracer/Tracer;->finish$default(Lcom/kakaogame/log/tracer/Tracer;IILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final loginWithoutUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d0bddd0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1959
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7d707225

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x543965a2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 2009
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    sget-object p4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa0

    const v4, 0x6d0c6ef0

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p4

    goto/16 :goto_2

    :cond_2
    const/16 v0, 0xfa3

    if-nez p4, :cond_3

    .line 2019
    sget-object p4, Lcom/kakaogame/core/CoreImpl;->INSTANCE:Lcom/kakaogame/core/CoreImpl;

    invoke-virtual {p4}, Lcom/kakaogame/core/CoreImpl;->isStarting()Z

    move-result p4

    if-eqz p4, :cond_3

    sget-object p4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v4, 0x7d70748d

    invoke-static {v4}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p4

    goto/16 :goto_2

    .line 2029
    :cond_3
    sget-boolean p4, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    if-eqz p4, :cond_4

    .line 2039
    sput-boolean v3, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 2049
    sget-object p4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const v4, -0x45191ba7

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p4

    goto :goto_2

    .line 2069
    :cond_4
    sget-object p4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object p4

    if-eqz p4, :cond_5

    sget-object p4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p4}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p4

    goto :goto_2

    .line 2079
    :cond_5
    sget-boolean p4, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    if-eqz p4, :cond_6

    sget-object p4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xbb9

    const v4, 0x6d0c6dc8

    invoke-static {v4}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p4

    goto :goto_2

    .line 2089
    :cond_6
    sget-object p4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {p4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object p4

    invoke-virtual {p4, v3}, Lcom/kakaogame/core/CoreManager;->loadInfodesk(Z)Lcom/kakaogame/KGResult;

    move-result-object p4

    invoke-virtual {p4}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 2099
    sget-object p4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0x3e9

    const v4, 0x543973b2

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p4

    goto :goto_2

    .line 2119
    :cond_7
    sget-object p4, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p4}, Lcom/kakaogame/infodesk/InfodeskHelper;->getServerConnectionType()Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    move-result-object p4

    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;->https:Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    if-ne p4, v0, :cond_8

    move p4, v1

    goto :goto_1

    :cond_8
    move p4, v3

    .line 2129
    :goto_1
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v4

    invoke-static {v0, v4, p4}, Lcom/kakaogame/core/ConnectionManager;->setConnectionType(Landroid/content/Context;Lcom/kakaogame/config/Configuration;Z)V

    .line 2139
    sget-object p4, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p4}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p4

    .line 2179
    :goto_2
    invoke-virtual {p4}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p4

    .line 2219
    :cond_9
    sget-object p4, Lcom/kakaogame/util/Stopwatch;->Companion:Lcom/kakaogame/util/Stopwatch$Companion;

    const v0, 0x3362d76b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/kakaogame/util/Stopwatch$Companion;->start(Ljava/lang/String;)Lcom/kakaogame/util/Stopwatch;

    move-result-object p4

    .line 2249
    :try_start_0
    sput-boolean v1, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    .line 2259
    invoke-direct {p0, p1, p5}, Lcom/kakaogame/auth/AuthImpl;->showCOPPA(Landroid/app/Activity;I)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 2269
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    .line 2299
    :cond_a
    invoke-static {p1, p2, p3, p5}, Lcom/kakaogame/auth/AuthImpl;->loginImpl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2359
    :goto_3
    invoke-virtual {p4}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2369
    invoke-virtual {p4}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {p4}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide p2

    invoke-static {p1, v0, p2, p3}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 2379
    sput-boolean v3, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 2329
    :try_start_1
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p5, p1

    check-cast p5, Ljava/lang/Throwable;

    invoke-virtual {p2, v2, p3, p5}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2339
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xfa1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2359
    invoke-virtual {p4}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2369
    invoke-virtual {p4}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lcom/kakaogame/KGResult;

    goto :goto_4

    :goto_5
    return-object v0

    .line 2359
    :goto_6
    invoke-virtual {p4}, Lcom/kakaogame/util/Stopwatch;->stop()V

    .line 2369
    invoke-virtual {p4}, Lcom/kakaogame/util/Stopwatch;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    move-object p5, p3

    check-cast p5, Lcom/kakaogame/KGResult;

    invoke-virtual {p4}, Lcom/kakaogame/util/Stopwatch;->getDurationMs()J

    move-result-wide p4

    invoke-static {p2, p3, p4, p5}, Lcom/kakaogame/core/KGResultUtil;->writeClientApiCall(Ljava/lang/String;Lcom/kakaogame/KGResult;J)V

    .line 2379
    sput-boolean v3, Lcom/kakaogame/auth/AuthImpl;->isLoginProcess:Z

    throw p1

    nop

    .array-data 1
    .end array-data
.end method
