.class public final Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;
.super Ljava/lang/Object;
.source "WebSourceRegistrationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001 BK\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000cJ\r\u0010\u0016\u001a\u00020\u0017H\u0001\u00a2\u0006\u0002\u0008\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;",
        "",
        "webSourceParams",
        "",
        "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
        "topOriginUri",
        "Landroid/net/Uri;",
        "inputEvent",
        "Landroid/view/InputEvent;",
        "appDestination",
        "webDestination",
        "verifiedDestination",
        "(Ljava/util/List;Landroid/net/Uri;Landroid/view/InputEvent;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V",
        "getAppDestination",
        "()Landroid/net/Uri;",
        "getInputEvent",
        "()Landroid/view/InputEvent;",
        "getTopOriginUri",
        "getVerifiedDestination",
        "getWebDestination",
        "getWebSourceParams",
        "()Ljava/util/List;",
        "convertToAdServices",
        "Landroid/adservices/measurement/WebSourceRegistrationRequest;",
        "convertToAdServices$ads_adservices_release",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Builder",
        "ads-adservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appDestination:Landroid/net/Uri;

.field private final inputEvent:Landroid/view/InputEvent;

.field private final topOriginUri:Landroid/net/Uri;

.field private final verifiedDestination:Landroid/net/Uri;

.field private final webDestination:Landroid/net/Uri;

.field private final webSourceParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/net/Uri;Landroid/view/InputEvent;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    const-string v0, "webSourceParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topOriginUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webSourceParams:Ljava/util/List;

    .line 46
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->topOriginUri:Landroid/net/Uri;

    .line 47
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    .line 48
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->appDestination:Landroid/net/Uri;

    .line 49
    iput-object p5, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webDestination:Landroid/net/Uri;

    .line 50
    iput-object p6, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->verifiedDestination:Landroid/net/Uri;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroid/net/Uri;Landroid/view/InputEvent;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 44
    invoke-direct/range {v2 .. v8}, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;-><init>(Ljava/util/List;Landroid/net/Uri;Landroid/view/InputEvent;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .locals 3

    .line 100
    new-instance v0, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    .line 101
    sget-object v1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;->Companion:Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams$Companion;

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webSourceParams:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams$Companion;->convertWebSourceParams$ads_adservices_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 102
    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->topOriginUri:Landroid/net/Uri;

    .line 100
    invoke-direct {v0, v1, v2}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;-><init>(Ljava/util/List;Landroid/net/Uri;)V

    .line 104
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webDestination:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->setWebDestination(Landroid/net/Uri;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->appDestination:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->setAppDestination(Landroid/net/Uri;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object v0

    .line 106
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->setInputEvent(Landroid/view/InputEvent;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object v0

    .line 107
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->verifiedDestination:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->setVerifiedDestination(Landroid/net/Uri;)Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/adservices/measurement/WebSourceRegistrationRequest$Builder;->build()Landroid/adservices/measurement/WebSourceRegistrationRequest;

    move-result-object v0

    const-string v1, "Builder(\n               \u2026ion)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 56
    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webSourceParams:Ljava/util/List;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webSourceParams:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webDestination:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webDestination:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->appDestination:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->appDestination:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->topOriginUri:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->topOriginUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->verifiedDestination:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->verifiedDestination:Landroid/net/Uri;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppDestination()Landroid/net/Uri;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->appDestination:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getInputEvent()Landroid/view/InputEvent;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTopOriginUri()Landroid/net/Uri;
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->topOriginUri:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getVerifiedDestination()Landroid/net/Uri;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->verifiedDestination:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getWebDestination()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webDestination:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getWebSourceParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceParams;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webSourceParams:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    .line 65
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webSourceParams:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->topOriginUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    invoke-virtual {v1}, Landroid/view/InputEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_0
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->appDestination:Landroid/net/Uri;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webDestination:Landroid/net/Uri;

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->topOriginUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    invoke-virtual {v1}, Landroid/view/InputEvent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_3
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->verifiedDestination:Landroid/net/Uri;

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebSourceParams=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webSourceParams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], TopOriginUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->topOriginUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", InputEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->inputEvent:Landroid/view/InputEvent;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AppDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->appDestination:Landroid/net/Uri;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WebDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->webDestination:Landroid/net/Uri;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", VerifiedDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;->verifiedDestination:Landroid/net/Uri;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebSourceRegistrationRequest { "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
