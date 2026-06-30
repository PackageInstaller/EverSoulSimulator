.class public interface abstract Lcom/kakao/sdk/common/util/PersistentKVStore;
.super Ljava/lang/Object;
.source "PersistentKVStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/util/PersistentKVStore$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0000H&J\u0008\u0010\u0003\u001a\u00020\u0000H&J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H&J\u001e\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H&J\u0018\u0010\n\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005H&J\u0018\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H&J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/PersistentKVStore;",
        "",
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


# virtual methods
.method public abstract apply()Lcom/kakao/sdk/common/util/PersistentKVStore;
.end method

.method public abstract commit()Lcom/kakao/sdk/common/util/PersistentKVStore;
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putLong(Ljava/lang/String;J)Lcom/kakao/sdk/common/util/PersistentKVStore;
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;
.end method

.method public abstract remove(Ljava/lang/String;)Lcom/kakao/sdk/common/util/PersistentKVStore;
.end method
