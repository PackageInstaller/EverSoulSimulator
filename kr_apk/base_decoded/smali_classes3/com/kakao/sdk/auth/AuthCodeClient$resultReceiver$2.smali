.class final Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthCodeClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/auth/AuthCodeClient;->resultReceiver$auth_release(Lkotlin/jvm/functions/Function2;)Lcom/kakao/sdk/auth/SingleResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthCodeClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthCodeClient.kt\ncom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2\n+ 2 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 3 Json.kt\nkotlinx/serialization/json/Json\n*L\n1#1,206:1\n47#2:207\n96#3:208\n*S KotlinDebug\n*F\n+ 1 AuthCodeClient.kt\ncom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2\n*L\n173#1:207\n173#1:208\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "uri",
        "Landroid/net/Uri;",
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


# instance fields
.field final synthetic this$0:Lcom/kakao/sdk/auth/AuthCodeClient;


# direct methods
.method constructor <init>(Lcom/kakao/sdk/auth/AuthCodeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2;->this$0:Lcom/kakao/sdk/auth/AuthCodeClient;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1639
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/AuthCodeClient$resultReceiver$2;->invoke(Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invoke(Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 4

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    .line 1709
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unknown"

    :cond_0
    const-string v1, "error_description"

    .line 1719
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1729
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1739
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2079
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 2089
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->Companion:Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/common/model/AuthErrorCause$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2079
    check-cast v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 1729
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1749
    :goto_0
    sget-object v2, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;

    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    .line 1769
    new-instance v2, Lcom/kakao/sdk/common/model/AuthError;

    .line 1799
    new-instance v3, Lcom/kakao/sdk/common/model/AuthErrorResponse;

    invoke-direct {v3, v0, p1}, Lcom/kakao/sdk/common/model/AuthErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x12e

    .line 1769
    invoke-direct {v2, p1, v1, v3}, Lcom/kakao/sdk/common/model/AuthError;-><init>(ILcom/kakao/sdk/common/model/AuthErrorCause;Lcom/kakao/sdk/common/model/AuthErrorResponse;)V

    check-cast v2, Ljava/lang/Throwable;

    return-object v2

    .array-data 1
    .end array-data
.end method
