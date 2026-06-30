.class final Landroidx/credentials/provider/CreateEntry$Api28Impl;
.super Ljava/lang/Object;
.source "CreateEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CreateEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api28Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,494:1\n1855#2,2:495\n1855#2,2:497\n215#3,2:499\n*S KotlinDebug\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n*L\n337#1:495,2\n382#1:497,2\n398#1:499,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0001\u00a2\u0006\u0002\u0008\tJ%\u0010\n\u001a\u0004\u0018\u00010\u00082\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0001\u00a2\u0006\u0002\u0008\u000cJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000eH\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/credentials/provider/CreateEntry$Api28Impl;",
        "",
        "()V",
        "convertBundleToCredentialCountInfo",
        "",
        "",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "convertBundleToCredentialCountInfo$credentials_release",
        "convertCredentialCountInfoToBundle",
        "credentialCountInformationMap",
        "convertCredentialCountInfoToBundle$credentials_release",
        "fromSlice",
        "Landroidx/credentials/provider/CreateEntry;",
        "slice",
        "Landroid/app/slice/Slice;",
        "toSlice",
        "createEntry",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/CreateEntry$Api28Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/credentials/provider/CreateEntry$Api28Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/CreateEntry$Api28Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/CreateEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/CreateEntry$Api28Impl;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final convertBundleToCredentialCountInfo$credentials_release(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    .line 380
    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 382
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "bundle.keySet()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 497
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 384
    :try_start_0
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Issue unpacking credential count info bundle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CreateEntry"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    :cond_1
    check-cast v0, Ljava/util/Map;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final convertCredentialCountInfoToBundle$credentials_release(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "credentialCountInformationMap"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 400
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CreateEntry;
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "slice"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 337
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    const-string v1, "slice.items"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 495
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v9, v0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move v10, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceItem;

    const-string v2, "androidx.credentials.provider.createEntry.SLICE_HINT_USER_PROVIDER_ACCOUNT_NAME"

    .line 338
    invoke-virtual {v0, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v2, "androidx.credentials.provider.createEntry.SLICE_HINT_PROFILE_ICON"

    .line 340
    invoke-virtual {v0, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string v2, "androidx.credentials.provider.createEntry.SLICE_HINT_PENDING_INTENT"

    .line 342
    invoke-virtual {v0, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v2, "androidx.credentials.provider.createEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION"

    .line 344
    invoke-virtual {v0, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/credentials/provider/CreateEntry$Api28Impl;->convertBundleToCredentialCountInfo$credentials_release(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Int?>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_4
    const-string v2, "androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    .line 347
    invoke-virtual {v0, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 348
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    goto :goto_0

    :cond_5
    const-string v3, "androidx.credentials.provider.createEntry.SLICE_HINT_NOTE"

    .line 349
    invoke-virtual {v0, v3}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 350
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0

    .line 351
    :cond_6
    invoke-virtual {v0, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 352
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    goto :goto_0

    :cond_7
    const-string v2, "androidx.credentials.provider.createEntry.SLICE_HINT_AUTO_SELECT_ALLOWED"

    .line 353
    invoke-virtual {v0, v2}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "true"

    .line 355
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v10, v0

    goto/16 :goto_0

    .line 361
    :cond_8
    :try_start_0
    new-instance p0, Landroidx/credentials/provider/CreateEntry;

    .line 362
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 363
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p0

    .line 361
    invoke-direct/range {v3 .. v10}, Landroidx/credentials/provider/CreateEntry;-><init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/time/Instant;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fromSlice failed with: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CreateEntry"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static final toSlice(Landroidx/credentials/provider/CreateEntry;)Landroid/app/slice/Slice;
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "createEntry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getAccountName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 274
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 275
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getLastUsedTime()Ljava/time/Instant;

    move-result-object v3

    .line 276
    invoke-static {p0}, Landroidx/credentials/provider/CreateEntry;->access$getCredentialCountInformationMap$p(Landroidx/credentials/provider/CreateEntry;)Ljava/util/Map;

    move-result-object v4

    .line 277
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 278
    new-instance v6, Landroid/app/slice/Slice$Builder;

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v8, Landroid/app/slice/SliceSpec;

    const-string v9, "CreateEntry"

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v7, v8}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 281
    invoke-virtual {p0}, Landroidx/credentials/provider/CreateEntry;->isAutoSelectAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v7, "androidx.credentials.provider.createEntry.SLICE_HINT_USER_PROVIDER_ACCOUNT_NAME"

    .line 287
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    if-eqz v3, :cond_1

    .line 290
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    const-string v0, "androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    .line 292
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 289
    invoke-virtual {v6, v9, v10, v8, v0}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "androidx.credentials.provider.createEntry.SLICE_HINT_NOTE"

    .line 296
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v2, v8, v0}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "androidx.credentials.provider.createEntry.SLICE_HINT_PROFILE_ICON"

    .line 299
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v1, v8, v0}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 302
    :cond_3
    invoke-static {v4}, Landroidx/credentials/provider/CreateEntry$Api28Impl;->convertCredentialCountInfoToBundle$credentials_release(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 305
    invoke-static {v4}, Landroidx/credentials/provider/CreateEntry$Api28Impl;->convertCredentialCountInfoToBundle$credentials_release(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.credentials.provider.createEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION"

    .line 307
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 304
    invoke-virtual {v6, v0, v8, v1}, Landroid/app/slice/Slice$Builder;->addBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 313
    :cond_4
    new-instance v0, Landroid/app/slice/Slice$Builder;

    invoke-direct {v0, v6}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    const-string v1, "androidx.credentials.provider.createEntry.SLICE_HINT_PENDING_INTENT"

    .line 314
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v0

    .line 311
    invoke-virtual {v6, v5, v0, v8}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 319
    check-cast p0, Ljava/lang/CharSequence;

    const-string v1, "androidx.credentials.provider.createEntry.SLICE_HINT_AUTO_SELECT_ALLOWED"

    .line 321
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 318
    invoke-virtual {v0, p0, v8, v1}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 323
    invoke-virtual {v6}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object p0

    const-string v0, "sliceBuilder.build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
