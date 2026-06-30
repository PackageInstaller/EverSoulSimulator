.class public final Lcom/kakao/sdk/network/ExceptionWrapperKt;
.super Ljava/lang/Object;
.source "ExceptionWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "origin",
        "",
        "getOrigin",
        "(Ljava/lang/Throwable;)Ljava/lang/Throwable;",
        "network_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getOrigin(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    instance-of v0, p0, Lcom/kakao/sdk/network/ExceptionWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/kakao/sdk/network/ExceptionWrapper;

    invoke-virtual {p0}, Lcom/kakao/sdk/network/ExceptionWrapper;->getOrigin()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    return-object p0

    .array-data 1
    .end array-data
.end method
