.class public final Lcom/kakaogame/version/SDKVersion;
.super Ljava/lang/Object;
.source "SDKVersion.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/version/SDKVersion;",
        "",
        "<init>",
        "()V",
        "version",
        "",
        "isPublishing",
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


# static fields
.field public static final INSTANCE:Lcom/kakaogame/version/SDKVersion;

.field public static final isPublishing:Z

.field public static final version:Ljava/lang/String; = "3.20.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/version/SDKVersion;

    invoke-direct {v0}, Lcom/kakaogame/version/SDKVersion;-><init>()V

    sput-object v0, Lcom/kakaogame/version/SDKVersion;->INSTANCE:Lcom/kakaogame/version/SDKVersion;

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
