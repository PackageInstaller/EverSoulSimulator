.class public final Lcom/kakao/sdk/partner/friend/a/a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;

.field public final synthetic c:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/partner/friend/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kakao/sdk/partner/friend/a/a;->b:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;

    iput-object p3, p0, Lcom/kakao/sdk/partner/friend/a/a;->c:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/PickerManager;

    sget-object v1, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-static {v1}, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->getKapiWithOAuthNoLog(Lcom/kakao/sdk/network/ApiFactory;)Lretrofit2/Retrofit;

    move-result-object v2

    const-class v3, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ApiFactory.kapiWithOAuth\u2026te(FriendApi::class.java)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/kakao/sdk/friend/core/network/FriendApi;

    invoke-virtual {v1}, Lcom/kakao/sdk/network/ApiFactory;->getKapiNoLog()Lretrofit2/Retrofit;

    move-result-object v1

    const-class v3, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ApiFactory.kapiNoLog.cre\u2026UserScopeApi::class.java)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/kakao/sdk/friend/core/network/UserScopeApi;

    invoke-direct {v0, v2, v1}, Lcom/kakao/sdk/friend/core/PickerManager;-><init>(Lcom/kakao/sdk/friend/core/network/FriendApi;Lcom/kakao/sdk/friend/core/network/UserScopeApi;)V

    iget-object v1, p0, Lcom/kakao/sdk/partner/friend/a/a;->a:Landroid/content/Context;

    sget-object v2, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->FULL:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    iget-object v3, p0, Lcom/kakao/sdk/partner/friend/a/a;->b:Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;

    invoke-static {v3}, Lcom/kakao/sdk/partner/friend/b/a;->a(Lcom/kakao/sdk/partner/friend/model/PickerTabRequestParams;)Lcom/kakao/sdk/friend/core/internal/InternalTabParams;

    move-result-object v3

    iget-object v4, p0, Lcom/kakao/sdk/partner/friend/a/a;->c:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kakao/sdk/friend/core/PickerManager;->startActivityForTab(Landroid/content/Context;Lcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/internal/InternalTabParams;Lkotlin/jvm/functions/Function3;)V

    .line 29
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
