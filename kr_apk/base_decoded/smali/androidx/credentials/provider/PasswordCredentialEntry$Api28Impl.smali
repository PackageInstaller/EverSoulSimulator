.class final Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;
.super Ljava/lang/Object;
.source "PasswordCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PasswordCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api28Impl"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPasswordCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,622:1\n1855#2,2:623\n*S KotlinDebug\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api28Impl\n*L\n364#1:623,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0007J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;",
        "",
        "()V",
        "fromSlice",
        "Landroidx/credentials/provider/PasswordCredentialEntry;",
        "slice",
        "Landroid/app/slice/Slice;",
        "isDefaultIcon",
        "",
        "entry",
        "toSlice",
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
.field public static final INSTANCE:Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;

    invoke-direct {v0}, Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;-><init>()V

    sput-object v0, Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;->INSTANCE:Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PasswordCredentialEntry;
    .locals 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "slice"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    const-string v1, "slice.items"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 623
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v10, v2

    move v12, v10

    move v15, v12

    move/from16 v17, v15

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceItem;

    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

    .line 365
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 366
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

    .line 367
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 368
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

    .line 369
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 370
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    :cond_3
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

    .line 371
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 372
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    goto :goto_0

    :cond_4
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

    .line 373
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 374
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v7

    goto :goto_0

    :cond_5
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

    .line 375
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 376
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    .line 377
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 378
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    goto :goto_0

    :cond_7
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

    .line 379
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    const-string v1, "true"

    const/16 v16, 0x1

    if-eqz v11, :cond_8

    .line 380
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 381
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v10, v16

    goto/16 :goto_0

    :cond_8
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

    .line 384
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_9
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AFFILIATED_DOMAIN"

    .line 386
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 387
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    goto/16 :goto_0

    :cond_a
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEDUPLICATION_ID"

    .line 388
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 389
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    goto/16 :goto_0

    :cond_b
    const-string v11, "androidx.credentials.provider.credentialEntry.SLICE_HINT_IS_DEFAULT_ICON_PREFERRED"

    .line 390
    invoke-virtual {v3, v11}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 391
    invoke-virtual {v3}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 392
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v12, v16

    goto/16 :goto_0

    :cond_c
    const-string v1, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

    .line 395
    invoke-virtual {v3, v1}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v17, v16

    goto/16 :goto_0

    .line 402
    :cond_d
    :try_start_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 404
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 405
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 407
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 410
    sget-object v0, Landroidx/credentials/provider/BeginGetPasswordOption;->Companion:Landroidx/credentials/provider/BeginGetPasswordOption$Companion;

    .line 411
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 412
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {v0, v1, v2}, Landroidx/credentials/provider/BeginGetPasswordOption$Companion;->createFrom$credentials_release(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/credentials/provider/BeginGetPasswordOption;

    move-result-object v11

    .line 401
    new-instance v0, Landroidx/credentials/provider/PasswordCredentialEntry;

    const/16 v16, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v17}, Landroidx/credentials/provider/PasswordCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/time/Instant;Landroid/graphics/drawable/Icon;ZLandroidx/credentials/provider/BeginGetPasswordOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fromSlice failed with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PasswordCredentialEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public static final isDefaultIcon(Landroidx/credentials/provider/PasswordCredentialEntry;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-static {p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->access$isCreatedFromSlice$p(Landroidx/credentials/provider/PasswordCredentialEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->access$isDefaultIconFromSlice$p(Landroidx/credentials/provider/PasswordCredentialEntry;)Z

    move-result p0

    return p0

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 244
    invoke-virtual {p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p0

    sget v0, Landroidx/credentials/R$drawable;->ic_password:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final toSlice(Landroidx/credentials/provider/PasswordCredentialEntry;)Landroid/app/slice/Slice;
    .locals 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "entry"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getType()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getUsername()Ljava/lang/CharSequence;

    move-result-object v2

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getTypeDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getLastUsedTime()Ljava/time/Instant;

    move-result-object v6

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->isAutoSelectAllowed()Z

    move-result v8

    .line 258
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getBeginGetCredentialOption()Landroidx/credentials/provider/BeginGetCredentialOption;

    move-result-object v9

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getAffiliatedDomain()Ljava/lang/CharSequence;

    move-result-object v10

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->getEntryGroupId()Ljava/lang/CharSequence;

    move-result-object v11

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->isDefaultIconPreferredAsSingleProvider()Z

    move-result v12

    const-string v13, "true"

    const-string v14, "false"

    if-eqz v8, :cond_0

    move-object v8, v13

    goto :goto_0

    :cond_0
    move-object v8, v14

    :goto_0
    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    move-object v13, v14

    .line 273
    :goto_1
    new-instance v12, Landroid/app/slice/Slice$Builder;

    sget-object v14, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v15, Landroid/app/slice/SliceSpec;

    const/4 v1, 0x1

    invoke-direct {v15, v0, v1}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-direct {v12, v14, v15}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    const-string v0, "androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME"

    .line 277
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v14, 0x0

    .line 274
    invoke-virtual {v12, v5, v14, v0}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME"

    .line 279
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v2, v14, v5}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME"

    .line 280
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v3, v14, v2}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 282
    check-cast v8, Ljava/lang/CharSequence;

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED"

    .line 284
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v8, v14, v2}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v9}, Landroidx/credentials/provider/BeginGetCredentialOption;->getId()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID"

    .line 289
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 286
    invoke-virtual {v0, v2, v14, v3}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON"

    .line 291
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v7, v14, v2}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEDUPLICATION_ID"

    .line 295
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 292
    invoke-virtual {v0, v11, v14, v2}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AFFILIATED_DOMAIN"

    .line 300
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v10, v14, v2}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 303
    check-cast v13, Ljava/lang/CharSequence;

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_IS_DEFAULT_ICON_PREFERRED"

    .line 305
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 302
    invoke-virtual {v0, v13, v14, v2}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v0

    .line 308
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->hasDefaultIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID"

    .line 312
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 309
    invoke-virtual {v0, v1, v14, v2}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :catch_0
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/credentials/provider/PasswordCredentialEntry;->isAutoSelectAllowedFromOption()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION"

    .line 321
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 318
    invoke-virtual {v0, v1, v14, v2}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    :cond_3
    if-eqz v6, :cond_4

    .line 326
    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    const-string v3, "androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS"

    .line 328
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 325
    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 333
    :cond_4
    new-instance v1, Landroid/app/slice/Slice$Builder;

    invoke-direct {v1, v0}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/app/slice/Slice$Builder;)V

    const-string v2, "androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT"

    .line 334
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v4, v1, v14}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 338
    invoke-virtual {v0}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v0

    const-string v1, "sliceBuilder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
