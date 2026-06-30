.class public final Lcom/kakao/sdk/share/ShareClient;
.super Ljava/lang/Object;
.source "ShareClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/share/ShareClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareClient.kt\ncom/kakao/sdk/share/ShareClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 KakaoJson.kt\ncom/kakao/sdk/common/util/KakaoJson\n+ 4 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 7 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n*L\n1#1,225:1\n1#2:226\n56#3:227\n53#3:232\n46#3:236\n56#3:238\n53#3:243\n28#4,3:228\n31#4:235\n28#4,3:239\n31#4:246\n1855#5:231\n1856#5:234\n1855#5:242\n1856#5:245\n211#6:233\n211#6:244\n113#7:237\n*S KotlinDebug\n*F\n+ 1 ShareClient.kt\ncom/kakao/sdk/share/ShareClient\n*L\n65#1:227\n65#1:232\n102#1:236\n146#1:238\n146#1:243\n65#1:228,3\n65#1:235\n146#1:239,3\n146#1:246\n65#1:231\n65#1:234\n146#1:242\n146#1:245\n65#1:233\n146#1:244\n102#1:237\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 +2\u00020\u0001:\u0001+B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJV\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\n2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0014\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u000e0\u0013H\u0007J\u0084\u0001\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001e2\u0016\u0008\u0002\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001e2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010 \u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(!\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u000e0\u0013H\u0007Jl\u0010\"\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020$2\u0016\u0008\u0002\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001e2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010 \u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(!\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u000e0\u0013H\u0007J\u0095\u0001\u0010%\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u00102\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001e2\u0016\u0008\u0002\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u001e2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010 \u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(!\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u000e0\u0013H\u0007\u00a2\u0006\u0002\u0010\'JV\u0010(\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020*2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\n2:\u0010\u0012\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0014\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u000e0\u0013H\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/kakao/sdk/share/ShareClient;",
        "",
        "shareApi",
        "Lcom/kakao/sdk/share/ShareApi;",
        "kakaotalkShareIntentClient",
        "Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;",
        "(Lcom/kakao/sdk/share/ShareApi;Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;)V",
        "getKakaotalkShareIntentClient",
        "()Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;",
        "isKakaoTalkSharingAvailable",
        "",
        "context",
        "Landroid/content/Context;",
        "scrapImage",
        "",
        "imageUrl",
        "",
        "secureResource",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/kakao/sdk/share/model/ImageUploadResult;",
        "Lkotlin/ParameterName;",
        "name",
        "imageUploadResult",
        "",
        "error",
        "shareCustom",
        "templateId",
        "",
        "templateArgs",
        "",
        "serverCallbackArgs",
        "Lcom/kakao/sdk/share/model/SharingResult;",
        "sharingResult",
        "shareDefault",
        "defaultTemplate",
        "Lcom/kakao/sdk/template/model/DefaultTemplate;",
        "shareScrap",
        "url",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V",
        "uploadImage",
        "image",
        "Ljava/io/File;",
        "Companion",
        "share_release"
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
.field public static final Companion:Lcom/kakao/sdk/share/ShareClient$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/share/ShareClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final kakaotalkShareIntentClient:Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;

