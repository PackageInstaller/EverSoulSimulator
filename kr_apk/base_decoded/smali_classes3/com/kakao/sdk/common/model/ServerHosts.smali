.class public Lcom/kakao/sdk/common/model/ServerHosts;
.super Ljava/lang/Object;
.source "ServerHosts.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/model/ServerHosts$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ServerHosts;",
        "",
        "()V",
        "account",
        "",
        "getAccount",
        "()Ljava/lang/String;",
        "apps",
        "getApps",
        "channel",
        "getChannel",
        "kapi",
        "getKapi",
        "kauth",
        "getKauth",
        "mobileAccount",
        "getMobileAccount",
        "navi",
        "getNavi",
        "sharer",
        "getSharer",
        "Companion",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/common/model/ServerHosts$Companion;


# instance fields
.field private final account:Ljava/lang/String;

.field private final apps:Ljava/lang/String;

.field private final channel:Ljava/lang/String;

.field private final kapi:Ljava/lang/String;

.field private final kauth:Ljava/lang/String;

.field private final mobileAccount:Ljava/lang/String;

.field private final navi:Ljava/lang/String;

.field private final sharer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/common/model/ServerHosts$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/model/ServerHosts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/model/ServerHosts;->Companion:Lcom/kakao/sdk/common/model/ServerHosts$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kauth.kakao.com"

    .line 229
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kauth:Ljava/lang/String;

    const-string v0, "kapi.kakao.com"

    .line 239
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kapi:Ljava/lang/String;

    const-string v0, "apps.kakao.com"

    .line 249
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->apps:Ljava/lang/String;

    const-string v0, "accounts.kakao.com"

    .line 259
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->account:Ljava/lang/String;

    const-string v0, "auth.kakao.com"

    .line 269
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->mobileAccount:Ljava/lang/String;

    const-string v0, "sharer.kakao.com"

    .line 279
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->sharer:Ljava/lang/String;

    const-string v0, "kakaonavi-wguide.kakao.com"

    .line 289
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->navi:Ljava/lang/String;

    const-string v0, "pf.kakao.com"

    .line 299
    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->channel:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->account:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getApps()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->apps:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->channel:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getKapi()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kapi:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getKauth()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kauth:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMobileAccount()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->mobileAccount:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNavi()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->navi:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getSharer()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->sharer:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
