.class final Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/network/ApiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/kakao/sdk/network/KakaoAgentInterceptor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/kakao/sdk/network/KakaoAgentInterceptor;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;

    invoke-direct {v0}, Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;-><init>()V

    sput-object v0, Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Lcom/kakao/sdk/network/KakaoAgentInterceptor;
    .locals 3

    .line 359
    new-instance v0, Lcom/kakao/sdk/network/KakaoAgentInterceptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/kakao/sdk/network/KakaoAgentInterceptor;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/kakao/sdk/network/ApiFactory$kakaoAgentInterceptor$2;->invoke()Lcom/kakao/sdk/network/KakaoAgentInterceptor;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
