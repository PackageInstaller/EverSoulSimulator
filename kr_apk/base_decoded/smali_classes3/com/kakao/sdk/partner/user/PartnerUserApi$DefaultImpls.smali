.class public final Lcom/kakao/sdk/partner/user/PartnerUserApi$DefaultImpls;
.super Ljava/lang/Object;
.source "PartnerUserApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/partner/user/PartnerUserApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic ageAuthInfo$default(Lcom/kakao/sdk/partner/user/PartnerUserApi;Ljava/lang/Integer;Ljava/lang/String;Lcom/kakao/sdk/partner/user/model/AgeCriteria;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 1

    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 419
    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/kakao/sdk/partner/user/PartnerUserApi;->ageAuthInfo(Ljava/lang/Integer;Ljava/lang/String;Lcom/kakao/sdk/partner/user/model/AgeCriteria;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: ageAuthInfo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic me$default(Lcom/kakao/sdk/partner/user/PartnerUserApi;Ljava/lang/String;ZILjava/lang/Object;)Lretrofit2/Call;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 359
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/kakao/sdk/partner/user/PartnerUserApi;->me(Ljava/lang/String;Z)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: me"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic upgradeScopes$default(Lcom/kakao/sdk/partner/user/PartnerUserApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 489
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/kakao/sdk/partner/user/PartnerUserApi;->upgradeScopes(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: upgradeScopes"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method
