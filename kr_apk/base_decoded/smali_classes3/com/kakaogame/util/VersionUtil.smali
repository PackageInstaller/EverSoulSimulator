.class public final Lcom/kakaogame/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u00058FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0003\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/util/VersionUtil;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "oSVersion",
        "getOSVersion$annotations",
        "getOSVersion",
        "()Ljava/lang/String;",
        "oSMajorVersion",
        "getOSMajorVersion",
        "aPIVersion",
        "",
        "getAPIVersion",
        "()I",
        "common-kakaogames_release"
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
.field public static final INSTANCE:Lcom/kakaogame/util/VersionUtil;

.field private static final TAG:Ljava/lang/String; = "VersionUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/util/VersionUtil;

    invoke-direct {v0}, Lcom/kakaogame/util/VersionUtil;-><init>()V

    sput-object v0, Lcom/kakaogame/util/VersionUtil;->INSTANCE:Lcom/kakaogame/util/VersionUtil;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final getOSVersion()Ljava/lang/String;
    .locals 2

    .line 109
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const v1, 0x6d0243b0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getOSVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAPIVersion()I
    .locals 1

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOSMajorVersion()Ljava/lang/String;
    .locals 7

    .line 139
    invoke-static {}, Lcom/kakaogame/util/VersionUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    .line 149
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method
