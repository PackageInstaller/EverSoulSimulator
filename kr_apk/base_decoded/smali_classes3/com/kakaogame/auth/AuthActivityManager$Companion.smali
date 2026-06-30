.class public final Lcom/kakaogame/auth/AuthActivityManager$Companion;
.super Ljava/lang/Object;
.source "AuthActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/AuthActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/auth/AuthActivityManager$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "instance",
        "Lcom/kakaogame/auth/AuthActivityManager;",
        "getInstance",
        "()Lcom/kakaogame/auth/AuthActivityManager;",
        "common-kakaogames_release"
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

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/auth/AuthActivityManager$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getInstance()Lcom/kakaogame/auth/AuthActivityManager;
    .locals 1

    .line 1449
    invoke-static {}, Lcom/kakaogame/auth/AuthActivityManager;->access$getInstance$cp()Lcom/kakaogame/auth/AuthActivityManager;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
