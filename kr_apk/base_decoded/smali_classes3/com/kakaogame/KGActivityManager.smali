.class public final Lcom/kakaogame/KGActivityManager;
.super Ljava/lang/Object;
.source "KGActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGActivityManager$Companion;,
        Lcom/kakaogame/KGActivityManager$ConfigChangeListener;,
        Lcom/kakaogame/KGActivityManager$LifecycleListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/kakaogame/KGActivityManager;",
        "",
        "<init>",
        "()V",
        "ConfigChangeListener",
        "LifecycleListener",
        "Companion",
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
.field public static final Companion:Lcom/kakaogame/KGActivityManager$Companion;

.field private static final configChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kakaogame/KGActivityManager$ConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final lifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kakaogame/KGActivityManager$LifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGActivityManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    .line 209
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/kakaogame/KGActivityManager;->configChangeListeners:Ljava/util/Set;

    .line 219
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/kakaogame/KGActivityManager;->lifecycleListeners:Ljava/util/Set;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getConfigChangeListeners$cp()Ljava/util/Set;
    .locals 1

    .line 99
    sget-object v0, Lcom/kakaogame/KGActivityManager;->configChangeListeners:Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getLifecycleListeners$cp()Ljava/util/Set;
    .locals 1

    .line 99
    sget-object v0, Lcom/kakaogame/KGActivityManager;->lifecycleListeners:Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/KGActivityManager$Companion;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final dispatchPause()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGActivityManager$Companion;->dispatchPause()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final dispatchResume()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGActivityManager$Companion;->dispatchResume()V

    return-void

    .array-data 1
    .end array-data
.end method
