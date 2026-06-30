.class public final Lcom/kakao/sdk/friend/core/f/b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/kakao/sdk/friend/core/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/f/b;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/f/b;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/f/b;->a:Lcom/kakao/sdk/friend/core/f/b;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 19
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lokhttp3/Cache;

    .line 29
    sget-object v2, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    const/4 v3, 0x0

    const-string v4, "diskCache"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    sget-object v5, Lcom/kakao/sdk/friend/core/f/h;->d:Ljava/io/File;

    if-eqz v5, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    :goto_1
    invoke-static {v3}, Lcom/kakao/sdk/friend/core/f/i;->a(Ljava/io/File;)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
