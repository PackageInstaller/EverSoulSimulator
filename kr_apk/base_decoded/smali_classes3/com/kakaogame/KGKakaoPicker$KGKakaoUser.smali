.class public final Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;
.super Lcom/kakaogame/KGObject;
.source "KGKakaoPicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGKakaoUser"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B!\u0008\u0016\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u001d\u0008\u0016\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0006\u0010\rJ\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;",
        "Lcom/kakaogame/KGObject;",
        "m",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "nickname",
        "uuid",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "selectedUser",
        "Lcom/kakao/sdk/friend/core/model/SelectedUser;",
        "(Lcom/kakao/sdk/friend/core/model/SelectedUser;)V",
        "TAG",
        "KEY_NICKNAME",
        "getKEY_NICKNAME",
        "()Ljava/lang/String;",
        "KEY_UUID",
        "getKEY_UUID",
        "getNickname",
        "getUuid",
        "idp_kakao_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final KEY_NICKNAME:Ljava/lang/String;

.field private final KEY_UUID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/model/SelectedUser;)V
    .locals 3

    const v0, -0x2244b54c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5279
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x6d0a6140

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 5169
    iput-object v0, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->TAG:Ljava/lang/String;

    const v0, -0x2244c0e4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 5179
    iput-object v0, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_NICKNAME:Ljava/lang/String;

    const v1, 0x3364d9d3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 5189
    iput-object v1, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_UUID:Ljava/lang/String;

    .line 5289
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/model/SelectedUser;->getProfileNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5299
    invoke-virtual {p1}, Lcom/kakao/sdk/friend/core/model/SelectedUser;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5229
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x6d0a6140

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 5169
    iput-object v0, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->TAG:Ljava/lang/String;

    const v0, -0x2244c0e4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 5179
    iput-object v0, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_NICKNAME:Ljava/lang/String;

    const v1, 0x3364d9d3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 5189
    iput-object v1, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_UUID:Ljava/lang/String;

    .line 5239
    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5249
    invoke-virtual {p0, v1, p2}, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 5209
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    const-string p1, "KGKakaoUser"

    .line 5169
    iput-object p1, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->TAG:Ljava/lang/String;

    const-string p1, "nickname"

    .line 5179
    iput-object p1, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_NICKNAME:Ljava/lang/String;

    const-string/jumbo p1, "uuid"

    .line 5189
    iput-object p1, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_UUID:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getKEY_NICKNAME()Ljava/lang/String;
    .locals 1

    .line 5179
    iget-object v0, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_NICKNAME:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKEY_UUID()Ljava/lang/String;
    .locals 1

    .line 5189
    iget-object v0, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_UUID:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 4

    .line 5349
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_NICKNAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5369
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v2, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 4

    .line 5439
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->KEY_UUID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5459
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    iget-object v2, p0, Lcom/kakaogame/KGKakaoPicker$KGKakaoUser;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
