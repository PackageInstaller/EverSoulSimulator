.class public final Lcom/kakaogame/core/LocaleManager$initialize$1;
.super Ljava/lang/Object;
.source "LocaleManager.kt"

# interfaces
.implements Lcom/kakaogame/core/CoreManager$CoreStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakaogame/core/LocaleManager;->initialize(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/kakaogame/core/LocaleManager$initialize$1",
        "Lcom/kakaogame/core/CoreManager$CoreStateListener;",
        "onUnregister",
        "",
        "playerId",
        "",
        "onPause",
        "onLogout",
        "onLogin",
        "onConnect",
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


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kakaogame/core/LocaleManager$initialize$1;->$context:Landroid/content/Context;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onConnect(Ljava/lang/String;)V
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onLogin(Ljava/lang/String;)V
    .locals 3

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/kakaogame/core/LocaleManager$initialize$1;->$context:Landroid/content/Context;

    invoke-static {}, Lcom/kakaogame/core/LocaleManager;->access$getPrefName$p()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x7d73d29d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/kakaogame/util/PreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 819
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 829
    sget-object v0, Lcom/kakaogame/core/LocaleManager;->INSTANCE:Lcom/kakaogame/core/LocaleManager;

    invoke-virtual {v0}, Lcom/kakaogame/core/LocaleManager;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 839
    sget-object v0, Lcom/kakaogame/core/LocaleManager;->INSTANCE:Lcom/kakaogame/core/LocaleManager;

    iget-object v1, p0, Lcom/kakaogame/core/LocaleManager$initialize$1;->$context:Landroid/content/Context;

    new-instance v2, Lcom/kakaogame/core/LocaleManager$initialize$1$onLogin$1;

    invoke-direct {v2}, Lcom/kakaogame/core/LocaleManager$initialize$1$onLogin$1;-><init>()V

    check-cast v2, Lcom/kakaogame/KGResultCallback;

    invoke-virtual {v0, v1, p1, v2}, Lcom/kakaogame/core/LocaleManager;->updateLanguageCode(Landroid/content/Context;Ljava/lang/String;Lcom/kakaogame/KGResultCallback;)V

    :cond_3
    return-void

    .array-data 1
    .end array-data
.end method

.method public onLogout(Ljava/lang/String;)V
    .locals 1

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onPause()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onUnregister(Ljava/lang/String;)V
    .locals 2

    const v0, -0x224509cc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/kakaogame/core/LocaleManager$initialize$1;->$context:Landroid/content/Context;

    invoke-static {}, Lcom/kakaogame/core/LocaleManager;->access$getPrefName$p()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const v1, 0x7d73d29d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/kakaogame/util/PreferenceUtil;->removeKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
