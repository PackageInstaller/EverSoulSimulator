.class public final Lcom/kakaogame/secondpw/viewdata/ResultData;
.super Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;
.source "ResultData.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResultData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResultData.kt\ncom/kakaogame/secondpw/viewdata/ResultData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,12:1\n1#2:13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/secondpw/viewdata/ResultData;",
        "Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;",
        "resultCode",
        "",
        "accessKey",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "security_release"
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
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/kakaogame/secondpw/viewdata/Base2ndPWViewData;-><init>()V

    .line 79
    sget-object v0, Lcom/kakaogame/secondpw/PasswordViewType;->RESULT:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v0}, Lcom/kakaogame/secondpw/PasswordViewType;->getValue()Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0b0e48

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/secondpw/viewdata/ResultData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x543e8a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/secondpw/viewdata/ResultData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string p1, "accessKey"

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/secondpw/viewdata/ResultData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/secondpw/viewdata/ResultData;-><init>(ILjava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
