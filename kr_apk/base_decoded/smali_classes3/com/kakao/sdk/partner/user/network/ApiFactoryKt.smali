.class public final Lcom/kakao/sdk/partner/user/network/ApiFactoryKt;
.super Ljava/lang/Object;
.source "ApiFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "signupKapiWithOAuth",
        "Lretrofit2/Retrofit;",
        "Lcom/kakao/sdk/network/ApiFactory;",
        "getSignupKapiWithOAuth",
        "(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;",
        "signupKapiWithOAuth$delegate",
        "Lkotlin/Lazy;",
        "partner-user_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final signupKapiWithOAuth$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 309
    sget-object v0, Lcom/kakao/sdk/partner/user/network/ApiFactoryKt$signupKapiWithOAuth$2;->INSTANCE:Lcom/kakao/sdk/partner/user/network/ApiFactoryKt$signupKapiWithOAuth$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/partner/user/network/ApiFactoryKt;->signupKapiWithOAuth$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getSignupKapiWithOAuth(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    sget-object p0, Lcom/kakao/sdk/partner/user/network/ApiFactoryKt;->signupKapiWithOAuth$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0

    .array-data 1
    .end array-data
.end method
