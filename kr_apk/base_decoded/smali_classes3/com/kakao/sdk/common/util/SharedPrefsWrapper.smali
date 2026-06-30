.class public final Lcom/kakao/sdk/common/util/SharedPrefsWrapper;
.super Ljava/lang/Object;
.source "SharedPrefsWrapper.kt"

# interfaces
.implements Lcom/kakao/sdk/common/util/PersistentKVStore;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\u0001H\u0016J\u0008\u0010\n\u001a\u00020\u0001H\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u0011\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000cH\u0016J\u0018\u0010\u0013\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/SharedPrefsWrapper;",
        "Lcom/kakao/sdk/common/util/PersistentKVStore;",
        "appCache",
        "Landroid/content/SharedPreferences;",
        "(Landroid/content/SharedPreferences;)V",
        "getAppCache",
        "()Landroid/content/SharedPreferences;",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "apply",
        "commit",
        "getLong",
        "",
        "key",
        "",
        "fallbackValue",
        "getString",
        "putLong",
        "value",
        "putString",
        "remove",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appCache:Landroid/content/SharedPreferences;

.field private final editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "appCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->appCache:Landroid/content/SharedPreferences;

    .line 319
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "appCache.edit()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->editor:Landroid/content/SharedPreferences$Editor;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public apply()Lcom/kakao/sdk/common/util/PersistentKVStore;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 569
    move-object v0, p0

    check-cast v0, Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public commit()Lcom/kakao/sdk/common/util/PersistentKVStore;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 519
    move-object v0, p0

    check-cast v0, Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppCache()Landroid/content/SharedPreferences;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->appCache:Landroid/content/SharedPreferences;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->appCache:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .array-data 1
    .end array-data
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->appCache:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public putLong(Ljava/lang/String;J)Lcom/kakao/sdk/common/util/PersistentKVStore;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 469
    move-object p1, p0

    check-cast p1, Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 419
    move-object p1, p0

    check-cast p1, Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SharedPrefsWrapper;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    move-object p1, p0

    check-cast p1, Lcom/kakao/sdk/common/util/PersistentKVStore;

    return-object p1

    .array-data 1
    .end array-data
.end method
