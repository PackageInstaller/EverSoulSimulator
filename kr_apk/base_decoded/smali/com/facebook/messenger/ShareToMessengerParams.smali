.class public final Lcom/facebook/messenger/ShareToMessengerParams;
.super Ljava/lang/Object;
.source "ShareToMessengerParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/messenger/ShareToMessengerParams$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareToMessengerParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareToMessengerParams.kt\ncom/facebook/messenger/ShareToMessengerParams\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/messenger/ShareToMessengerParams;",
        "",
        "builder",
        "Lcom/facebook/messenger/ShareToMessengerParamsBuilder;",
        "(Lcom/facebook/messenger/ShareToMessengerParamsBuilder;)V",
        "externalUri",
        "Landroid/net/Uri;",
        "getExternalUri",
        "()Landroid/net/Uri;",
        "metaData",
        "",
        "getMetaData",
        "()Ljava/lang/String;",
        "mimeType",
        "getMimeType",
        "uri",
        "getUri",
        "Companion",
        "facebook-messenger_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/messenger/ShareToMessengerParams$Companion;

.field private static final VALID_EXTERNAL_URI_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_URI_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final externalUri:Landroid/net/Uri;

.field private final metaData:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/messenger/ShareToMessengerParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/messenger/ShareToMessengerParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->Companion:Lcom/facebook/messenger/ShareToMessengerParams$Companion;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "image/*"

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "image/jpeg"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "image/png"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "image/gif"

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "image/webp"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "video/*"

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "video/mp4"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "audio/*"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "audio/mpeg"

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_MIME_TYPES:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "content"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "android.resource"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "file"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_URI_SCHEMES:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "http"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "https"

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_EXTERNAL_URI_SCHEMES:Ljava/util/Set;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/facebook/messenger/ShareToMessengerParamsBuilder;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Lcom/facebook/messenger/ShareToMessengerParamsBuilder;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/facebook/messenger/ShareToMessengerParams;->uri:Landroid/net/Uri;

    .line 86
    invoke-virtual {p1}, Lcom/facebook/messenger/ShareToMessengerParamsBuilder;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, p0, Lcom/facebook/messenger/ShareToMessengerParams;->mimeType:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/facebook/messenger/ShareToMessengerParamsBuilder;->getMetaData()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/messenger/ShareToMessengerParams;->metaData:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/facebook/messenger/ShareToMessengerParamsBuilder;->getExternalUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/messenger/ShareToMessengerParams;->externalUri:Landroid/net/Uri;

    .line 90
    sget-object v2, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_URI_SCHEMES:Ljava/util/Set;

    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_MIME_TYPES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 93
    sget-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_EXTERNAL_URI_SCHEMES:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/messenger/ShareToMessengerParams;->getExternalUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported external uri scheme: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "Unsupported mime-type: "

    .line 91
    invoke-virtual {p0}, Lcom/facebook/messenger/ShareToMessengerParams;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/messenger/ShareToMessengerParams;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported URI scheme: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must provide mimeType"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 85
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must provide non-null uri"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getVALID_EXTERNAL_URI_SCHEMES$cp()Ljava/util/Set;
    .locals 1

    .line 15
    sget-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_EXTERNAL_URI_SCHEMES:Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getVALID_MIME_TYPES$cp()Ljava/util/Set;
    .locals 1

    .line 15
    sget-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_MIME_TYPES:Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getVALID_URI_SCHEMES$cp()Ljava/util/Set;
    .locals 1

    .line 15
    sget-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->VALID_URI_SCHEMES:Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final newBuilder(Landroid/net/Uri;Ljava/lang/String;)Lcom/facebook/messenger/ShareToMessengerParamsBuilder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/messenger/ShareToMessengerParams;->Companion:Lcom/facebook/messenger/ShareToMessengerParams$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/messenger/ShareToMessengerParams$Companion;->newBuilder(Landroid/net/Uri;Ljava/lang/String;)Lcom/facebook/messenger/ShareToMessengerParamsBuilder;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getExternalUri()Landroid/net/Uri;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/facebook/messenger/ShareToMessengerParams;->externalUri:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMetaData()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/facebook/messenger/ShareToMessengerParams;->metaData:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/facebook/messenger/ShareToMessengerParams;->mimeType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/facebook/messenger/ShareToMessengerParams;->uri:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
