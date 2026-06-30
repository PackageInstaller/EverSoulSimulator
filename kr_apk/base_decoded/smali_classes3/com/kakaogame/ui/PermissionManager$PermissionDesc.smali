.class final Lcom/kakaogame/ui/PermissionManager$PermissionDesc;
.super Ljava/lang/Object;
.source "PermissionManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/ui/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionDesc"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0018\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\u00072\u0006\u0010!\u001a\u00020\u0019R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\t\"\u0004\u0008\u0017\u0010\u000bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/kakaogame/ui/PermissionManager$PermissionDesc;",
        "",
        "obj",
        "Lorg/json/JSONObject;",
        "<init>",
        "(Lorg/json/JSONObject;)V",
        "key",
        "",
        "getKey",
        "()Ljava/lang/String;",
        "setKey",
        "(Ljava/lang/String;)V",
        "permissions",
        "",
        "getPermissions",
        "()Ljava/util/List;",
        "setPermissions",
        "(Ljava/util/List;)V",
        "name",
        "getName",
        "setName",
        "desc",
        "getDesc",
        "setDesc",
        "contains",
        "",
        "getContains",
        "()I",
        "setContains",
        "(I)V",
        "",
        "permission",
        "prefix",
        "type",
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
.field private contains:I

.field private desc:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field public permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    const v0, 0x7d7fd385

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d1ffa8f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 6319
    iput v1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->contains:I

    :try_start_0
    const-string v2, "key"

    .line 6469
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->key:Ljava/lang/String;

    const-string v2, "name"

    .line 6479
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->name:Ljava/lang/String;

    const-string v2, "desc"

    .line 6489
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->desc:Ljava/lang/String;

    .line 6499
    iput v1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->contains:I

    const-string v1, "permissions"

    .line 6509
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 6519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->setPermissions(Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 6539
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "PermissionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6549
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6559
    invoke-virtual {p0}, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6599
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final contains(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const v0, 0x3365fd23

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6339
    iget v0, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->contains:I

    const/4 v1, 0x1

    if-ne v0, p3, :cond_0

    return v1

    .line 6369
    :cond_0
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x225b25d6    # 2.9700065E-18f

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x5d179617

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x336c8873

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6379
    invoke-virtual {p0}, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->contains:I

    :goto_0
    iput p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->contains:I

    if-ne p1, p3, :cond_2

    if-eqz p2, :cond_2

    .line 6399
    new-instance p1, Ljava/lang/StringBuilder;

    const v0, 0x5d1e046f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->name:Ljava/lang/String;

    .line 6419
    :cond_2
    iget p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->contains:I

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getContains()I
    .locals 1

    .line 6319
    iget v0, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->contains:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 6309
    iget-object v0, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->desc:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 6279
    iget-object v0, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->key:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 6299
    iget-object v0, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6289
    iget-object v0, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->permissions:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, -0x2245723c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setContains(I)V
    .locals 0

    .line 6319
    iput p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->contains:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0

    .line 6309
    iput-object p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->desc:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0

    .line 6279
    iput-object p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->key:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 6299
    iput-object p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->name:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setPermissions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6289
    iput-object p1, p0, Lcom/kakaogame/ui/PermissionManager$PermissionDesc;->permissions:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
