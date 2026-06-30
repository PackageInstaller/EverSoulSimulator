.class final Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AgeAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/partner/user/AgeAuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/kakao/sdk/partner/user/AgeAuthManager;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/kakao/sdk/partner/user/AgeAuthManager;",
        "invoke"
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
.field public static final INSTANCE:Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion$instance$2;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion$instance$2;-><init>()V

    sput-object v0, Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion$instance$2;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Lcom/kakao/sdk/partner/user/AgeAuthManager;
    .locals 1

    .line 1069
    new-instance v0, Lcom/kakao/sdk/partner/user/AgeAuthManager;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/user/AgeAuthManager;-><init>()V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1069
    invoke-virtual {p0}, Lcom/kakao/sdk/partner/user/AgeAuthManager$Companion$instance$2;->invoke()Lcom/kakao/sdk/partner/user/AgeAuthManager;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
