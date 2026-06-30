.class public final Lcom/kakaogame/KGKakaoAuthType$Companion;
.super Ljava/lang/Object;
.source "KGKakaoAuthType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoAuthType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoAuthType$Companion;",
        "",
        "<init>",
        "()V",
        "get",
        "Lcom/kakaogame/KGKakaoAuthType;",
        "name",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGKakaoAuthType$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lcom/kakaogame/KGKakaoAuthType;
    .locals 1

    .line 229
    sget-object v0, Lcom/kakaogame/KGKakaoAuthType;->KakaoTalk:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {v0}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/kakaogame/KGKakaoAuthType;->KakaoTalk:Lcom/kakaogame/KGKakaoAuthType;

    goto :goto_0

    .line 239
    :cond_0
    sget-object v0, Lcom/kakaogame/KGKakaoAuthType;->KakaoWeb:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {v0}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/kakaogame/KGKakaoAuthType;->KakaoWeb:Lcom/kakaogame/KGKakaoAuthType;

    goto :goto_0

    .line 249
    :cond_1
    sget-object v0, Lcom/kakaogame/KGKakaoAuthType;->KakaoAllType:Lcom/kakaogame/KGKakaoAuthType;

    invoke-virtual {v0}, Lcom/kakaogame/KGKakaoAuthType;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/kakaogame/KGKakaoAuthType;->KakaoAllType:Lcom/kakaogame/KGKakaoAuthType;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
