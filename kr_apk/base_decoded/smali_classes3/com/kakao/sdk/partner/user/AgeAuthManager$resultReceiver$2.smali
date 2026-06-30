.class final Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AgeAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/partner/user/AgeAuthManager;->resultReceiver(Lkotlin/jvm/functions/Function1;)Lcom/kakao/sdk/auth/UnitResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "uri",
        "Landroid/net/Uri;",
        "invoke",
        "(Landroid/net/Uri;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$2;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$2;-><init>()V

    sput-object v0, Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$2;->INSTANCE:Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$2;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 2

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    .line 719
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    move v1, v0

    :cond_0
    xor-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 559
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$2;->invoke(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