.field private final shareApi:Lcom/kakao/sdk/share/ShareApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/share/ShareClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/share/ShareClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/share/ShareClient;->Companion:Lcom/kakao/sdk/share/ShareClient$Companion;

    .line 2229
    sget-object v0, Lcom/kakao/sdk/share/ShareClient$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/share/ShareClient$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/share/ShareClient;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/kakao/sdk/share/ShareClient;-><init>(Lcom/kakao/sdk/share/ShareApi;Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/share/ShareApi;Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;)V
    .locals 1

    const-string v0, "shareApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kakaotalkShareIntentClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/kakao/sdk/share/ShareClient;->shareApi:Lcom/kakao/sdk/share/ShareApi;

    .line 379
    iput-object p2, p0, Lcom/kakao/sdk/share/ShareClient;->kakaotalkShareIntentClient:Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/share/ShareApi;Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 359
    sget-object p1, Lcom/kakao/sdk/network/ApiFactory;->INSTANCE:Lcom/kakao/sdk/network/ApiFactory;

    invoke-virtual {p1}, Lcom/kakao/sdk/network/ApiFactory;->getKapi()Lretrofit2/Retrofit;

    move-result-object p1

    const-class p4, Lcom/kakao/sdk/share/ShareApi;

    invoke-virtual {p1, p4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "ApiFactory.kapi.create(ShareApi::class.java)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/kakao/sdk/share/ShareApi;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 379
    sget-object p2, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->Companion:Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion;

    invoke-virtual {p2}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient$Companion;->getInstance()Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;

    move-result-object p2

    .line 349
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/share/ShareClient;-><init>(Lcom/kakao/sdk/share/ShareApi;Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 349
    sget-object v0, Lcom/kakao/sdk/share/ShareClient;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakao/sdk/share/ShareClient;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/share/ShareClient;->Companion:Lcom/kakao/sdk/share/ShareClient$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/share/ShareClient$Companion;->getInstance()Lcom/kakao/sdk/share/ShareClient;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic scrapImage$default(Lcom/kakao/sdk/share/ShareClient;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 2049
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/share/ShareClient;->scrapImage(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic shareCustom$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v8, p6

    .line 589
    invoke-virtual/range {v2 .. v8}, Lcom/kakao/sdk/share/ShareClient;->shareCustom(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic shareDefault$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Lcom/kakao/sdk/template/model/DefaultTemplate;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 969
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kakao/sdk/share/ShareClient;->shareDefault(Landroid/content/Context;Lcom/kakao/sdk/template/model/DefaultTemplate;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic shareScrap$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p6

    .line 1359
    invoke-virtual/range {v2 .. v8}, Lcom/kakao/sdk/share/ShareClient;->shareScrap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic uploadImage$default(Lcom/kakao/sdk/share/ShareClient;Ljava/io/File;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 1779
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakao/sdk/share/ShareClient;->uploadImage(Ljava/io/File;ZLkotlin/jvm/functions/Function2;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getKakaotalkShareIntentClient()Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/kakao/sdk/share/ShareClient;->kakaotalkShareIntentClient:Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isKakaoTalkSharingAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/kakao/sdk/share/ShareClient;->kakaotalkShareIntentClient:Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;

    invoke-virtual {v0, p1}, Lcom/kakao/sdk/share/KakaoTalkShareIntentClient;->isKakaoTalkSharingAvailable(Landroid/content/Context;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final scrapImage(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/ImageUploadResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/share/ShareClient;->scrapImage$default(Lcom/kakao/sdk/share/ShareClient;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final scrapImage(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/ImageUploadResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, Lcom/kakao/sdk/share/ShareClient;->shareApi:Lcom/kakao/sdk/share/ShareApi;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/kakao/sdk/share/ShareApi;->scrapImage(Ljava/lang/String;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p1

    .line 2109
    new-instance p2, Lcom/kakao/sdk/share/ShareClient$scrapImage$1;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/share/ShareClient$scrapImage$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final shareCustom(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/kakao/sdk/share/ShareClient;->shareApi:Lcom/kakao/sdk/share/ShareApi;

    if-eqz p4, :cond_1

    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2299
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 2279
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    .line 2319
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 2329
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 2339
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, v2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    .line 2279
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 2359
    :cond_0
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 659
    :goto_1
    invoke-interface {v0, p2, p3, p4}, Lcom/kakao/sdk/share/ShareApi;->validateCustom(JLkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p2

    .line 669
    new-instance p3, Lcom/kakao/sdk/share/ShareClient$shareCustom$2;

    invoke-direct {p3, p6, p0, p1, p5}, Lcom/kakao/sdk/share/ShareClient$shareCustom$2;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Ljava/util/Map;)V

    check-cast p3, Lretrofit2/Callback;

    invoke-interface {p2, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final shareCustom(Landroid/content/Context;JLjava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/share/ShareClient;->shareCustom$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final shareCustom(Landroid/content/Context;JLkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/share/ShareClient;->shareCustom$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final shareDefault(Landroid/content/Context;Lcom/kakao/sdk/template/model/DefaultTemplate;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/template/model/DefaultTemplate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTemplate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/kakao/sdk/share/ShareClient;->shareApi:Lcom/kakao/sdk/share/ShareApi;

    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2369
    invoke-virtual {v1}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 2379
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v2, Lcom/kakao/sdk/template/model/DefaultTemplate;->Companion:Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;

    invoke-virtual {v2}, Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v1, v2, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1029
    invoke-interface {v0, p2}, Lcom/kakao/sdk/share/ShareApi;->validateDefault(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    .line 1039
    new-instance v0, Lcom/kakao/sdk/share/ShareClient$shareDefault$1;

    invoke-direct {v0, p4, p0, p1, p3}, Lcom/kakao/sdk/share/ShareClient$shareDefault$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Ljava/util/Map;)V

    check-cast v0, Lretrofit2/Callback;

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final shareDefault(Landroid/content/Context;Lcom/kakao/sdk/template/model/DefaultTemplate;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kakao/sdk/template/model/DefaultTemplate;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTemplate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/kakao/sdk/share/ShareClient;->shareDefault$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Lcom/kakao/sdk/template/model/DefaultTemplate;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final shareScrap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/kakao/sdk/share/ShareClient;->shareApi:Lcom/kakao/sdk/share/ShareApi;

    if-eqz p4, :cond_1

    .line 1469
    sget-object v1, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    .line 2409
    new-instance v1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 2389
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, Ljava/lang/Iterable;

    .line 2429
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2389
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/kakao/sdk/common/util/KakaoJson;->INSTANCE:Lcom/kakao/sdk/common/util/KakaoJson;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 2439
    invoke-virtual {v4}, Lcom/kakao/sdk/common/util/KakaoJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    .line 2449
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v4, v5, v2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v2

    .line 2389
    invoke-virtual {v1, v3, v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->put(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 2469
    :cond_0
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 1439
    :goto_1
    invoke-interface {v0, p2, p3, p4}, Lcom/kakao/sdk/share/ShareApi;->validateScrap(Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/json/JsonObject;)Lretrofit2/Call;

    move-result-object p2

    .line 1489
    new-instance p3, Lcom/kakao/sdk/share/ShareClient$shareScrap$2;

    invoke-direct {p3, p6, p0, p1, p5}, Lcom/kakao/sdk/share/ShareClient$shareScrap$2;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Ljava/util/Map;)V

    check-cast p3, Lretrofit2/Callback;

    invoke-interface {p2, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final shareScrap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/share/ShareClient;->shareScrap$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final shareScrap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/share/ShareClient;->shareScrap$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final shareScrap(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/SharingResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Lcom/kakao/sdk/share/ShareClient;->shareScrap$default(Lcom/kakao/sdk/share/ShareClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final uploadImage(Ljava/io/File;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/ImageUploadResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/kakao/sdk/share/ShareClient;->uploadImage$default(Lcom/kakao/sdk/share/ShareClient;Ljava/io/File;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final uploadImage(Ljava/io/File;ZLkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/kakao/sdk/share/model/ImageUploadResult;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/kakao/sdk/share/ShareClient;->shareApi:Lcom/kakao/sdk/share/ShareApi;

    .line 1839
    sget-object v1, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    .line 1859
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1869
    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v5, "image/*"

    invoke-virtual {v4, v5}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string v3, "file"

    .line 1839
    invoke-virtual {v1, v3, v2, p1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    .line 1889
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1829
    invoke-interface {v0, p1, p2}, Lcom/kakao/sdk/share/ShareApi;->uploadImage(Lokhttp3/MultipartBody$Part;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object p1

    .line 1909
    new-instance p2, Lcom/kakao/sdk/share/ShareClient$uploadImage$1;

    invoke-direct {p2, p3}, Lcom/kakao/sdk/share/ShareClient$uploadImage$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lretrofit2/Callback;

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
