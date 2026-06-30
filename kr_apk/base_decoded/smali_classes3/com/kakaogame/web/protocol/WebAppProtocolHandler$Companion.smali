.class public final Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;
.super Ljava/lang/Object;
.source "WebAppProtocolHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/protocol/WebAppProtocolHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u00020\u00058\u0004X\u0085D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0003\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "SCHEME",
        "getSCHEME$annotations",
        "getSCHEME",
        "()Ljava/lang/String;",
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

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected static synthetic getSCHEME$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected final getSCHEME()Ljava/lang/String;
    .locals 1

    .line 159
    invoke-static {}, Lcom/kakaogame/web/protocol/WebAppProtocolHandler;->access$getSCHEME$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
