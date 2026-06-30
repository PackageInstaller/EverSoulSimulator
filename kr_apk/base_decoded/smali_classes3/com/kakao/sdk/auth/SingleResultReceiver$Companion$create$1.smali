.class public final Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;
.super Lcom/kakao/sdk/auth/SingleResultReceiver;
.source "CustomSchemeResultReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/auth/SingleResultReceiver$Companion;->create(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/kakao/sdk/auth/SingleResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/sdk/auth/SingleResultReceiver<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0017\u0010\u0008\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/kakao/sdk/auth/SingleResultReceiver$Companion$create$1",
        "Lcom/kakao/sdk/auth/SingleResultReceiver;",
        "isError",
        "",
        "url",
        "Landroid/net/Uri;",
        "parseError",
        "",
        "parseResponse",
        "(Landroid/net/Uri;)Ljava/lang/Object;",
        "auth_release"
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
.field final synthetic $isError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $parseError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $parseResponse:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->$parseResponse:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->$parseError:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->$isError:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    .line 859
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/auth/SingleResultReceiver;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setEmitter(Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->setEmitter(Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public isError(Landroid/net/Uri;)Z
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->$isError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public parseError(Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->$parseError:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public parseResponse(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;->$parseResponse:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
