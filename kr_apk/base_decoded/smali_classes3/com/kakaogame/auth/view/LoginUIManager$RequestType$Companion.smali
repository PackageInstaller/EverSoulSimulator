.class public final Lcom/kakaogame/auth/view/LoginUIManager$RequestType$Companion;
.super Ljava/lang/Object;
.source "LoginUIManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/view/LoginUIManager$RequestType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/LoginUIManager$RequestType$Companion;",
        "",
        "<init>",
        "()V",
        "getCode",
        "Lcom/kakaogame/auth/view/LoginUIManager$RequestType;",
        "value",
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

    .line 8119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/auth/view/LoginUIManager$RequestType$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCode(I)Lcom/kakaogame/auth/view/LoginUIManager$RequestType;
    .locals 0

    if-nez p1, :cond_0

    .line 8149
    sget-object p1, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->LOGIN:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    goto :goto_0

    .line 8169
    :cond_0
    sget-object p1, Lcom/kakaogame/auth/view/LoginUIManager$RequestType;->CONNECT:Lcom/kakaogame/auth/view/LoginUIManager$RequestType;

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method
