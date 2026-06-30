.class public final Lcom/kakaogame/idp/KGSIWAAuth$Settings;
.super Ljava/lang/Object;
.source "KGSIWAAuth.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/idp/KGSIWAAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakaogame/idp/KGSIWAAuth$Settings;",
        "",
        "<init>",
        "()V",
        "redirectUri",
        "",
        "idp_siwa_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakaogame/idp/KGSIWAAuth$Settings;

.field public static final redirectUri:Ljava/lang/String; = "v3/redirect/siwa"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/idp/KGSIWAAuth$Settings;

    invoke-direct {v0}, Lcom/kakaogame/idp/KGSIWAAuth$Settings;-><init>()V

    sput-object v0, Lcom/kakaogame/idp/KGSIWAAuth$Settings;->INSTANCE:Lcom/kakaogame/idp/KGSIWAAuth$Settings;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
