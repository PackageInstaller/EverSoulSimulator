.class public final Lcom/kakao/sdk/partner/auth/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/kakao/sdk/partner/auth/Constants;",
        "",
        "()V",
        "GROUP_REFRESH_TOKEN",
        "",
        "partner-auth_release"
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
.field public static final GROUP_REFRESH_TOKEN:Ljava/lang/String; = "group_refresh_token"

.field public static final INSTANCE:Lcom/kakao/sdk/partner/auth/Constants;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/auth/Constants;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/auth/Constants;-><init>()V

    sput-object v0, Lcom/kakao/sdk/partner/auth/Constants;->INSTANCE:Lcom/kakao/sdk/partner/auth/Constants;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
