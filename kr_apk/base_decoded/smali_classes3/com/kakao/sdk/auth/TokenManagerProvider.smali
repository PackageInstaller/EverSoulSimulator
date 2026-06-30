.class public final Lcom/kakao/sdk/auth/TokenManagerProvider;
.super Ljava/lang/Object;
.source "TokenManagerProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "",
        "manager",
        "Lcom/kakao/sdk/auth/TokenManageable;",
        "(Lcom/kakao/sdk/auth/TokenManageable;)V",
        "getManager",
        "()Lcom/kakao/sdk/auth/TokenManageable;",
        "setManager",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/auth/TokenManagerProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private manager:Lcom/kakao/sdk/auth/TokenManageable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/TokenManagerProvider;->Companion:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    .line 339
    sget-object v0, Lcom/kakao/sdk/auth/TokenManagerProvider$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/TokenManagerProvider;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/kakao/sdk/auth/TokenManagerProvider;-><init>(Lcom/kakao/sdk/auth/TokenManageable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/TokenManageable;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/kakao/sdk/auth/TokenManagerProvider;->manager:Lcom/kakao/sdk/auth/TokenManageable;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/auth/TokenManageable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 249
    sget-object p1, Lcom/kakao/sdk/auth/TokenManager;->Companion:Lcom/kakao/sdk/auth/TokenManager$Companion;

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/TokenManager$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManager;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/auth/TokenManageable;

    .line 239
    :cond_0
    invoke-direct {p0, p1}, Lcom/kakao/sdk/auth/TokenManagerProvider;-><init>(Lcom/kakao/sdk/auth/TokenManageable;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 239
    sget-object v0, Lcom/kakao/sdk/auth/TokenManagerProvider;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakao/sdk/auth/TokenManagerProvider;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/TokenManagerProvider;->Companion:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;->getInstance()Lcom/kakao/sdk/auth/TokenManagerProvider;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getManager()Lcom/kakao/sdk/auth/TokenManageable;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/kakao/sdk/auth/TokenManagerProvider;->manager:Lcom/kakao/sdk/auth/TokenManageable;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setManager(Lcom/kakao/sdk/auth/TokenManageable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/kakao/sdk/auth/TokenManagerProvider;->manager:Lcom/kakao/sdk/auth/TokenManageable;

    return-void

    .array-data 1
    .end array-data
.end method
