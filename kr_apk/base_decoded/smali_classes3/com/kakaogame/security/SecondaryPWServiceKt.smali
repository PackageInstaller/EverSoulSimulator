.class public final Lcom/kakaogame/security/SecondaryPWServiceKt;
.super Ljava/lang/Object;
.source "SecondaryPWService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "getSendAuthType",
        "Lcom/kakaogame/security/SendAuthType;",
        "",
        "security_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getSendAuthType(Ljava/lang/String;)Lcom/kakaogame/security/SendAuthType;
    .locals 1

    const v0, 0x543e6e4a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5499
    sget-object v0, Lcom/kakaogame/security/SendAuthType;->SMS:Lcom/kakaogame/security/SendAuthType;

    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/kakaogame/security/SendAuthType;->SMS:Lcom/kakaogame/security/SendAuthType;

    goto :goto_0

    .line 5509
    :cond_0
    sget-object v0, Lcom/kakaogame/security/SendAuthType;->EMAIL:Lcom/kakaogame/security/SendAuthType;

    invoke-virtual {v0}, Lcom/kakaogame/security/SendAuthType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/kakaogame/security/SendAuthType;->EMAIL:Lcom/kakaogame/security/SendAuthType;

    goto :goto_0

    .line 5519
    :cond_1
    sget-object p0, Lcom/kakaogame/security/SendAuthType;->TALK:Lcom/kakaogame/security/SendAuthType;

    :goto_0
    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
